include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>
use<mirror_holder.common.scad>

difference()
{
	main();
	
	cylinder_hole();
	cylinder_bolt_holes();
	
	back(hdr_cyl_d/2+hdr_cvr_sp)
	mirror_rod_holes();
	
	holder_bolt_holes();
}

module main()
{
	up(hdr_cyl_d/2)
	xcyl(d=hdr_cyl_d,h=hdr_w+hdr_cyl_h,
		center=false,$fn=hdr_cyl_fn);
	
	y=hdr_cyl_d/2+hdr_cvr_sp+hdr_l;
	cuboid([hdr_w,y,hdr_h/2], 
		align=V_UP+V_BACK+V_RIGHT);

	cuboid([hdr_w,hdr_cyl_d/2,hdr_h], 
		align=V_UP+V_BACK+V_RIGHT);
}

module cylinder_hole()
{
	d=inr_d1+2*hdr_cyl_sp;
	
	up(hdr_cyl_d/2)
	right(hdr_w+hdr_cyl_h-inr_h1)
	xcyl(d=d,h=inr_h1+1,
		center=false,$fn=inr_fn);
}

module make_cylinder_bolt_hole(d,h,fn)
{
	left(1)
	up(hdr_cyl_d/2)
	union()
	{
		xcyl(d=d,h=h+1,center=false,$fn=fn);
		
		fwd(inr_bt_off)
		xcyl(d=d,h=h+1,center=false,$fn=fn);
		
		cuboid([h+1,inr_bt_off,d],
			align=V_RIGHT+V_FWD);
	}
}

module cylinder_bolt_holes()
{
	make_cylinder_bolt_hole(bt4_d,
		hdr_w+hdr_cyl_h+1,bt4_fn);
	
	make_cylinder_bolt_hole(bt4_hd_d,
		bt4_hd_h,bt4_hd_fn);
}

module holder_bolt_holes()
{
	back(hdr_cyl_d/2+hdr_cvr_sp)
	make_holder_bolt_holes()
	union()
	{
		down(1)
		cylinder(d=bt25_cnhd_d,h=bt25_cnhd_h+1,
			$fn=bt25_cnhd_fn);
		
		up(bt25_cnhd_h-eps)
		cylinder(d1=bt25_cnhd_d,d2=bt25_d,
			h=bt25_cnhd_cnh+eps,$fn=bt25_cnhd_fn);
	}
}

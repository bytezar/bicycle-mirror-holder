include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>
use<mirror_holder.common.scad>

difference()
{
	main();
	
	mirror_rod_holes();
	holder_bolt_holes();
}

module main()
{
	cuboid([hdr_w,hdr_l,hdr_h/2], 
		align=V_UP+V_BACK+V_RIGHT);
}

module holder_bolt_holes()
{
	make_holder_bolt_holes()
	zrot(30)
	union()
	{
		down(1)
		cylinder(d=nt25_d,h=nt25_h+1,$fn=6);
		
		up(nt25_h-eps)
		cylinder(d1=nt25_d,d2=bt25_d,
			h=nt25_cn_h+eps,$fn=6);
	}
}

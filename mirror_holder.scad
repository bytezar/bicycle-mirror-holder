include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>

difference()
{
	main();
	inner_tube_hole();
	mirror_rod_holes();
	tube_bolt_hole();
}

// TODO:
// y - dimmension
// inner tube hole - ok
// mirror rod holes - ok
// bolt hole m4 (tube)
// bolt holes m2.5 (holder)


// COVER

module main()
{
	up(otr_d/2)
	xcyl(d=otr_d,h=hdr_wth+hdr_cyl_lth,
		center=false,$fn=otr_fn);
	
	y=otr_d/2+hdr_cvr_space+hdr_lth;
	cuboid([hdr_wth,y,hdr_ht/2], 
		align=V_UP+V_BACK+V_RIGHT);

	cuboid([hdr_wth,otr_d/2,hdr_ht], 
		align=V_UP+V_BACK+V_RIGHT);
}

module inner_tube_hole()
{
	d=inr_d+2*hdr_inr_space;
	
	up(otr_d/2)
	right(hdr_wth+hdr_cyl_lth-hdr_inr_wth)
	xcyl(d=d,h=hdr_inr_wth+1,
		center=false,$fn=inr_fn);
}

module mirror_rod_holes()
{
	back(otr_d/2+hdr_cvr_space+mr_bl_y_off)
	up(hdr_ht/2)
	right(hdr_wth/2)
	union()
	{
		sphere(d=mr_bl_d,$fn=mr_bl_fn);
		
		ycyl(d=mr_rod_d,h=hdr_lth,
			center=false,$fn=mr_rod_fn);
	}
}

module tube_bolt_hole()
{
	h=hdr_wth+hdr_cyl_lth+2;
	left(1)
	up(otr_d/2)
	union()
	{
		xcyl(d=bt4_d,h=h,center=false,$fn=bt4_fn);
		
		fwd(inr_bolt_off)
		xcyl(d=bt4_d,h=h,center=false,$fn=bt4_fn);
		
		cuboid([h,inr_bolt_off,bt4_d],
			align=V_RIGHT+V_FWD);
	}
}

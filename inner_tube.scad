include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>

difference()
{
	main_tube();
	bolt_holes();
}

module main_tube()
{
	difference()
	{
		cylinder(d=inr_d,h=inr_h,$fn=inr_fn);
		
		up(inr_h+inr_cut_off)
		fwd(inr_d/2-2)
		xrot(inr_ang)
		cuboid([inr_d+2,inr_d,2*inr_h],align=V_DOWN+V_BACK);
	}
}

module bolt_holes()
{
	h=inr_h+2;
	down(1)
	{
		cylinder(d=bt4_d,h=h,$fn=bt4_fn);
		
		back(inr_bolt_off)
		cylinder(d=bt4_d,h=h,$fn=bt4_fn);
		
		cuboid([bt4_d,inr_bolt_off,h],align=V_UP+V_BACK);
	}
}

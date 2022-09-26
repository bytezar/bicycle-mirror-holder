include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>

difference()
{
	main_tube();
	
	bolt_hole();
	nut_hole();
}

module main_tube()
{
	difference()
	{
		cylinder(d=inr_d2,h=inr_cn_h,$fn=inr_fn);
		
		fwd(inr_d2/2-inr_cut_off)
		up(inr_cn_h)
		xrot(inr_ang)
		cuboid([inr_d2+2,inr_d2,2*inr_cn_h],
			align=V_DOWN+V_BACK);
	}
}

module bolt_hole()
{
	down(1)
	cylinder(d=bt4_d,h=inr_cn_h+2,$fn=bt4_fn);
}

module nut_hole()
{
	down(eps)
	cylinder(d=nt4_d,h=nt4_h+eps,$fn=6);
	
	up(nt4_h-eps)
	cylinder(d1=nt4_d,d2=bt4_d,
		h=nt4_cn_h+2*eps,$fn=6);
}

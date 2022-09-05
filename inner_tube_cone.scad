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
		cylinder(d=inr_d,h=inr_cn_h,$fn=inr_fn);
		
		up(inr_cn_h+inr_cut_off)
		fwd(inr_d/2-2)
		xrot(inr_ang)
		cuboid([inr_d+2,inr_d,2*inr_cn_h],
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
	h1=bt4_nt_h+2*eps;
	h2=bt4_nt_h+2*eps;
		
	down(eps)
	cylinder(d=bt4_nt_d,h=bt4_nt_h+eps,$fn=6);
	
	up(bt4_nt_h-eps)
	cylinder(d1=bt4_nt_d,d2=bt4_d,
		h=bt4_nt_cn_h+2*eps,$fn=6);
}

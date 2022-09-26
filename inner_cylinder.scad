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
	h=inr_h1+inr_h2+inr_h3;
	
	difference()
	{
		union()
		{
			cylinder(d=inr_d1,h=inr_h1,$fn=inr_fn);
			
			up(inr_h1)
			cylinder(d1=inr_d1,d2=inr_d2,
				h=inr_h2,$fn=inr_fn);
			
			up(inr_h1+inr_h2)
			cylinder(d=inr_d2,h=inr_h3,$fn=inr_fn);
		}
		
		fwd(inr_d2/2-inr_cut_off)
		up(h)
		xrot(inr_ang)
		cuboid([inr_d2+2,inr_d2,2*h],
			align=V_DOWN+V_BACK);
	}
}

module bolt_holes()
{
	h=inr_h1+inr_h2+inr_h3+2;
	
	down(1)
	{
		cylinder(d=bt4_d,h=h,$fn=bt4_fn);
		
		back(inr_bt_off)
		cylinder(d=bt4_d,h=h,$fn=bt4_fn);
		
		cuboid([bt4_d,inr_bt_off,h],align=V_UP+V_BACK);
	}
}

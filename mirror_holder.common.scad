include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<vars.scad>

module mirror_rod_holes()
{
	back(mr_bl_off)
	up(hdr_h/2)
	right(hdr_w/2)
	union()
	{
		sphere(d=mr_bl_d,$fn=mr_bl_fn);
		
		ycyl(d=mr_rod_d,h=hdr_l,
			center=false,$fn=mr_rod_fn);
	}
}

module make_holder_bolt_holes()
{
	x1=hdr_bt_xoff;
	x2=hdr_w-hdr_bt_xoff;
	
	y1=hdr_bt_yoff_1;
	y2=hdr_l-hdr_bt_yoff_2;
	
	for(x=[x1,x2])
	for(y=[y1,y2])
	{
		move([x,y,0])
		{
			children();
			
			down(1)
			cylinder(d=bt25_d,h=hdr_h/2+2,$fn=bt25_fn);
		}
	}
}

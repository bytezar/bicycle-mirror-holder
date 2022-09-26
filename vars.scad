eps=0.001; //epsilon
dev_factor=1; // used during developong, should be power of 2;

// Bolts and nuts M2.5

bt25_d=3; //bolt M2.5 hole diameter
bt25_fn=32/dev_factor; //bolt M2.5 hole accuracy

bt25_cnhd_d = 5.0; // bolt M2.5 cone head hole diameter
bt25_cnhd_h = 1.0; // bolt M2.5 cone head cylinder hole height
bt25_cnhd_cnh = 1.6; // bolt M2.5 cone head cone hole height
bt25_cnhd_fn=64/dev_factor; // bolt M2.5 cone head cone hole accuracy

nt25_d=6.2; //nut M2.5 hole diameter
nt25_h=2.2; //nut M2.5 hole height
nt25_cn_h=1.0; //nut M2.5 hole height

// Bolts and nuts M4

bt4_d=4.4; //bolt M4 hole diameter
bt4_fn=32/dev_factor; //bolt M4 hole accuracy

bt4_hd_d=8; //bolt M4 head hole diameter
bt4_hd_h=4; //bolt M4 head hole height
bt4_hd_fn=64/dev_factor; //bolt M4 head hole accuracy

nt4_d=8.3; //nut M4 hole diameter
nt4_h=4; //nut M4 hole height (hole in inner cone cylinder)
nt4_cn_h=1; //nut M4 cone hole height

// ---------------------------------------
// Inner cylinder and inner cone cylinder:

inr_d2=18; // inner cylinder bigger diameter
inr_ang=37.5; // inner cylinder angle of cut
inr_cut_off=4; // inner cylinder y-offset of cut
inr_fn=128/dev_factor; // inner cylinder accuracy

// Inner cylinder:

inr_d1=16; // inner cylinder smaller diameter
inr_h1=8; // inner cylinder height
inr_h2=2; // inner cylinder height
inr_h3=20; // inner cylinder height
inr_bt_off=3; // inner cylinder bolt hole offset

// Inner cone cylinder:

inr_cn_h=22; // inner cylinder cone height

// ---------------------------------------
// Mirror dimensions:
mr_bl_d=10; // mirror end ball hole diameter
mr_bl_fn=64/dev_factor; // mirror end ball hole accuracy
mr_bl_off=10; // mirror end ball hole y-offset
mr_rod_d=5.8; // mirror rod hole diameter
mr_rod_fn=64/dev_factor; // mirror rod hole accuracy

// ---------------------------------------
// Holder dimennsions:
hdr_w=18; // holder width
hdr_l=24; // holder length
hdr_h=16; // holder height

hdr_cyl_h=4; // holder cylinder extender height
hdr_cyl_d=21; // holder cylinder extender diameter
hdr_cyl_fn=128/dev_factor; // holder cylinder accuracy
hdr_cyl_sp=0.4; // holder cylinder space between inner and outer

hdr_cvr_sp=0.3; // space between holder and cover

hdr_bt_xoff=4; // holder bolts x-offset
hdr_bt_yoff_1=4.5; // holder bolts y-offset (first)
hdr_bt_yoff_2=6; // holder bolts y-offset (second)

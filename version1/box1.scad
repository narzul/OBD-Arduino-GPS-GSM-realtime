include <MCAD/nuts_and_bolts.scad>
$fn = 60;
module main()
{
//	translate([0,0,0])cube([10,10,5]);
//	translate([3,3,0])nutHole(4);
	difference()
	{
		//translate([0,0,16])cube([85,75,2]);
		cube([85,75,12]);
		translate([5,5,5])arduino();
		translate([55,6,5])GPS();
		translate([53,44,4])GPSat();
		translate([25,1,2])GSM();	translate([-2,50,12.01])rotate([0,180,-90])USB();
		translate([10,42,2])USBCUT();
		translate([22,15,5])wire();
		translate([53,15,5])wire();
		translate([60,35,4])wire2();
		translate([28,35,2])wire22();
		translate([35.5,70,6.5])rotate([90,0,0])CAT();
	translate([-2,-2,0])cube([5,5,4]);
	scale([1,1,2])translate([3,3,2])boltHole(4,length=20);
	translate([-2,74,0])cube([5,5,4]);
	scale([1,1,2])translate([3,72,2])boltHole(4,length=30);
	translate([84,-2,0])cube([5,5,4]);		
	scale([1,1,2])translate([82,3,2])boltHole(4,length=30);
	translate([84,74,0])cube([5,5,4]);		
	scale([1,1,2])translate([82,72,2])boltHole(4,length=30);		
	}
}
module CAT()
{
	cylinder(h=20, d=7, center=true);
}
module wire2()
{
	cube([10,15,10.01]);
}
module wire22()
{
	cube([15,39,10.01]);
}
module wire()
{
	cube([5,15,10.01]);
}
module arduino()
{
	cube([19,36,10.01]);
}
module GPS()
{
	cube([28,36,10.01]);
}
module GPSat()
{
	cube([26,26,8.01]);
}
module GSM()
{
	cube([29,40,10.01]);
}
module USBCUT()
{
	cube([36,30,10.01]);
}
main();

module USB()
{
	#cube([13.1,14.1,6.1]);
	translate([0,6,0])cube([13.1,4.1,7]);
	translate([-2.05,6,0])cube([17.1,2.2,7]);
}

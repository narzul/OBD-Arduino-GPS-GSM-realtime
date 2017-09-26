include <MCAD/nuts_and_bolts.scad>
$fn = 60;

module main()
{
	difference()
	{
		//translate([0,0,16])cube([78,64,2]);
		union(){
		cube([78,64,16]);
	translate([-23.5,20,0])mirror([-1,1,0])obdholder();
		}
		translate([38,7,2])power();
		translate([7,2,2])cube([29,60,23.1]);
		translate([38,40,2])cube([36,19,25.01]);
		translate([32,43,2])cube([10,13,25]);
		translate([42,33,2])cube([25,10,25]);
		translate([10,55,2])cube([20,10,25]);
	#cube([2,2,2]);
	#scale([1,1,2])translate([3,3,1])boltHole(4,length=20);
		scale([1,1,2])translate([75.5,61,1])boltHole(4,length=20);	
		scale([1,1,3])translate([3,61.5,1])boltHole(4,length=20);
		#scale([1,1,3])translate([75.5,3,1])boltHole(4,length=20);		
		translate([40,-5,16.01])mirror([0,0,1])USB();
	}
}
module USB()
{
	cube([13.1,14.1,6.1]);
	translate([0,6,0])cube([13.1,4.1,7]);
	translate([-2.05,6,0])cube([17.1,2.2,7]);
}
module power()
{
	cube([38,29,14.01]);
}

module obdholder()
{
	difference()
	{
		cube([43.5,23.8,2]);
		translate([5,5,-1])cube([33.5,13.8,4]);
		translate([10,-1,-1])cube([23.5,10,4]);
	}
}
module obd()
{
	difference()
	{
		cube([24.5,15,5.8]);
		translate([1,-1,2])cube([22,17,1.8]);
		translate([18,5,-7])rotate([0,0,0])cylinder(10,d=2.50);
	}
}
main();
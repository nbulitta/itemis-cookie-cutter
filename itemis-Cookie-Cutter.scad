// itemis cookie cutter

$fn=200; // increased steps for round circles

module flat_heart(size = 10, center = true) {
    translate([-size/2, -size/2, 0]){
      square(size);

      translate([size / 2, size, 0])
      circle(size / 2);

      translate([size, size / 2, 0])
      circle(size / 2);
    }
}


size = 50;
height = 12;
thickness = 2;

difference(){
    linear_extrude(height) 
        flat_heart(size);

    linear_extrude(height) 
        flat_heart(size-thickness);
};

translate([0,0,height-1])
difference(){
    linear_extrude(1) 
        flat_heart(size+2);

    linear_extrude(height) 
        flat_heart(size+2-thickness);
};


intersection(){
translate([5,5,height-3])
rotate([0,0,-45])
linear_extrude(3)
square([85,29], center=true);
translate([0,0,height-3]){
    linear_extrude(height) 
        flat_heart(size);

    linear_extrude(height) 
        flat_heart(size-thickness);
}
};


translate([5,5,height-10])
rotate([0,0,-45])
translate([-6,0,0])
linear_extrude(10) 
text("i", 
                     size=30,
                     font="Sora:style=Bold",
                     halign="center",
                     valign="center");


translate([5,5,height-10])
rotate([0,0,-45])
mirror([1,0,0])
translate([-6,0,0])
linear_extrude(10)
text("i", 
                     size=30,
                     font="sora:style=Bold",
                     halign="center",
                     valign="center");

translate([5,5,height-10])   
difference(){
linear_extrude(10)
circle(20+5);
linear_extrude(10)
circle(17+5);
    
}

//import("5s_case_3.STL", convexity=10);
union(){
    for(theta = [0, 180]) {
        rotate([0, 0, theta])
        translate([-30, -14, 0])
        union(){
            translate([30, 0, 50]){
                difference(){
                    union(){
                        cube([3, 20, 70]);
                        translate([1.5, 0, 35])
                        difference(){
                            cube([20, 20, 3]);
                            translate([20, 0, -10])
                            rotate([0, 0, 45])
                            cube([50, 50, 50]);
                        }
                    }
                    translate([1.5, 15, 35])
                    rotate([0, 90, 0]){
                        translate([10, 0, 0])
                        hull(){
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                            translate([0, -10, 0])
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                        }
                        translate([25, 0, 0])
                        hull(){
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                            translate([0, -10, 0])
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                        }
                        translate([-10, 0, 0])
                        hull(){
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                            translate([0, -10, 0])
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                        }
                        translate([-25, 0, 0])
                        hull(){
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                            translate([0, -10, 0])
                            cylinder(10, 1.5, 1.5, $fn=17, center=true);
                        }
                        
                    }
                }
                
            }
           
            translate([30, 1, 85]) {
                rotate([90, 180, 0])
                {
                    cylinder(3, 20, 20);
                    translate([0, 0, 14])
                    intersection(){
                        
                        difference(){
                            union(){
                                rotate([0, 0, 45])
                                cube([140, 20, 30], center=true);
                                rotate([0, 0, -45])
                                cube([140, 20, 30], center=true);
                            }
                            translate([0, 0, 15])
                            ///import("handle_hull.stl");
                            cube([10, 140, 30], center=true);
                        }
                        translate([0, -110, 0])
                        difference(){
                            scale(1.2){
                                import("handle_hull.stl");
                            }
                            translate([0, 13, 0])
                            import("handle_hull.stl");
                            
                        }
                    }
                }
            }
        }
    }
}
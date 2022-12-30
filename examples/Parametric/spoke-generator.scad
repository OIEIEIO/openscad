// Define the parameters for the spoke
spoke_radius = 3.0;
spoke_length = 150;
spoke_offset = 230; // creates hole in middle of spoke arrangement
num_spokes = 36;


// Define a function to generate a single spoke
module generate_spoke() {
    // Create a cylinder to represent the spoke
    color("yellow")
    cylinder(r=spoke_radius, h=spoke_length);
}

// Calculate the angle between each spoke
spoke_angle = 360 / num_spokes;

// Generate all of the spokes
for (i = [0:num_spokes-1]) {
    // Calculate the angle of the current spoke
    angle = i * spoke_angle;

    // Rotate the spoke to the correct angle
    rotate([90, 0, angle]) {
        // Translate the spoke to the desired position within the wheel
        translate([0, 0, spoke_offset]) {
            // Generate the spoke
            generate_spoke();
        }
    }
}

// Add a dimension to the rendering
dimension("X", [0, 500]);

// Render the result
render();


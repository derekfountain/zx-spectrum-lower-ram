linear_extrude( 4.2 )   // Measured the depth of a working board's pins
{
  difference()
  {
    green_board_height=23.0;
    
    square( [75, green_board_height] );
    
    _8_pins_height = 21.0;
    translate( [3, 1, 0] )           // 3 in, 1 up
      square( [3.5, _8_pins_height] ); //3mm is width of a row of pins.

    hole_diameter = 3.75;
    translate( [12.75, 15.5, 0] )  //Leftmost pin hole
      square( [hole_diameter, hole_diameter] );
  
    translate( [23.25, 15.5, 0] )  
      square( [hole_diameter, hole_diameter] );

    translate( [33.5, 15.5, 0] ) 
      square( [hole_diameter, hole_diameter] );

    translate( [43.5, 15.5, 0] )  
      square( [hole_diameter, hole_diameter] );

    translate( [54.0, 15.5, 0] )  
      square( [hole_diameter, hole_diameter] );

    translate( [64.0, 15.5, 0] )  
      square( [hole_diameter, hole_diameter] );

    translate( [67.0, 1, 0] )        
      square( [3.5, _8_pins_height] ); 

  }
}
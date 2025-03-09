module top;
  // Import the UVM library
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  // Import the YAPP package
  import yapp_pkg::*;

  // Generate 5 random packets and use the print method to display the results
  initial begin
    yapp_packet packet;
    
    // Generate and print 5 random packets
    repeat(5) begin
      packet = yapp_packet::type_id::create("packet");
      if(!packet.randomize())
        `uvm_error("TOP", "Randomization failed")
      
      // Print using default table format
      packet.print();
      
      // Additional experiments with different print formats, clone, copy, compare
     
      // Different print formats
      packet.print(uvm_default_table_printer);
      packet.print(uvm_default_tree_printer);
      packet.print(uvm_default_line_printer);
      
      // Clone experiment
      yapp_packet packet_clone;
      $cast(packet_clone, packet.clone());
      $display("Original packet:");
      packet.print();
      $display("Cloned packet:");
      packet_clone.print();
      
      // Copy experiment
      yapp_packet packet_copy = yapp_packet::type_id::create("packet_copy");
      packet_copy.copy(packet);
      $display("Copied packet:");
      packet_copy.print();
      
      // Compare experiment
      if(packet.compare(packet_copy))
        $display("Packets are identical");
      else
        $display("Packets are different");
      */
    end
  end
endmodule : top

class base_test extends uvm_test;
  // Register with factory
  `uvm_component_utils(base_test)
  
  // Testbench instance
  router_tb tb;
  
  // Component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("BUILD", "Base test build phase executing", UVM_HIGH)
    
    // Create the testbench
    tb = router_tb::type_id::create("tb", this);
  endfunction
  
  // End of elaboration phase - print topology
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();
  endfunction
endclass

// Second test class for task 2.7
class test2 extends base_test;
  // Register with factory
  `uvm_component_utils(test2)
  
  // Component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // We're inheriting everything else from base_test
endclass

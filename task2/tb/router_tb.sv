class router_tb extends uvm_env;
  // Register with factory
  `uvm_component_utils(router_tb)
  
  // Component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  // Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("BUILD", "Router testbench build phase executing", UVM_HIGH)
  endfunction
endclass

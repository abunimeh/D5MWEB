// INTERFACE : axi_lite_IF [AXI4_LITE]
interface d5m_camera_if(input bit ACLK,pixclk,reset,ARESETN);
    logic [11:0]    idata;
    logic           ifval;
    logic           ilval;
    logic [7:0]     AWADDR;
    logic [ 2:0]    AWPROT;
    logic           AWVALID;
    logic           AWREADY;
    logic [31:0]    WDATA;
    logic [ 3:0]    WSTRB;
    logic           WVALID;
    logic           WREADY;
    logic [1:0]     BRESP;
    logic           BVALID;
    logic           BREADY;
    logic [7:0]     ARADDR;
    logic [ 2:0]    ARPROT;
    logic           ARVALID;
    logic           ARREADY;
    logic [31:0]    RDATA;
    logic [ 1:0]    RRESP;
    logic           RVALID;
    logic           RREADY;
    logic           rgb_m_axis_tready; //input
    logic           rgb_m_axis_tvalid; //output
    logic           rgb_m_axis_tlast;  //output
    logic           rgb_m_axis_tuser;  //output
    logic [15:0]    rgb_m_axis_tdata;  //output
    //rx channel               
    logic           rgb_s_axis_tready;//output
    logic           rgb_s_axis_tvalid;//input
    logic           rgb_s_axis_tlast; //input
    logic           rgb_s_axis_tuser; //input
    logic [15:0]    rgb_s_axis_tdata; //input
    //destination channel                                    
    logic           m_axis_mm2s_tready;//input
    logic           m_axis_mm2s_tvalid;//output
    logic           m_axis_mm2s_tuser; //output
    logic           m_axis_mm2s_tlast; //output
    logic [15:0]    m_axis_mm2s_tdata; //output
    logic [2:0]     m_axis_mm2s_tkeep; //output
    logic [2:0]     m_axis_mm2s_tstrb; //output
    logic [0:0]     m_axis_mm2s_tid;   //output
    logic [0:0]     m_axis_mm2s_tdest; //output
    

    
    modport         ConfigMaster(input pixclk,reset,idata,ifval,ilval,ACLK,ARESETN,AWADDR,AWPROT,AWVALID,WDATA,WSTRB,WVALID,BREADY,ARADDR,ARPROT,ARVALID,RREADY,rgb_m_axis_tready,rgb_s_axis_tvalid,rgb_s_axis_tlast,rgb_s_axis_tuser,rgb_s_axis_tdata,m_axis_mm2s_tready, output  AWREADY,ARREADY,RDATA,RRESP,RVALID,WREADY,BRESP,BVALID,rgb_m_axis_tvalid,rgb_m_axis_tlast,rgb_m_axis_tuser,rgb_m_axis_tdata,rgb_s_axis_tready,m_axis_mm2s_tvalid,m_axis_mm2s_tuser,m_axis_mm2s_tlast,m_axis_mm2s_tdata,m_axis_mm2s_tkeep,m_axis_mm2s_tstrb,m_axis_mm2s_tid,m_axis_mm2s_tdest);
endinterface: d5m_camera_if
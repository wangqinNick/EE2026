// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 31 09:51:27 2018
// Host        : DESKTOP-8KGDMUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_pic_sim_netlist.v
// Design      : rom_pic
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_pic,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "4" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.14097 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_pic.mem" *) 
  (* C_INIT_FILE_NAME = "rom_pic.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6970" *) 
  (* C_READ_DEPTH_B = "6970" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "6970" *) 
  (* C_WRITE_DEPTH_B = "6970" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h08)) 
    ENOUT
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;
  wire [6:6]ena_array;
  wire [17:0]p_15_out;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12:10]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[2].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 (\ramloop[5].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[12:10]),
        .clka(clka),
        .douta(douta[19:2]),
        .p_15_out(p_15_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[1:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[1].ram.r_n_9 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[2].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[10] (\ramloop[2].ram.r_n_8 ),
        .\douta[9] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[1].ram.r_n_9 ),
        .clka(clka),
        .\douta[18] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[19] (\ramloop[4].ram.r_n_8 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[10:0]),
        .\addra[12] (\ramloop[2].ram.r_n_9 ),
        .clka(clka),
        .\douta[18] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[19] (\ramloop[5].ram.r_n_8 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[23:20]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    p_15_out,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 );
  output [17:0]douta;
  input [2:0]addra;
  input clka;
  input [17:0]p_15_out;
  input [7:0]DOADO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]DOPADOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [17:0]douta;
  wire [17:0]p_15_out;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[10]_INST_0 
       (.I0(p_15_out[8]),
        .I1(DOPADOP),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[11]_INST_0 
       (.I0(p_15_out[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [0]),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[12]_INST_0 
       (.I0(p_15_out[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[13]_INST_0 
       (.I0(p_15_out[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[14]_INST_0 
       (.I0(p_15_out[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[15]_INST_0 
       (.I0(p_15_out[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[16]_INST_0 
       (.I0(p_15_out[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[17]_INST_0 
       (.I0(p_15_out[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[18]_INST_0 
       (.I0(p_15_out[16]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 [7]),
        .O(douta[16]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[19]_INST_0 
       (.I0(p_15_out[17]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ),
        .O(douta[17]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[2]_INST_0 
       (.I0(p_15_out[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[3]_INST_0 
       (.I0(p_15_out[1]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[4]_INST_0 
       (.I0(p_15_out[2]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[5]_INST_0 
       (.I0(p_15_out[3]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[6]_INST_0 
       (.I0(p_15_out[4]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[7]_INST_0 
       (.I0(p_15_out[5]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[8]_INST_0 
       (.I0(p_15_out[6]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0CFCACFC0C0CAC0C)) 
    \douta[9]_INST_0 
       (.I0(p_15_out[7]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .O(douta[7]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[9] ,
    \douta[10] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    addra);
  output [7:0]\douta[9] ;
  output [0:0]\douta[10] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [12:0]addra;
  wire clka;
  wire [0:0]\douta[10] ;
  wire [7:0]\douta[9] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[10] (\douta[10] ),
        .\douta[9] (\douta[9] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [17:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [17:0]p_15_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[18] (\douta[18] ),
        .\douta[19] (\douta[19] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[12] ;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[18] (\douta[18] ),
        .\douta[19] (\douta[19] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFF3D3CE7F7FFFFFFFFFFFFEF7CF8F3A92FFFFFFFFFFBFFBEFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFF77ECFFB557F0FFFFFFFFEBDF7F0FFFFFFFFFFFFF3DB377FFF89B),
    .INIT_02(256'hCD779E7FFFFFFFFF2FE1DC5FFFFFFFFFFFFF3FFFBBEEEFCBFFFFFFFFFCFEC5FC),
    .INIT_03(256'hB6482807FFFFFFFFFFFFCFF43E7FDBAFFFFFFFFFDD06125EFFFFFFFFFFFFF3EE),
    .INIT_04(256'hFFFF73A57FF3CF9FFFFFFFFFC5A3C437FFFFFFFFFFFF7DF7CBFEFC3EFFFFFFFF),
    .INIT_05(256'h5FFF1CFFBC0CC44273CEFFFF3FE7EE34BFF5BFEFEDDBED66F321500DF96DFFFF),
    .INIT_06(256'h0DF3FFFFDF8A3EFD56C7CBAEC1FCFFFFDF8E80C2F2D7FFFFFAFDFF8FF4DFBBFC),
    .INIT_07(256'hDFD1BD3CDFC5DD2FD6A0881FFFCFFFFFBFFFB4EB9FF4FFC3CFFFEFFFF03008AB),
    .INIT_08(256'h2010006C9BBDFFFFFE587FC7C6BFE72F6FDC2110D0232D025FF4FFFFEFF4EBFB),
    .INIT_09(256'hFAFC1FFED32FD60CE7FECA3D5013304BFFBFFFFFF35EEFBFC8EF565A74A44AFF),
    .INIT_0A(256'h28B8116550804208BFA7763DBAFB7BD74C0FD4EEDCFCC0CAE807C007FCF7CDF7),
    .INIT_0B(256'hFDFFBDFB771C06FDAD4404485B55E16BDCC98D172BE7FFC39CF93A745828F9C5),
    .INIT_0C(256'hEC442DB052C1CC62800600CFEE3D3847EBCC1F3FB680753B0113A6AF35113E37),
    .INIT_0D(256'h0B3D7FDF7E27B0F0318CFFFFCE6046CF8122C9DA11A83FFDEFF0FBE3BDEFFBBB),
    .INIT_0E(256'hF8CAFEFFEF10174E933EA9D1102DD7DEE7FEC8C67B7B3BCDEFB00D38DBCFC0D0),
    .INIT_0F(256'h00007B547036F2904FAD9EFDFFFFFFFFCFE918640000D96001038D187973E31D),
    .INIT_10(256'h3253EFD3FFFFFFFFB17CC3E40000DD37ABC1E0C473B6FE86FFFFFFFF3CBFCC69),
    .INIT_11(256'hDFF320490000219E0E3C0081837FCF86FFFFFFFFFBFCC6DE000010D34160C440),
    .INIT_12(256'hC0A180A4AFDFEBCFFFFFFFFFFE37E4A7000049D2C82903037C2DDFBFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFDFF3720000374221703633F8D73F8BFFFFFFFFFEB6F8010000D1A6),
    .INIT_14(256'h72A2C11D76D1C77EF7A5FF5FFFFFFFFFD3F7CA686366CF6B421EB23BABF79FFF),
    .INIT_15(256'h77BF3F08FFFFFFFF4FBFD1709DA28B36299043BF7FEAFF6DFFFFFFFFFEF4CF66),
    .INIT_16(256'hBFC4A010E7CA8821084000673BDDF7F7FFFFFFFFFEEDDDC0B363CEBC0AA08B67),
    .INIT_17(256'h781CD83DB8F777DFFFFFFFFFB2343909182F00279B836CF2BF5D73CFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFCDF9F52C81793E308E7FEAD7ECFF303CFFFFFFFF5CED4CA4C5408A85),
    .INIT_19(256'hF08237DFFFFFFFCFF3FDCE37FFFFFFFF45E1296BC288923BFFFFE07EBF7FFCE7),
    .INIT_1A(256'hF8FB6F7FFFFFFFFFFBE3FE0E36D67F2BFFFFBDFF97BC3EBFFFFFFFFF4E26BE19),
    .INIT_1B(256'hC8D5B76F9219A588FFFF9DDF7DFC133BFFFFFFFFE6C9FD21246FFBFFFFFFFFE9),
    .INIT_1C(256'hFFFFFBFFBD95BDB0FFFFFFFFE174D7E3F0F7BEBFFFFFFFFCFD7791EBFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFC03BF61A87FEAAF9FFFFAFCBEF7FCB57FFFFFFFFE6A2F921CFF5FE1F),
    .INIT_1E(256'hDBEFFFFFFFFFFFFF3FE6FF62FFFFFFFFF5036D332FC3FFFFFFFFFFFFEB974B8B),
    .INIT_1F(256'hB3C873DDFFFFFFFF6ECCE5D433E3FFFFFFFFFFFFF1F0BE7FFFFFFFFFF7D05FC6),
    .INIT_20(256'h8F412564FEFFFFFFFFFFFFFFF75F78EBFFFFFFFF67CDA3E6E3FFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFF3FEFFB2CFFFFFFFFA6611066B9EFFFFFFFFFFFFF77FE73FDFFFFFFFF),
    .INIT_22(256'hFFFFFFFF7B31F0811F5CFFFFFFFFFFFFFBE1BE72FFFFFFFF0F2CE4DCC78DFFFF),
    .INIT_23(256'hD4FEFFFFFFFFFFFFFFFFFFFFFFFF1FAFFCE41BF3B3C8FFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFF3C6945EB27100D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91C6F24),
    .INIT_25(256'hFFDE40FFC264FFFFFFFFFFFFFFFFFFFFFFFFFFFFC33548C90DCFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFF8BBFFED81DE9D814FFFFFFFFFFFFFFFFFFFFFFFFFA92),
    .INIT_27(256'hFFFF76DD6A7B734F6937FFFFFFFFFFFFFFFFFFFFFFFFFFCFBD6FD0632439FFFF),
    .INIT_28(256'h58D012F7CEFFFFFFFFFFFFFFBEFDCFCD9EBB20BFC005CF04C88BFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFF7DF8A80B4BA3D1D358C02A4CFFFFFFFFFFFFFFFFFC7E4C1E2B91A0A9),
    .INIT_2A(256'h4B1E8BC8E442E4CFFFC2FFFFFFFFFFFFBF71A0A880406B4E729216F740E5FFFF),
    .INIT_2B(256'h9BBFFFFFFFFFFFFFFD0BAEEB90128873C9C3E8A1CFFFFFFFFFFFFFFFFC8FD84B),
    .INIT_2C(256'h3EF5B3FCC0D3F67E9499CBCD4BBFFFFFFFFFFFFFBDC4CA44F1F0E564A2784254),
    .INIT_2D(256'hD9146D88C355DFCBFFFFFFFFFBD49B286FB56C13B22DCDF9E50BBD3EFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFF0F4795313D2605BD8659271F81850ABFFFFFFFFF3F3062DA133A8ED),
    .INIT_2F(256'h704CAD89E6F7DB9D563493FBFFFFFFFFDAFFB4E8922F9E2E0D05E4A88BC1B1CB),
    .INIT_30(256'h4C63C4CFFFFFFFFFFFFF2371DD1FEE25CFC9F32D6C7AA4FBFFFFFFFFD2FFFDEE),
    .INIT_31(256'h7FE2F87FA60A823FB20026E8D91D11E7FFFFFFFFBFCD7BC877DAB80763385441),
    .INIT_32(256'h318343A11130D8FFFFFFFFFFFFFFFFFFFFFFFFFF11FEB4037A8039B4FFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFF1F824D870942BCF3FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFDBEFC4F3EEB57F8FFFFFFFFFFFFFFFFFFFFFFFFFBFF8D84C98D783DF),
    .INIT_35(256'h6C87BF6EFFFFFFFFFFFFFFFFFFFFFFFFE1BC6B9C46BBFE87FFFFFFFFFFFFFFFF),
    .INIT_36(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFE13F5AB),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFF5AE633FFFF9BFFFFFFFF7DBDE9FFFFF79EFFFFFFFEEFA7FFFFCBFFFFFF),
    .INITP_01(256'h6E4BFFFFFFFEE7D3FFFFFD8EFFFFFFB3DD37FFFFF50BFFFFFFFD7BDDFFFFDFDC),
    .INITP_02(256'hFF6FF0237EFF7FC7777F39DD962BDBFFFFDBFDBFFFFF3596FFFFFFBFD6E4FFFF),
    .INITP_03(256'hBBF9FE4AC0807DFF5F7B0CF5FFDF74874BFFFBEF4CBAEE7E81215FFFF63BDA7F),
    .INITP_04(256'h7EAF13C19329D0485FFFC7FF219BC47E54489FFF796EEDB373D3C100BFFFB6D5),
    .INITP_05(256'hFFC776BF7AC89B2422809FFF7F5C07F3132CD011696D5F598587E4AD6A663FBD),
    .INITP_06(256'h377B6B7F82F6ADE128E0115EDFDDF9FFE07DF1ADA2237FD87FFE48A0BB811121),
    .INITP_07(256'h007842ECAA7CFFFFFA7C001081AADFDFFF75FE7BD1F88DB37EAF57DFF95164AA),
    .INITP_08(256'hFFD5004020481FBAFFFFDB6100984080579DFFFF7FA300B418A348CAFFFFFF55),
    .INITP_09(256'hFFFFFB5800E15015C9FFFFFFF6E500130D817BD7FFFFB7E5006DB300BAFBFFFF),
    .INITP_0A(256'h5FDFFFFFE8F030B9A01AD5FFFFFFFDCF14330B3FF2FFFFFFBFB6E6B813CFFDFF),
    .INITP_0B(256'hF8A1FFF9FFFFE86143201228DFFDFFFFFE80F155841FD75FFFFFCE2B17308067),
    .INITP_0C(256'hD3FFFFFF1FBFFFFF7AFE33E5FFD957BBFFFFDD5472488FE4EDF5FFFF7B1421A2),
    .INITP_0D(256'h3BE67FFCFFF767BFFFFF11D18FFFFFFF9F6DFFFFE9D7CCF8FF7FDD6CFFFFFC5F),
    .INITP_0E(256'hFFFF69C9DFFFFFF9B55DFFFF017A0FFFFF9FF9BDFFFFE0D3ADFFFFFFBBC3FFFF),
    .INITP_0F(256'hFD57FFFFDBE13FFFFFFF5CFFFFFFE681DEFFFFFF7AF7FFFF052D9EFFFFFFDDBF),
    .INIT_00(256'hFFFFBEFEFFFEFDFFBFFFFFBDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFBF3EFFFF3FFFB59A95541CB9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFF7FFFFF3E),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DFFFF7F3EFFFF3BFFBE7EFFFFFF7DFC),
    .INIT_04(256'hFFFFFFFFFFFFFFFF3EFFFF7DBFFF3CFF7DFE7DFFFDFFFEEFF1FFBF3CBF74BCFF),
    .INIT_05(256'hFFBEBEFFFF7EFFFF7FFFFFFF3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFEBEFB717E7E7E7FFFFEFE3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFF7EFFFFBEFF3E),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DFFFFFDBFFF3F7E7FFFFFFE3C),
    .INIT_09(256'hFFFFFFFFFFFFFFFF3FFFFFFDFFFFFEFFBEFFBDFFFFB6FFBBFFBFFCFFFF3DBEFF),
    .INIT_0A(256'h3DBDFFFFFEB9346FE46CF63E7F7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFF3BF07373E57EFFBC7EFFBF7CF1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFCBCFFBD),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFF7B1F0D4A8505480C94677BFFBE),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFF3DFFFFFFFF7D3A23F5FFBE7EFFFBFFFF7FBAFBB4BEFFFF),
    .INIT_0F(256'hBEFF799E45018300008180000B2277FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFF3FBCFFFAFFFFBEFDFFF13E3EFFFEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFEFF77FFFF69FF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6143808100C1C100400300C35FFE),
    .INIT_13(256'hFFFFFFFFFFFFFFFF7FFF3CFFABA07D7F7FFFFFFFFFFF3EFFFF28FFFFBF7DFFFF),
    .INIT_14(256'hBEB7CA80000001C1404001000102CB6DFFFFBE7F7FBEFF7FFFFFFFFFFFFFFFFF),
    .INIT_15(256'hBEFFFFFFFEFF7F75A6FFFFFFFFBFFFFFFEBE7EFFBF7FFFBFBEBE7DFFFFFE3DBE),
    .INIT_16(256'h7EFF3FFFFF3FFFBEFFFFFFFFFFFFFFFF3EFFFFFFFFBF7DFFFFBDE8A83EFF7F3F),
    .INIT_17(256'hFFFFFFBFBFBFBFBF7EFFFF7E3EFFFFBF3C7648818400C000C00041004000039B),
    .INIT_18(256'hFFFFBBBFFEFFFF7EF6E2FFFFBD3EFFFFFFFF7E3FFF7EFFE2BEFFBDFFFFFFFF3F),
    .INIT_19(256'hFFF34C400000C00080000100C000008DF4FF3EBFFF7F7FFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h7E7F7CBCFF3F7EF4FF3CBFFFBFBEFFBE7EBF3FFFBFFFFF3FBEBFFFBF7FFFBF3F),
    .INIT_1B(256'h263FFE7EFFFE3FFFFFFFFFFFFFFFFFFFFF7BFFFFBF3CBDB931FFFDBEFFFFFF7F),
    .INIT_1C(256'hFEBFBFFFFFFFFFFFBF7D7DFFFFBFBFFF7E314C424143000001008000808181C7),
    .INIT_1D(256'hBEFFFEFDFFFFFFF3BEFF7F3FFFBCBDFF9270FAF8DDE17C3EFFFFFFFBF6393EFF),
    .INIT_1E(256'h7E718981C30040C0810080000040C0C2D6FDFFFFFF3FFEFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFF7AFFFFFF762D7FBBFFF95F0DCCE03FBEFFFFFFBFBDBCFDB97876B4F6BDFFFF),
    .INIT_20(256'h4B7AFFFFFFFF7F3FFFFFFFFFFFFFFFFFFFBEFFFFFCFF6B36FFBBBEFFFCFFB6E3),
    .INIT_21(256'hBE7FFFFF7DB8F4332756D5E1A422EB37B7540641410000800080C04000000080),
    .INIT_22(256'hFEFFFFBD7D6EAA397CFFFFFEFF3D53FCFF3D598E93FBF8FFFFBE5DC50080CFF5),
    .INIT_23(256'hA7C7000141C40000000100004180C0028D7ABEFFBFFFFF7FFFFFFFFFFFFFFFFF),
    .INIT_24(256'hF8008100C290F0FF7F784E8141408BB3FFFFFF3A7635B37077B53431EDB2F570),
    .INIT_25(256'hD8FFFEFFBFFFFFFFFFFFFFFFFFFFFFFFFFFF3EEC7A7DFFBFFFBBFFFFBDF7FBFF),
    .INIT_26(256'hBFBEF568E6EEB271999923EF702E71F2F3F4008183C1008100C10000410080C2),
    .INIT_27(256'hFEFFB1BFFFFFFF3E3F7EFFFEFFFBF5BFDE4000C10086E7FFFF794A800000CA31),
    .INIT_28(256'hAFF2970082014141C0010100000141CCEEFCFF3FFFFF7FFFFF3EFF7FFFFF7CFF),
    .INIT_29(256'h5300C0000005D4FFFEF78B004142C4B47FF5AC391FF95E757FF8A5F12FF0B432),
    .INIT_2A(256'hBEFFFFFEBFBE7EFF7EFF7FBE39FFFE7FBEEFBCBFFDFFBDFF7EFFBEFFFF7E58FF),
    .INIT_2B(256'h3170BAA6349DBEBE3DE07230EF2CF1F2F1B595C5000300004000008102008215),
    .INIT_2C(256'hB47BFF3FFFFFBD7736FFBCB375FD78366E4C820000818D29FF7806010142C5A7),
    .INIT_2D(256'hB1754000400181C28100C040004254F03FBEBEFFFFBF7FFFFFFDFFFFFF3F3FFF),
    .INIT_2E(256'hBEADD9474100411275F24A000200493352EE44B41CBEBDBF992E753330F331AD),
    .INIT_2F(256'hFFFFFF7FFDFFFFFFBDFFFE7EFCFFBDFF58FF7DFF3E7DF3223F3877BFFFF9FF7F),
    .INIT_30(256'hB10069607D7FED5F2CAE31AFAF702C7037D00281010300C108CACB8A0ED86CFF),
    .INIT_31(256'hD2BDBFFFFF15EF2F3B7FFFFF3FFFFFFEBEFF7698850000044A99F349008B3632),
    .INIT_32(256'hA8800000018143152E323334F83EFFFFFEBFFFBF3FFFFF7D3FFFBC357D3A7CFE),
    .INIT_33(256'hFFBFFF2C4A00440040A732727038ADB130E1B5B7D50040B1EF31EF33702FB22F),
    .INIT_34(256'hFFBFFEFFFFFF3F3FFFFFB4FFFBBF36F98DFFFF73D1B6F2FFFFFFBFFFBDFFB9FF),
    .INIT_35(256'h712B6D3301D5353370AFEF302E35312B004100824700849F3EFFFEFFFFFFFF7E),
    .INIT_36(256'h35EC246AB63EFF3EFFFFFFFFFEFFFFFEFF3CFFBC5F85000140B8F1AE72AEABF2),
    .INIT_37(256'h0000C2820141C1D77EFFFFFFFF7EFFFF7EFFFFBE3FBE7FFFBEFB3F3FFFFF3F25),
    .INIT_38(256'hFFBFFFFFB7D8000300762DF0EEB03430AEF4F33133F3AE71EFB373EEF3706D00),
    .INIT_39(256'hDAAF7DFFFFFFFDBEFF32BD3EFF3D7F997EFFBAFF7EFFBFFF3FFDBEFFFF3FFF7D),
    .INIT_3A(256'hF2AEF3322F72EEAB34F1ED6FB062000082C30101C3C2C0CBF97E7FFFFE76EB9B),
    .INIT_3B(256'hFFFFBD3FFF3FBFBFFEFFFFBFFEFFFCFFFFBDFFFF3F6D0D0000F8722EF23471F2),
    .INIT_3C(256'h0080400100804087A93EFF70194A8B0445C99A6F7FFF3DFFFDBD3EFF3F7FFF59),
    .INIT_3D(256'hFF3DFFFFFFBCA1444069B13330AD7134B1B1B1B1B1B1B1B1F0AD6F7794C40040),
    .INIT_3E(256'h4100C3CCADBCFF7EB47FFFBFFFFFFE5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hB1B1B1B1B1B1B1B1B2F1ED08820205C041824000008281C2D1F9198A81410000),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFF3FBFFFF3D9425070B22D3470B2),
    .INIT_41(256'h000000C201000001C3860100C000430140C300C695EC7CB4FDFFFEBCBF3E7DB6),
    .INIT_42(256'hBEFF3F7F7FFFFF2F0900F7B36D6FEF71B1B1B1B1B1B1B1B1B22D474700030102),
    .INIT_43(256'h00C100835A6935FFFFBEFEFFFF7B3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hB1B1B1B1B1B1B1B136313271F59780C185C3010103000040C100420044000000),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFEFF3B1944CAF130F0F1AE),
    .INIT_46(256'h0000420101404140000300008100004080003CFF7FFFFDFFFF3EFFFFBD3E7DBE),
    .INIT_47(256'hFF7DFFFFFFFF3FFFB008002372B22F70B1B1B1B1B1B1B1B1EEF032AFEFF3B440),
    .INIT_48(256'h75F6EF1B3DBEFF7CFF7FFFFDB7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hB1B1B1B1B1B1B1B16A2EB1F1F16B6FF4830041C301000040000006C000001AD4),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBD3EFF7FFFFF1B0400A8B33030),
    .INIT_4B(256'hEEC40000820100408300000280BA663DBEBDFFFFDF7AFFFFFFBFBEFFFC3FFFFF),
    .INIT_4C(256'hFFFFFFBDBEFF7FBEBFEE0900009D76F0B1B1B1B1B1B1B1B12F65CAE46EB2B0B0),
    .INIT_4D(256'hFFFFBE3EFF547CFF3FFFFDFFBD3FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hB1B1B1B1B1B1B1B1B359C4A5E76FAF31B5C500C1C140004000C6448F30D33EFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF7EFFFFBFFFDA85C05E872B),
    .INIT_50(256'hF2D880404141D0D497C300863FFBBBFFBFBFBFFFFFFF70FFBF7FFFFFF9FFFFFF),
    .INIT_51(256'h7FBFBDBEBCBEFFFFFFFFEC4600933780C19D70EF30B2B3584200F3F3DA2EB173),
    .INIT_52(256'hFFFF7FFFBEBE717EFFFFFFFF7B7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'h85C30001468100174BE333B0B0346FAEB7D2804B11898403C00041CD75FBFFBF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFFFFFFBFBFFEFFFFFC7B88C187D7A9),
    .INIT_55(256'hE88DC48242C30000400000D3B7F8FFFE7FFFFEFFFEBFB8BFFFFFFFFF7DB9FF7F),
    .INIT_56(256'hFF3B7FFFBFBFBF7FFFFFF58A8C0100B249804B91CDC82262CE70F2EF71AEF6B5),
    .INIT_57(256'h7EFF7EFFBFFFFFFF3FFFFEFF3F37BF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hA88CDC1913579D4AF0B0B2722D64D0004000030000420080800383CC7ABD7DFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CBF7FBEFFFF3EBDFC689444C1008040),
    .INIT_5A(256'h8100C081C1C24000000000057F9B7FFF3FFFBEFFFE7FFF7FFEFF7EFFFFF77FFF),
    .INIT_5B(256'h7EFFFFFFFF7E799CC8064400000000009AA0D75F1FE38DE3AE59CE8040814085),
    .INIT_5C(256'hBFFFFEFF7F7FFF7F7FFF3FFFFF3BFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'h0017EE948B4BEFA98100808080C3414100C100410202C8494886C100DDDC38BE),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F3EBEFD6B5DCC86880AC4004003C9),
    .INIT_5F(256'hC84D0B8A8ED96A35EB588D0E02EAD27FBFFFBF3FFFFF7FFF7FFF7FFFFF7EFCFF),
    .INIT_60(256'h3EBFFFFF26D44C0C87CD894CD28982C10100CEDF28DFCB000000C18280410409),
    .INIT_61(256'hFFBFFF3EFFFFFCFF3FFF3F3F3EFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hC30300404201C6C100C303060D8CD328F27536F9FEFF7FBFFFBD9B8CCA4144D8),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E2F5F9C0943CB45924D440889C2),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFBF3E3769DCDA9FAAFFFEFF7EFFFDFFFFFEFF2FFFBE75FF),
    .INIT_65(256'h7FFEB826FF2E4F41CA35FEFDCD8A09874700010101000304875323AE34F7BCFF),
    .INIT_66(256'hFEFA3EFFFFFDFF77FF3EFFA33FFF75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'h8DC60082838A116435F97FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DFDFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFE64F67F9290C569FF7F7C50CDC786),
    .INIT_69(256'hFFFFFFFFFFFFFFFFBEFDFD7FFFFFFFFFBD797CFFBDFFFE2D36FFFFAAB7FFF4FE),
    .INIT_6A(256'hBFB7167F7341CA49FFBF7FFE4B08C8C8C94C028793B2FCBE7FFFFFFF3FBEBEFE),
    .INIT_6B(256'hFFFCB63DFFFFBDFF58BFFFFE55FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'h07C9D0963EFDFF7FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF7F),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE99DFD15420BEAFFFFFEFAC50C0687),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFBD7FFF7FFE7FFFFF7EFFFB6EFEFFFF3F37703FFF17FFB7FB),
    .INIT_6F(256'h7F99DCA5C6858A6A7EFFFD0CCE070A86C8C9DBFD7FFF7C3EBFBF7F7FBF3FBE3E),
    .INIT_70(256'hFFFEFF7D7FFE7FFFBF4D3E7EE0BAB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'h4412EE7DBFFF3FFFBFFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F5390CF8CC348CBB9FBEC484AC88688),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFEBEFFFFFFFFFFBDFFFF7DB17E7E7FBFD0FD7FA1FF363D),
    .INIT_74(256'hBF5D0D86CBC30D498AC7CC898985890A8A52F1FF7BFF7FFEFFFFFFBF3F7FFFFF),
    .INIT_75(256'hFFBEFFFD7EFFFEFFFE13BEFF6B7572FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'h885578BFFFFFBBFEBFBFBFBFFFFFBF7FFFFFFFFFFFFFFFFFBFBFFFFFFF3EBEFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA60FC5070B4745CBC9090806C68949),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBEFFBD777CFF7F06BFFDAD33B9FF),
    .INIT_79(256'h3F2F1007C905494647C74788C84748C8C6D0BCBF7FFCFE3FFFFFFFFFFFFFFFFF),
    .INIT_7A(256'h3EFFFFFFFDBC7DBAF1DDFFFF6CAF3DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h46D1B97FBFFCFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF279240470A0B84C747874707088808),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF3E7FFFFF3828B1F9FFBD67F1FFFF),
    .INIT_7E(256'h7E5C8DCA488D44CA47478707878848C8C81276FF3FFE7FBFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hBFFF3FFFFF3FBE3B7CFF3EFFE07FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[9] ,
    \douta[10] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    addra);
  output [7:0]\douta[9] ;
  output [0:0]\douta[10] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [12:0]addra;
  wire clka;
  wire [0:0]\douta[10] ;
  wire [7:0]\douta[9] ;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFFFF73FBFFFF32102BFFFFFFDCDEFFFF070437FFFFFFFFFDFFFF95F457FFFFFF),
    .INITP_01(256'h1BFFFFFFFFFFFFFFAFA16FFFFFFFFFFFFFFF2BAE47FFFFFFFA3DFFFFDCBF0AFF),
    .INITP_02(256'hFD165DFFFFFFFFFFFFFFF5154FFFFFFFFFFFFF9FD88904FFFFFFFFFFFFFFFDAA),
    .INITP_03(256'hFFE22FAD86FFFFFFFFFFFFFFFDD1B1FFFFFFFFFFFF7F6EA722FFFFFFFFFFFFFE),
    .INITP_04(256'hFFFFE931B491443B31FFFFFFFFF316C8012DC7FFFFFFFBA44ECFCB5BFFFFFFFF),
    .INITP_05(256'h7FFFFFFFFEBFCAA092713CFFFFFFBB9542A0305EFBFFFFFFFE5C8ADED03E9FFF),
    .INITP_06(256'h3A09CFFEFFFFFE8E194FBCF0ABEFFFFFDA860DED34A2B7FFFFFFAB26B8135137),
    .INITP_07(256'hED428A0807AEFFFF7F0CA3610E6721CCFFFF7C75017FECBA3ADEFFFFF825C3C8),
    .INIT_00(256'h089371FFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A14CD40890D4A44888888C7C74848C7),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7F7DFFFF7BFFBF2FFFBFBCFF),
    .INIT_03(256'hB2978807024A8B8A49890908C8C88807C751A9FEBF7F3FFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h7FFF7EFFFFFFFEBA7FFD3AFDFFFFFF7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'h868D5FF7FFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2CD18B89CAC0CAC988C90A898808C846),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFFFFFFFEBEFFFFFFFFBDFF3FBEFF3F),
    .INIT_08(256'h6E5705C407CC8900C5C8CA0987C847870649D52E3EFFFFBDFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFBDFFFFBE3F7EBEFEFFBF7DFF3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h88C68E68FE7FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9E0F0709C88D0D43078A090748C807),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFBF2DDFD788C907C50E8CC504860849054A9469FFFFFDFCFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7FFFFFBFBFFFFF),
    .INIT_0F(256'h4D09C42EFFFEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFFFEFB2DDBCF0B0507088A0787CAC7),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFF7D7E3F7C379BC340C10A8D4DD0558900000398F9FFFF3FFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFEFE3F7FBFBF7F),
    .INIT_14(256'h0A41C183D6B03E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFBF7FED0B8502414D71FE7922),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h7F3FFFFFFFFF7A1B8604038E7DFF3F3F238A400141E867BDFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F3FBE),
    .INIT_19(256'h7C4E81000046FEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFBE3FBFFFBFFFFFFFFF7F3DFEFEFDFDACCB83C1C8B5FEFCFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h3DFFFFFFFFBC7EBE1581408160FD3EFDFDE388010045A97EFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFF),
    .INIT_1E(256'hFFB40A838282583EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFF7FFF7FBCF876F576F8BEFEBEBF7FBEFFF1C90144103BBFFF),
    .INIT_20(256'hFEBEFEFEBDFEBB7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hDAA2AC36FEF8FAFFB74480028497F83FFFFB0B848080491EFEFFBFBFFE79BF3B),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E3FBFFDFC7FFFFCFF3C6C9F98D8181A),
    .INIT_23(256'h73A1C50002020047D674FDF7BFFFFB3F3F3F3FFEBFBFBFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'h7C7F7FFEBE3F7FB96B651BD4100F8F108E11985B613B33B1A304C0400408CA22),
    .INIT_25(256'hBFFF3F7F3F7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'h0DCC4B1712DC8C5CD146004902020056D251D20006C0C7400060DFB9BFFDFFFE),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CBF7FFDBFBF7EB1D4524F0D8C8C4CCC),
    .INIT_28(256'h5148D5CB45068003CAD68F283F7FFABFFFBEFEFFFEFEFDBCFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFD7FBFBDFF3FB32410D0D0D04F4F10D197CC53CBD14EC013C8D00E0806808A12),
    .INIT_2A(256'hFFFFFFFFFFFEFEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'h8ED1C8560DCB40120E0B4D5399C84F8D4AC6560C0F8C0E094F8E8F5B68B83FFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F7FFEFDF9241610D15192D1519090),
    .INIT_2D(256'h080110CE8DD51296D709150C1D10D82EB7BBFDBF7FBF7FBFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFF7F7FFEFE769C0ECD8E0F504F8E8DCC084DDC518C4E52464D95140D46145554),
    .INIT_2F(256'hA02123B03CBF3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h55508E8F9591160FCBC808C3D09206810A0ACE0006C9D10206118214CA4CCFD7),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FBEFF3A1E0F0D8E4E0F4FCF4ECE),
    .INIT_32(256'h0ACC51D60D4B1117910BCFD0111014520B92D75FA3E877FEFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFDBFFF7EFF3FE3521150100F50D152930D538C4A121209D04FC88A550F8B8E8F),
    .INIT_34(256'h4A8DCF4F521AE4EB3FFFBF7FBF7FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hCE0F4F4E0E0E4ECDCB8C0D0F905051918D0B4C514F52478F8E8DCA4CD1938EC7),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFF3F7EEE9FD18E8E8D1311D250),
    .INIT_37(256'h47D28A91924ED213110F8D4B0989090BCF500F4C0DD1D71B5C7C3D3FFEFE7EFF),
    .INIT_38(256'h3FFEFEFF7FBFF4A79450CECD1150904F5151D110D19253129716D4D310CE8C4B),
    .INIT_39(256'hCECF50D08F8ECD4C9A547D7EFEFAFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'h8FCF8F4E4E0FCE4C8FCE4E8F10D19110C8D08C9191130D0A49CC1113914F1318),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFFBFFBB4E15A11CECD4F8F4F),
    .INIT_3C(256'h40D4CE4C1214C0D5CECF5152908ECE104ED09213D3D24F4C12DBD9BEFFFE3ABF),
    .INIT_3D(256'hBFFFFDFDFFFFFFFD362A184F48CDCF93CB8CCD4D4E0ECE4E0BCB4BCCCE8F10D1),
    .INIT_3E(256'h1211908F50909294D38BDDF57FFFFEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h9190508F8E8F50D39393D2D14FCF8FD087100DCE8DCC8DD588CA8B8C8F50CE4C),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[9] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[10] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[11]),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [17:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [17:0]p_15_out;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hBAAAA2BFFFFFFFFFFFFF7F9BEFBAAEFF24AEEAE8FAEEDF3EFFFFFFFFBFFFEDBB),
    .INITP_01(256'hFBFFED7F50A4F8357B97FFFEBAFBE1B6FFFFFFFFFFFFD7FAD5FA75D4B66BEEBF),
    .INITP_02(256'h7A1BBAABAEAABAD3FFFFFFFFFFFFFFFFFFFFFFFFE5AF1BBBB8AAE43FFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFF4E3ABFAC2ABF0AFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFA3FE82EA9D46EF2EFFFFFFFFFFFFFFFFFFFFFFFF3393FAFA7EE6377F),
    .INITP_05(256'h403FBFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF3F1A9E267F9F3FFFFFFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFAF7A23F),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFE9FFE7FFF7FFF9FFF9FFF7FFFDB70165E999EFA19F894D6CC178D),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hF80FD84D790B198B18CB184C97D0F853F691F7CAFC9ABBF19E3F7FBFDFFD7F3B),
    .INIT_03(256'hB45B1013178E96C8F992F98E77CE77CFF791F8D2F852978F578FF950B94FB88D),
    .INIT_04(256'h9790B810F80FF88FF8CEF74DD74DF78E97CEF80FF80FF88FF78F97D0D893F956),
    .INIT_05(256'hFF3FFFBFFFFFFFFFDFFF7FFF7FBF5F7F1E793FFDFFFD96AAD1DD16DFFB1DBA54),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h580C37CCB8CCF94EF90E98CD580E784EF791FA0FF9955B31FFBF7FFF9FFBDFFF),
    .INIT_08(256'hD9AB4FDD7958F950B6D0F90CF990F850B654F753F7D1F84FD84DF80FF891F8D2),
    .INIT_09(256'hF79B1799B81959DA9ADBBA9C9A5C7A1CFAD71A57F9D71898179A779E7823B9A6),
    .INIT_0A(256'hFFBEFFBFFF7FFF7FFFBFDFBF9FBE9FBF9FFF5EFC7EFEDFBFFF7FFC77FA6A1923),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hF911F7D1F752F794F714D751784E984DF791798F5A5CDBF63E3F9FFA5F383FFF),
    .INIT_0D(256'h9FFCDDFFD6D679D4B916F84CD74EF80FF90C988BB80DF8D0F810B70EF74EF8CF),
    .INIT_0E(256'h9EFF7C395AF33AB03B31DBF25B339BF4DBB5DB34DB333B73BC76FDFBDFFF9FFF),
    .INIT_0F(256'hFFBEDF3FFFFFFF3FFF7FFFFEFFFEFFFEFEBFFFBF7FFE1FFC5FFFDF3F3FBF9F3F),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hF88FD74EB890D810D70E1850F991B88EF8C8770EDAE5DBF2DF7F3FFF9FFFFFFE),
    .INIT_12(256'h3FBE3EBE772DDA23180A99C5F84BF79518CAB84CF910F8D2F891D78ED88CF8CB),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'h37D3F894F855F955F9D5F8D2B7D0B7D0D99039DBF319FFBB7FFFBF7FDF3DFFFE),
    .INIT_17(256'hFFFE9FFFDE7E70D8DA9CB88FF88DD6CDD8D1B7D177915711F813F994F9935851),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'h98CAF98B980877C7F88AF78B370CF91198DC5317FFB75D793FFF7FFF7F7FFFBF),
    .INIT_1C(256'hBFFE3FFFDF7FFFBFD1DBD81EF915F990F850F891F80FF74D37CC580E180F580E),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hD713F894F8D2F80FF78E78905893D9D51460FFBB1D7A9FFFBFBE7FFFFFFFFF3F),
    .INIT_21(256'hFF7D9FFFDFBF1EFFFFBF18ECB89FD857375277D1F84FF8CEF80EF810F8D1F8D3),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h590CD7CB37CDF7117798FA23D96955A4BF7F3DBB9FFF7FFF9FBD1FFDFFFFDF7F),
    .INIT_26(256'hFF7FFF3EDF7C3FFF7FFF9EFF1D76359F5B949A1199CD798CB80B378BB74FF812),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h1A909B135A155552F193F6233D39DFBF3FFF3FFF3FFFBEBEFFFEFFFE7EFCFFBF),
    .INIT_2B(256'hFEFFFEBDFFFD3FFD9E3D3FFFDF7F7D3CFA39552A121A73D4B915FC14FBCEB9C9),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'h048C27900A149122BC36FFFD9FFC7FFBFFBD7FFFBF3FFF7F9EFCFFFDFFFE3FBF),
    .INIT_30(256'hFFBFFFBF9FBE3F3DBFBEDFFF3E7E7FFFFFFFFFBFDB7B91E707D2624882C9240C),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({p_15_out[16:9],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({p_15_out[17],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFDFCFFFFFFFFFFFFFFED5769FFFF7FFCFFFFFFBFFF41FFFFFDE7FFFF),
    .INITP_01(256'hD20FFFFFFFBDBFF7FFFFBA0FFFFFFFF2DB73FFFF393FFFFFFFEFDFDBFFFFEDFE),
    .INITP_02(256'hFFEF4003FFFFFD8FFEFFFFFFB006FFFFFFD9FFBBFFFFD017FFFFFFFDDF5FFFFF),
    .INITP_03(256'hFDD1FBD7A001BFFFEFF9A1FBFFBFA401FFFFF85FCEBFFEFEC0007FFFFFF7FFDF),
    .INITP_04(256'hDFFD87A2CF3F09017FFFEBF709A3F02F84017FFFE67A9DC2FFEBE100FFFFF7F7),
    .INITP_05(256'hF7755BBB91D9DF7E4104FFBF7DD1A09373ABF00AFFF7D5FD81809F9FE100BFFD),
    .INITP_06(256'h31FFFFFE1FFFA8FBABF459FFFFDE77F5E837BBFEE3E7FEC5BBFFE02FD77DB579),
    .INITP_07(256'hFFCA4410237FFFFFB85BFF9411663D3EDFFDB87DB7FB4D7FDDDAFFBEF957ED7D),
    .INITP_08(256'hBF97FF7D22401DF5FFFFFF4FFFE9482019FFFFFFFFB7FFA410C2506DFFFFFE3F),
    .INITP_09(256'hFFFFDFC7FFF32057F9D7FFFFEF82FFC70096BFF7FFFFEFEDFF3DB02276EFFFFF),
    .INITP_0A(256'hFFFFFFFFFF7904BBF41BFDF3FFFFFFE210FEB607FDFBFFFFDF1E365322DFFDF7),
    .INITP_0B(256'hA39FFFFDFFFF7A5812800D41FFFFFFFFF6A44C94040FFFFFFFFFF77075338569),
    .INITP_0C(256'h843FFFF9FBFDFFFFA79AC2F5FFF3FDFDFFFFEDC51461A7A8FDFFFFFF9FDA5802),
    .INITP_0D(256'h86EEFFFFFF7FFFBFFFFFCEC7EDFFFFFFAD77FFFFFD77C3FFFF9F16FDFFFFCA37),
    .INITP_0E(256'hFFFFFFF6BAFFFFFFEFFBFFFF7F1FB3FFFFFF6796FFFFD8CFCFFFFFFFEFB7FFFF),
    .INITP_0F(256'hFF77FFFFB5EFDFFFFFFFFC2BFFFF0DFF3FFFFFFFF135FFFFBBFF9FFFFFFFF5E5),
    .INIT_00(256'hFFFF5F7FFF7FFEFFDFFFFFDEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFDF1FFFFF9FFFDA4DCA2A0EDCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFBFFFFF1F),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EFFFFBF1FFFFF9DFF5F3FFFFFFFBE7E),
    .INIT_04(256'hFFFFFFFFFFFFFFFF1FFFFFBEDFFF1EFFBE7FBEFFFEFF7FF7F8FFDF1EDF3A5EFF),
    .INIT_05(256'hFF5F5FFFFF3FFFFFBFFFFFFF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFF7F5FFDB83F3F3FBFFF7F7F9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF3FFFFF5FFF1F),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9EFFFFFEDFFF9F3FBFFFFF7F1E),
    .INIT_09(256'hFFFFFFFFFFFFFFFF9FFFFFFEFFFF7FFF5FFFDEFFFF5BFFDDFFDF7EFFFF9E5FFF),
    .INIT_0A(256'h9EDEFFFF7FDC1AB772367B1FBF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFF9D78B9B9F23FFF5E3FFFDF3EF8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9FFF7E5EFFDE),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFBD8F8625C28224064AB3BDFF5F),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFF9EFFFFFFFFBE1D91FAFF5F3FFFFDFFFFBF5DFD5A5FFFFF),
    .INIT_0F(256'h5FFFBC4FA280C10000C040008511BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFF9F5EFF7DFFFF5FFEFFF81F1FFF7F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFBBFFFFB4FF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1FB0A140C000E0E000208100E1AF7F),
    .INIT_13(256'hFFFFFFFFFFFFFFFFBFFF1EFFD550BEBFBFFFFFFFFFFF1FFFFF14FFFFDFBEFFFF),
    .INIT_14(256'hFFDCE54060A08040202080008001E5B6FFFF5FBFBF5FFFBFFFFFFFFFFFFFFFFF),
    .INIT_15(256'h5FFFFFFF7FFFBFBA53FFFFFFFFDFFFFF7F5FDFFFFFDFBFFFFFFF3F9FDFDF9FFF),
    .INIT_16(256'h3FFF9FFFFF9FFF5FFFFFFFFFFFFFFFFF1FFFFFFFFFDFBEFFFFDE74541FFFBF9F),
    .INIT_17(256'hFFFFFFFFFFFFFFFFBFFFDFBF1FDFFFFFBEDBC4E0620060006000A000200081CD),
    .INIT_18(256'hFFFFDDDF7FFFFF3F7B71FFFFDE1FFFFFFFFF3F9FFF3FFF715FFFDEFFFFFFFF9F),
    .INIT_19(256'hDF590600000060A040008000600000C67AFF1FDFFFBFBFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h3FBF3E5EFF9F3F7AFF1EDFFFDF5FFF5FDFDF9F7FBFDFDFFFDFFFDF5F1F7F7FBF),
    .INIT_1B(256'h139F7F3FFF7F9FFFFFFFFFFFFFFFFFFFFFBDFFFFDF1EDEDC98FFFE5FFFFFFFBF),
    .INIT_1C(256'hFFFFBFDF9FDFFFFFFFFE3FDF9F3F3F7F1F182520008120608000400040C0C0E3),
    .INIT_1D(256'h5FFF7FFEFFFFFFF95FFFBF9FFF5EDEFF49387D7CEEF03E1FFFFFFFFD7B9C1FFF),
    .INIT_1E(256'hDFB8C400E10040E0C0004000002060616BFEFFFFFF9F7FFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFF3DFFFFFF3B96BFDDFFFCAF8666709FFFFFDF9FBFDE3EFFFD5CDCBB5B7FFF5F),
    .INIT_20(256'hA53DFFFFFFFFBF9FFFFFFFFFFFFFFFFFFF5FFFFF7EFFB51BFFDD5FFF7EFF5BF1),
    .INIT_21(256'hDFFFDFDF3FDD7B9B74AC8C52B433F67CFC4A0300000020400040602000000040),
    .INIT_22(256'h7FFFFFDEBE37559C3EFFFF7FFF9EA97EFF9EAC47C9FD7CFFFF5FAEE20040E7FA),
    .INIT_23(256'h9584808000C1206000800000A0406001C63D5FFFDFFFFFBFFFFFFFFFFFFFFFFF),
    .INIT_24(256'h7C00C000614878FFBF3C27C0A020C5D9FFFF5F1D9C1CFC7B7D3C5DBC5A5CFD7B),
    .INIT_25(256'h6CFF7FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFF1F763DBEFFDFFFDDFFFFDEFBFDFF),
    .INIT_26(256'hFF5F5AB45479FCFC4FCFB53CFC5CFDFCDB3BE0E0214020C100E00000A0004061),
    .INIT_27(256'h7FFFD8DFFFFFFF1F9F3FFF7FFFFDFADF6F2000E00043F3FFFFBC254000006598),
    .INIT_28(256'h9C9C6D80C000A041608080000080A066777EFF9FFFFFBFFFFF1FFFBFFFFF3EFF),
    .INIT_29(256'hA900600000826AFF7F5CA6000000421B9E9957BF93BE105ABFFC341CDCDBFD7B),
    .INIT_2A(256'h5FFFFF7FDF5F3FFF3FFFBF5F9CFF7FBF5FF75EDFFEFFDEFF3FFF5FFFFF3F2CFF),
    .INIT_2B(256'hD8583E94DCD0FF9E3F519BFC9B5AFCFCFCFDCC6200E10020200000C00100418A),
    .INIT_2C(256'h5ABDFF9FFFFFDEBB1BFF5ED9BAFE3C1B3726410000C0C6947FDC8300000002F4),
    .INIT_2D(256'hFC5DE1602000C081C000602000212A789F5F5FFFFFDFBFFFFFFEFFFFFF9F9FFF),
    .INIT_2E(256'h5FD6ECA3A000A0095978A560A080E55BEAB843DA2EDF5EFF2F9AFDFDFCFDFD9B),
    .INIT_2F(256'hFFFFFFBFFEFFFFFFDEFF7F3F7EFFDEFF2CFFBEFF1FBEF9119F1CBBDFFFFCFFBF),
    .INIT_30(256'hDB60F50F9DFF96503ABB5C3B9BFC5BFDFE0A2240002100000465E545076C36FF),
    .INIT_31(256'h69DEDFFFFF8AF7979DBFFFFF9FFFFF7F5FFF3B4CC2000002844D1A666007DD7C),
    .INIT_32(256'h156020600040A10B1719991A7C1FFFFF7FDFFFDF9FFFFFBE9FFF5E9ABE1D3E7F),
    .INIT_33(256'hFFDFFF162500220000B51CBC3BFF7AFC1C13FB5BCAE040FA5CFD9BFDFB3BFDDC),
    .INIT_34(256'hFFDF7FFFFFFF9F9FFFFF5AFFFDDF1BFCC6FFFFB9E85B79FFFFFFDFFFDEFFDCFF),
    .INIT_35(256'hFD1918DB212C3D3DBC7BFBFCFBFE3CD9A0C16000630042CF1FFF7FFFFFFFFF3F),
    .INIT_36(256'h9A7612355B1FFF1FFFFFFFFF7FFFFF7FFF1EFF5EAFC20080A1FEDC7CFE3B9AFD),
    .INIT_37(256'h2020200020A0E0EB3FFFFFFFFF3FFFFF3FFFFF5F9F5FBFFF5FFD9F9FFFFF9F92),
    .INIT_38(256'hFFDFFFFFDB6C0081809D5BFCBB3CFE5B3BFD7C1C1D7C7BFD7AFDFD9BFDFB5800),
    .INIT_39(256'h6DD7BEFFFFFFFE5FFF19DE1FFF9EBFCC3FFF5DFF3FFFDFFF9FFE5FFFFF9FFFBE),
    .INIT_3A(256'hFC3AFD9D5CFEFC3AFCFB1AFCFC744020A0610020202060E5FC3FBFFF7F3BF5CD),
    .INIT_3B(256'hFFFFDE9FFF9FDFDF7FFFFFDF7FFF7EFFFFDEFFFF9FB68600E0FDFCBBFCFDDB7B),
    .INIT_3C(256'h0000008160600043D41FFF388C25C502A2E44DB7BFFF9EFFFEDE1FFF9FBFFFAC),
    .INIT_3D(256'hFF9EFFFFFF5ED02220965BFDFC7A3C5DBCBCBCBCBCBCBCBCFC9BBCDDE96000A1),
    .INIT_3E(256'hA000E166D65EFF3F5ABFFFDFFFFF7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hBCBCBCBCBCBCBCBC9CDCFA26E020A20081812060608180E1E8FC8C45C0A00000),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF9FDFFFF9EC02A97BFC3BFE5C7C),
    .INIT_41(256'h00002080C02000C1E14380006000A18020E10063CA763E5AFEFF7F5EDF1FBE5B),
    .INIT_42(256'h5FFF9FBFBFFFFF976580DDFDFBFC9BFCBCBCBCBCBCBCBCBC3BBAC726E0C10061),
    .INIT_43(256'h00E000C12DB49AFFFF5F7FFFFFBD1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hBCBCBCBCBCBCBCBCFD7CFDBC7D4DE0008220204041000000E000210022000000),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFF7FFF9DCD02661B7CFCFD9B),
    .INIT_46(256'h808040400020210000810000C000002040001EFFBFFFFEFFFF1FFFFFDE1FBE5F),
    .INIT_47(256'hFFBEFFFFFFFF9FFFB7A4C033BCFCBCFCBCBCBCBCBCBCBCBCBADBFD9C3CDDBC81),
    .INIT_48(256'hBA7BF78D9E5FFF3EFFBFFFFEDB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hBCBCBCBCBCBCBCBCD95A9BFCFDDA9BFCE2C02020000080C00000036000000D6A),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFDE1FFFBFFFDF8D02C0D61CFCDC),
    .INIT_4B(256'hF9638020A08000C0C1000001405D339E5FDEFFFFEF3DFFFFFFDF5FFF7E9FFFFF),
    .INIT_4C(256'hFFFFFFDE5FFFBF5FFFD664008030FE5BBCBCBCBCBCBCBCBCFC55E6D31BFEFC9B),
    .INIT_4D(256'hFFFF5F1FFF2A3EFF9FFFFEFFDE9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hBCBCBCBCBCBCBCBCDD6E6133B6BC5CFCBD0481E040000040006322C718E91FFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF3FFFFF7FDF0C42C0F1C619),
    .INIT_50(256'h9C0E00600000C729CBE100439FFDDDFFDFDFDFFFFFFF38FFDFBFFFFFFCFFFFFF),
    .INIT_51(256'hFF9FFEFF7EFFFFDFBFFF168380493E22C251FBFC3DDDBD50A1001BFC50BBFCFD),
    .INIT_52(256'hFFFFBFFF5F5FB83FFFFFFFFFBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'h0020A061840020CA47D39C3BFCFE5B3AFEEBC1E608C4C1016000A0E6BAFDFFDF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF3F5FFFFFFF1FDFFEFFE500C3EBB5),
    .INIT_55(256'h15080201A16160C0200000E9DB7CFF7FBFFF7FFF7FDF5CDFFFFFFFFFBEDCFFBF),
    .INIT_56(256'h9F9DFFFFFEFFFFFFBFDFFAE4E5C0207844E086E947E491F1497BFC9BFC7BFEFD),
    .INIT_57(256'h3FFF3FFFDFFFFFFF9FFF7FFF9F9BDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hF8EAB1EFEC2E920A7B5B7C3C1AB5EA0040200200006180404081C1663DDEBEFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFFBF1FFE7B926962E06040E2),
    .INIT_5A(256'hC00020206020A08000000082BFCDBFFF9FFF5FFF7FBFFFBF7FFF3FFFFFFBBFFF),
    .INIT_5B(256'hFEFF9F5FBF7F5E510645A3E0C0616080AFF2CD71F1532A16594E898060A10082),
    .INIT_5C(256'hDFFF7FFFBFBFFFBFBFFF9FFFFF9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hE06C19ECE787F9D7E160A00000C10000006000A0010123452443E000EE6E1C5F),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFCFD7E376EC362022362A0010140),
    .INIT_5F(256'hE3A685C4C66C15FAF52CC607017569BFDFFFDF9FFFFFBFFFBFFFBFFFFF3F7EFF),
    .INIT_60(256'hFFBF9FFED1A7E3E364E561A1E522E000A040891236908640A00060810000A144),
    .INIT_61(256'hFFDFFF1FFFFF7EFF9FFF9F9F1FFF7D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'h000100404040410020E1C2E386C68994387A5BBCFEDF5F3FFFDECD4665A0226C),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFEFED7313086E122E14A8701E22462),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFDF1F9BB46E6DCF55FF7FFF3FFFFEFFFF7FFF97FF5FBAFF),
    .INIT_65(256'hFFBF1D2FDF78E2E2C25C3F5FC522E3C482C00001C06022E1C3A991571AFB5EFF),
    .INIT_66(256'h7F7D1FFFFFFEFFBBFF1FFFD19FFFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'h242101A0016488B29AFCBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EFEFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDFB07AFE4AE461F51FFFFD29E3E182),
    .INIT_69(256'hFFFFFFFFFFFFFFFF5FFEFEBFFFFFFFFFDEBC3EFFDEFF7F961BFFFF55DBFF7A7F),
    .INIT_6A(256'hFE5D48FE7B6263063FDFFFFE27C1E2E3A202E2E4E9D8BEDFBFFFFFFF9F5F5F7F),
    .INIT_6B(256'hFF7E5B9EFFFFDEFF2CDFFF7FAAFF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hE3E1E56DFF7F5FFEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF17F1DFADA144D2FEFE7F9F00E4C303),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFDEBFFFBF7FBFFFFF3FFFFD377FFFFF9F9B389FFF8BFFDBFD),
    .INIT_6F(256'hFF0FEF92E0E4E252DE1F7FC8E2E1E543E5E1EBBFFFBF9EFDDFDFBFBFDF9F5F1F),
    .INIT_70(256'hFF7FFFBEBF7FBFFFDFA61F3F705DDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hE2E639FFFF3FFF3FDFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECAC4E1E2E343863F7F9800E2E241C2),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFF7F5FFFFFFFFFFFDEFFFFBED83F3FBFDF68FEBFD0FF1B9E),
    .INIT_74(256'h3F8E0561E440C6E1C74405E0E363E2E3E4E6FCFF3CBFFE7FFFFFFFDF9FBFFFFF),
    .INIT_75(256'hFF5FFFFE3FFF7FFF7F895FFFB5BA39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'h41893CDFFE1FDDFFDFDFDFDFFFFFDFBFFFFFFFFFFFFFFFFFDFDFFFFFFF1F5FFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35E5E5A4A422E2E3E1E2E3E3A6E342),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF5FFFDEBB3EFFBF03DFFED699DCFF),
    .INIT_79(256'hFFB948E3856124E2634323A3E2E2834363A5BFFDFF5FDFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'h1FFFFFFFFE5EBE5DF8EEFFFF36D79EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h63C59EFEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF55C860E2E38521C2632343A3E3E3A3),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF1FBFFFFF1C14D8FCFFDEB3F8FFFF),
    .INIT_7E(256'hFECE86E2C3E442E4E2E222E323A3E3E2E3A7BC3FFF1FFFBFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hDFFF9FFFFF9F5F9D3EFF1FFF70BFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[18] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[19] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[18] ,
    \douta[19] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[18] ;
  output [0:0]\douta[19] ;
  input clka;
  input \addra[12] ;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[18] ;
  wire [0:0]\douta[19] ;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFFFFFFDFFFFFBB33CFFFFFFFFFAFFFFFFBF3CFFFFFFFFBFDFFFF94E7AFFFFFFF),
    .INITP_01(256'h77FFFFFFFFFFFFFFFFB3EFFFFFFFFFFFFFFF9F7BEFFFFFFFDFF7FFFFB77BFBFF),
    .INITP_02(256'hFC0747FFFFFFFFFFFFFF3F561DFFFFFFFFFFFFFFFD5EFFFFFFFFFFFFFFFFCFBE),
    .INITP_03(256'hFFE5FE59C1FFFFFFFFFFFFFF830794FFFFFFFFFFFFFFD86DD8FFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFEE9FEEE5002AFDFFFFFFFFEF3D4393EDFFFFFFFFFEA73F89A0DFFDFFFFFF),
    .INITP_05(256'h1FFFFFFFFFFF347F97711FFFFFFFF9FFDBFABFBBFFFFFFFFFEFFF8DAE8BDFFFF),
    .INITP_06(256'hDFF8B95FFFFFFDFFFEFFBDD95C3FFFFFE7FFFFDF77EFCDFFFFFFE1FFAFDCF65B),
    .INITP_07(256'hFFFF7BFEEFCFFFFFFFFF3FF87E33FFFFFFFFFFFFFFFFFD3FFF2FFFFFFFEFFFFF),
    .INIT_00(256'hE3E73A3FFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE885E3E283E4C1E2E2A2E2C343E3E2),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBFBEFFFFBDFFDF97FFDF5EFF),
    .INIT_03(256'h7DE8E1848401E1E323E3E363C3E3E3E2E287B5BFFFFFFF3FFFFFFFFFFFFFFFFF),
    .INIT_04(256'hBFFF3FFFFFFF7F5DBFFE1DFEFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hE2852F3DFE3FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7706E2E2E28285E263E3E3E2E3C483E2),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFF7F5FFFFFFFFFDEFF9F5FFF9F),
    .INIT_08(256'h94A8C3E1C3E26243E203E2E222A323E2A3632919FE3FDF3FFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFDEFFFF5F9F3F5F7FFFDFBEFF1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hA461A556FEFF7F5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD2F49E5E4A2E14482A3E2E262A323A3),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h7FFF754DE982E3E3E085E3A1A24303E2E2E3E8D49FFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFFFFFDFDFFFFF),
    .INIT_0F(256'h466481B6BFBFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD9F3F3F78CD65A12162E2E4E3A4E4C2),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFF3EFFFFBE1CEE020263C4E3E2E52923A060C2CC1C7F7EFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F7F9FBFDFDFBF),
    .INIT_14(256'hC50001224BD7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFEFEFEFF3605A0C000475BBFBE71),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFEFFDF3F7FFFBD0DE080E0855E9FDFFFF16400218114745EFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBF9F5F),
    .INIT_19(256'hFD6680602024FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFF5F9FDFFFDFFFFFFFFFFFDE3F7FBFFF38C52201A5FCFFDEFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h7F5F1F3FFFFEFFFEAB4160A1D1FFFFFE1D91E3406023B5FFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF),
    .INIT_1E(256'h9F9A054100A04BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFBFFFBF5E7C3BFA3BDCFFFEFEFEFF7E1F17C4002267BCFF1F),
    .INIT_20(256'h9F3FDFFFBFFFBE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hF95498DD7F1F9FBF3723C0E0620D9BFF3F9EA5C000A2C22F7FBF1E7F9FFEFF7E),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDFFF9F9FFF7E7DBA19F9F9FAFA),
    .INIT_23(256'hD9B624602180004290BAFF3EDFDFFFDFFF7EFF1EBFFFDF9FFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFF5F9FBFFFFFFE3B5AB99899F99838F8F9BB9A92DADC189CE400010023C9D6),
    .INIT_25(256'hFFFFFFFF3F3FBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hF8F9575617DA09F9774EE0C0004000763833F5A00000230180DAD79CFFDF1FFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFBFFF7EBB7919F8D8F8F8D857),
    .INIT_28(256'hAECFF998A9E0202088FA7A5AFDFFBFDFFF5F3F7F9FDFDF9FFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFF3F9FFFFBBAD9F8F8F7F7F7F8F8F6F7F9F8F87391FBF899F4CAC6E85498),
    .INIT_2A(256'h3F1F1F1F7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'h56FB36F7FA584659F8B7F8F9FA75FB56FBEA7858F9D896F7D9B8F9D9775BFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF9F7FDE39B9F8F8F8F79777B8F8),
    .INIT_2D(256'hF1E6A9747A99F9F7D77918C8395CF8775DFEFEDFDF1EFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hDF7EFF7F1FFD7739B7B8D8D87878B8B8D937F878775738A8F2D9F8F8F9FB16FB),
    .INIT_2F(256'h99D8979BFFFFFF3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hF897F9F7F95878B94CE5CAEC0FCE09C40E92B84B8B2E94D6B5EEC6F977783999),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFFFDFFFFE77F8D8B8B8B9D9F8F8F8),
    .INIT_32(256'h69F7F99677D8F8F6B85818F7F9F8F877F7F9589938F7FD3FFFFFFFFFFFFFFFFF),
    .INIT_33(256'h9FFFFF5EFFFFB7F8F8F8783878F7F7F7F8F8D8F977F7F8F7F898D7F93797F8F7),
    .INIT_34(256'hF09497F9F8F837D79F9EFFDF7EFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'h18B9B938187939F8389899B9987898B8C61AD8F7F7F897F8F858B8195AF8F20C),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F9FFFFE3B79F858F958F9B7F7D7),
    .INIT_37(256'h65FC97F7F8B6FAD97AF650AC0B0FF5D957F8F9F857B718B993FFDDFFFFDF7F5F),
    .INIT_38(256'hFFDF9F7FFFFF3D3BF91837F7F8B7F8F8F7F7F7B7F7F8F8F8F7F7F7F7F7F7D797),
    .INIT_39(256'hF9F9F8F7F7F8F899F870FFBDDF3FFF1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hF8F8F8F8F8F8D716F8F7F7F7F8F8F8F8C7D958F897189713298E75FAFAB836F7),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF9F1F9FFFFF1EDAB958F8F8F89878),
    .INIT_3C(256'h24F9FA77F8F9EF78B9B81838D7D6F7F9D7F7F7F8F8F8F8F7F8B9D2FF9F7FFEFF),
    .INIT_3D(256'hFFFFDF3F5F9FFFFFDD7CF99917F8F8F957B83879B9B99858B998785878F87837),
    .INIT_3E(256'hF8F878F81897F7F7F8767ADDBD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hF8F8D8985757F8F857F7F8F8F8785859AA74F9F956D7B6F998D8D898F8F9B877),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[18] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[19] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFD6557EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCFFFFDFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFECCC9FFFFFFFCEFFFFFFFFFFFFFFFFFFFFFFEDB9BDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFE732112359EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFE71000000028DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DFFFFEFFFEEDFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFAFFFFFEFFFFFCFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFA8FFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFF8000000000007F),
    .INIT_0A(256'hFFFFFFFD9FFFFFFFFFFFFFFFFFFFFFFFFE2000000000002BFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFD20100000000006FFFFFFFFFFFFFFFFFFFFFFFFFFAAFFFF),
    .INIT_0C(256'hFC30000000000003DFFFFFFFFFFFFFFFFFEFFFFFD8FFFFFFFFFFFFF8FFFFFFFF),
    .INIT_0D(256'h9FFFFFFFFFFFFFFFFEFFFFFECFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFCFFFFFFFF4CEE78FFFFFEDEFFFFFFFFFFFFFFFFFFFC20000000000001),
    .INIT_0F(256'hFEFFFDBFEFE7338FFFFFFFFFEEEDEFFFFC100000000000005FFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFEEEA66AAABEE5100000000000002EFFFFFFFFFFFFFFFFFFFFADFEFFFFD8),
    .INIT_11(256'hB3000000000000003EFFFFFFFFFFFFFFFFFFFBAEFFFFFF4FFF634EEFFF71003D),
    .INIT_12(256'h6FFFFFFFFFFFFFFFFFFBEFFFFEFFFDEFE00004CFFE30002CFFFEEFFFFFFFEFFE),
    .INIT_13(256'hFFCFFFFFFFFFFEDF7000019FFE20002CFFDAADFF88BFFFFFFF00000000000000),
    .INIT_14(256'h4000015FFE30001EFDCF9F8DFEBFFFFFFF70000000000003BFFFFFFFFFFFFFFF),
    .INIT_15(256'hCCFAE8FFF9EFFFFFFF61000000000005FFFFFFFFFFFFEFFFFBFFFFFFFFFFFF6F),
    .INIT_16(256'hFF1000000000005CFFFFFFFFFFFFFFFFDEFFFFFDDFFCDFEDB300003AFE20001A),
    .INIT_17(256'hFFFFFFFFFFFFFFFF6FFFFFC8FEDFFEFFFB610004CC30003E5C2D7FFF8DFFFFFF),
    .INIT_18(256'h4FFFF5BBEFFFFFFFFFD6100127E404FFE0B8FFB8EEFFFFFFF6100000222236BF),
    .INIT_19(256'hFFFB20100BFFFFEFFBEE500DFFFFFFFFB0000005BCCDEFFFFFFFFFFFFFFDFEFF),
    .INIT_1A(256'hFEDE17FFFFFFFFFD00001017FFFFFFFFFFFFFFFFFFDFEFDE3FFC4DCFFFFFFFEF),
    .INIT_1B(256'h00000005FFFFFFFFFFFFFFFFFEFFFFF9DB9ADFFFFFFFFFFFFFFF71000FFFFFEF),
    .INIT_1C(256'h6BFFFFFFFCFFFFF6FFEFFFFFFFFFFFFFFFFFD6000FFFFFFFFFFFFFFFFFFFFED0),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFB300FFFFFFFFFFFFFFFFFFFFB0000000002EFFFFDA6),
    .INIT_1E(256'hFFFFFF810BFFFFFFFFFFFFFFFFFF500000000001AFFC6221126BFFFFFFFFFFF6),
    .INIT_1F(256'hFFFFFFFFFFE40000000000004E6200000003BFFFDFFFFFF7FFFFFFFFFFFFFFFF),
    .INIT_20(256'h000000000100000000015BFDFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFC615EFFFFF),
    .INIT_21(256'h00006ADFFFFFFEEFFFFFFFFFFFFFFFFFFFFFFFFB20FFFFFFFFFFFFFFFE440000),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFE614FFFFFFFFFFFFFFFFFF7001000000000001000),
    .INIT_23(256'hFFFFFFFFB20AFFFFFFFFFFFFFFFFFFF1000000000000000000FFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFEFFFFEFF1000000000100065DDB6FFFFFFFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hD200000000000E9FFFFF7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF610BFFF),
    .INIT_26(256'hFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2009FFFFFFFFFFEB4BFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF61083DFFFFFFFFE71ACFFFF30000000113C4FF),
    .INIT_28(256'hFFFFFFFFFFC205F11AFFFEFA10FFAFFFF80000355001FEEFFFFFFFCFFFFFEFFF),
    .INIT_29(256'h000010184AFFFFFFF60241010003DEFFFFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hB41000000004DEFFFFFFFFEFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFEEFFF2005C),
    .INIT_2B(256'hFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFEFFFFFFFFD2201E216875DE6FFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFEFFFFEFFF9400000C7EFEEFAFFFFEB50001000000003EFFF),
    .INIT_2D(256'hFFEEFFE7221000007ABFEE8DD8500001000000000001F6FFFFFFFFFFFFFFFDFF),
    .INIT_2E(256'h07E755DC0000000000000022210077EFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'h132236ACA6330A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDDDFEC60001),
    .INIT_30(256'hFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFDDFFFFFFFB301059B94100000002),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFC9CDFF9ABEFE7000010100001335ACDDEFFFFFF632016),
    .INIT_32(256'hFEDDFBFF7DFE9FFFA0100001148BDDFFFFFFFFFFFFFDA767AFFFFFFFFFFBFFDF),
    .INIT_33(256'hE9001348DEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFF8FFDFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFEFFFFFBDFFADFDFFFFFFFFFFFFFFFFFFFCDF7FEBFFF8FFF),
    .INIT_35(256'hFFDFFFFF6FFF5FDFFFFFFFFFFFFFFFFFFEAFC8E4FFFF7EFFFF325DEEFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFB8D7EFBFFEDAFEFFFB5FEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hF8BBBFFBFFD5FFFFFFDEFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFDCFF5FDE),
    .INIT_38(256'hEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FF8EDFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFCFFFF4FF8FDFFFFFFFFFFFFFFFFFF8FFFFF5FFDDFFFF),
    .INIT_3A(256'hFFFFFFFFF4FFADCFFFFFFFFFFFFFFFFFFCFFFFFF99CFFEFFFFBFFFFEFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFBFDEFFFFFFFFCFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFDEFFFFFFFFFFFFFEEEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF1FFBCEF),
    .INIT_3D(256'hFEDFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC7FFBBFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFEACEFF9CFFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFEFFFF8FFFFFFFFFFFFFFFFFFFFCEFEFDFFFFFFFFFFEDFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFEF8FFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hCFFD7FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFF7BFEFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE5CEFFFFFFFFFEFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFEFFFEFEBDFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hEFEEFEFF9EFFFFFFFFCDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hEA5CFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDEADFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7103BFFFFB2115DFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFA11013CED810005BFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFF80003FFFF71011A9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hE31002FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2002DFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFF61019FFFF92001AFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFEDDDEFFFFFEFC1003EFFFC20006FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFDDEFFFFC20017EFFF200018FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hCB3010028DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEFFFFFFFFEAEFDF200014B),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFFFFFEF7EF900002EECC100002ECFFFFF),
    .INIT_54(256'hFFFFFFEEFFFFFFFFFFFFFDBFFFB535CFBBFE50007FEEFFFEFFFFFFFFFFFFFFFF),
    .INIT_55(256'hEFFFFF6EFFFFFEFFE8FFFFFFFFEEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'h847CFFFFFFF7FFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFF),
    .INIT_57(256'hFEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFFFFFFFFFFFFEF7CFFFFFEF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFF636798638AD778BCDA7FEFFF),
    .INIT_59(256'hFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFF8EFFFFFFEEFFFFFFFFFECBEFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFF5FFFFFFFFFFFFEB8ACFFFEEDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h4FFFFEFFFDB99BDFEFFFFFFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EFFFFEC8ADFFFFF),
    .INIT_5E(256'hFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFF4EFFFFAFFFFFFFFFFFFFFFFFFFAFFFEF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFF7CFFFFEFFFFFFFFFFFFFFFFFFEFFEFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hBAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCFFFEF),
    .INIT_61(256'hFFFFFFFFFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFCAEFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDDEEFFFFFFFFFEEEEC9FFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFEFFFEDDDDEEDDDEEEFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFDFEFFFFFFFFFFFFFFFEFFFFEFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFF9FFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFEBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFFFFFFFFFFFFFFFEBFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFEBFEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFEFFEECBCEFFFFFFCABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'h4569EFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE95223),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "4" *) 
(* C_COUNT_36K_BRAM = "3" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.14097 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_pic.mem" *) 
(* C_INIT_FILE_NAME = "rom_pic.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "6970" *) (* C_READ_DEPTH_B = "6970" *) (* C_READ_WIDTH_A = "24" *) 
(* C_READ_WIDTH_B = "24" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "6970" *) (* C_WRITE_DEPTH_B = "6970" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [23:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [23:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [23:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

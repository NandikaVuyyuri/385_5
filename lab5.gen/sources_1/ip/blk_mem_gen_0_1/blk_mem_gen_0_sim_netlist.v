// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Oct  2 18:25:31 2024
// Host        : AjaThinkPad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Alexandra/Documents/UIUC/ECE
//               385/lab5/lab5.gen/sources_1/ip/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
pMGR7MF/9KanxLxX/hq5S/RiAdhr0EWD2TlhVxbVHbIYY0jwj+KBTR6cQfT8rOUzBwddfRNQ6iI9
sYo6L2F4ipkp+ci7h9egVe8UsAaaEcdQG4Q8VkyjJbQ4DUvwGEMSp5Zuq5UF30Yd231PqV/rJ7pa
FnHyVMMk1DpiUXjgyBrbfd3XDgEnZqXtm/6pw4epHycbLhkImZt3ZVQOXLBYJMmHpRs8zU1G6+SB
KBZvncNLO4GvtfBSfRT4tQqfocU0dxuek53aWwVIZeRcKS906cc9WVdYW1bVLvrF1xyfDxmrWsB6
mpAcBzT6KkQQnXSZLn9DqQ80yOu8ciUsmDo4gtSIw82/s7tABB1J2dwin31cnAMuli5qkf4eWSj6
rkutio9ePrmitQD5GjuYhRxrhDL29a7plVlhgpuZR1VFPY8tfL1fg7HnDuVSnfRPuHq045H1bJTn
mrkbwwG9UlUzfY93jo+zMceDopNg9xyGnMZl3DzWZ8wE6RGoCZJl9Mv/Oh9xgvI5PJYpxZI5J3Wm
x13FOXB3OUq+iFOjrX7vRHyi1AlNe3TBriRTkSAfzH8YTfNQ5ZTbh0msyvfDL0jdob/z5UV5PWdy
UmD3xzzQoVCwv8fg0Vw0Bajx5iy4F67onLxilA2yXsNAoTlDrl0qsIW0cc83/++Kls7mBuS97e8q
5XYXRtR/FWUqyGf9ZLLF/9b48NpPjBhdPTKZfVRSJD11cTRqxXN+RVPMDuujm5gIw9SZCFrgcV5z
ROA/EAER+ewiBckKmKyzZVtGctYt0XNbp+NcYER7cAk8o0X8aWn335JeuzTI6dz8tsgZVIfD5rSL
0VUN62HJhsmoMUGS7oMegEIlP2W1iDpWQBzVzUpoLCMUJYwre6I/sybQJON4Vq4/gjPVyTBpfZ1V
DsWuh5GMVCMdTW/GnR6LAPU6PMNvDhDqGfVdiAeeuzUd666eb3aAfSWoUMKhJ0uKZGK8jDxplJnu
PediQE0UcpcNQQWtXvAF68K7G7WCpmDQJiRCRr5YFuoDtkf3PfTxIcP628YWZF8QoZqOXndcydhf
gutDWToo5QwF89SylLyGQIu9tOziGeCXZ1bOyAuqb87zoPz1hX/jsMu2FXGVglmUXvx5nrzmd1ln
Fk5vz+OMA2gPFnjFKfHSYiBBAGc1tNVmvmzLhz0ZTO+0maL59e7MEDCQ80rze+m4/FDunBjdLZG4
oRTZyLZ+YWfvgXjRGht9RXOZ7BZdn8Q0BwsppBujVR7c5H6lEQ7Sqd2oXPWzkRAW8Mz+vVuQpUMe
VG4ALegh1mAa7Fsp3ANrhpG+xHLEUZnQNXsQSxzGwOn9HnfGisckBp3+z00ZkewY8xYZcsF7/tTK
kPHQiegY3jqTxHnvaiKecayf/vd73RXvnBfKxzRaWA6d3+DZcL4hifgOv79LPORSKaBh1pZBs8Sn
A8Hf7td/WsL/ZVHKOlqLFu0Ljg3R/9KmT5MMPl6p1LFwvEsz1tIVYLt5wRuEVTs1AaNgBcABEiqM
lNApEBHc4RUO5cytiXS9ik2/VSuTVzU6dvQ68tD1b4EZgPto8UDVmJ79Wsc+1LmP1lAYyHCz2e15
NXsIZcTwGKgqlJ7k2t/Ya8OeqUyIY/EyZxfRw0QMqlYiiK/TaYvgaWLIruj9DuKf34IAxXbu5Da4
KU+wTvsInRBvC8Jf2C4wjXc8t/hhLeRk3Z8mHvl1NvKj261RHC9PD/q8YSA//B2zkocRQapJP1zU
05zqqVu7KDeRrOhaNHbi6n9p9MSOLJyUWnkaWLJYCVngAKAsvnuUaiG9r+b305Whfc8SHu756/Hl
MfN5v38VZF3lCczcbeBf0oBQF3hM/u9f2TVkK0Gu7maghm+vQa/rGfjx35zU6jNp77uqtM94kio/
Mi5UJwei1CJjmYmiy6iEmJ5kw79woLKuJOlQvDDZrSPT7U7h3D7o3j80nnvp94I2fgTPRe4nIMs4
b41gv44HGqAap/ehaRKNqJzrcYrpvfkQjzsEOcBBorjrwmv3Tcdspgjlfc25jE1zW3DZgxW6X4A4
Nni5dFcIBKB8/DgM8j6iQBbrlDJCYTcgxMM6rhhzNbzHtwD6KG51zJLKkqvuA/gRwVzliDgIr6pi
UdstkaSzXWm22WVWrNfljuoujeLr8oNMfkl4lacIp6prRZXD81Js4OFWD0x6W5kihdmyEteJq5sx
1saS5I70IS3jqHUVPc1bop3ZR9yA9WbRxGcuTxfhIowbCzuZs7B2Shv2jUyuxakuvE/jf/mGJeI+
hztvArbEf6UArGoxyDotbDEseW/wUcE8wPOBRCeu9nvVf/0jKknr6UjTKbv0ZC/4PAO3pjJTZNSD
KqzLcH9w47K0yLtjl1BwHzcOiy9urfk2vEhJKMnDDAHeA8zVcX0nK+qzlpn4s/Tohx0HLbtOu787
S3DRuh+RgM/gn/pO7aa9QaKsz3o2Xr1ItazyCdxOSWvqoRsbVhwIPHKD2fE2fp/XtrFl8pMr/jJC
zzmAmkCn7K+zdiBS6p/lVd5F7f2nAH/jq5+YDSIt9EEqjNtEEspxG7lVQ2ohzNi6VumaPvC/e37K
pSq3vHDNd0dZpuaUrOMJLg7DT3mDaHVZVbMQmEi3cSn3Pli9tbPH39kB/fUsDFn+2QD+WELqn3GQ
6DjOAmyNerm8ZAPdHhW0PLqPCencSHfP5mF4YUtw3jNEuOjXQxrEIGIo00bgw4KOUtPwFytTUxX7
Jqd3ixcG7/rDF5ppuPGxZBpy1+VMew38WFGg5rUX1e887uSkJLXZ4/WYldFDFjcX6XZOY+XdetTO
DRnWIc0kvpFZJr9kS/n0XI3E0Wb4teKH6k6Ffaj3M7VSUwZ93TITDFEb6IzyomZOasA6aROjtUci
4cbZjuc6AWkUwmuwdb4CQ9bI5uiwIBj+JfEsUL+nexIv3Md1XQMgFw1kSvJ+4JJE47CmW9pruXN6
5nv0JnX8UfPtp/JmUxvFNbLICe9wvoezLC4pU4w/KQzBNZnTPqO24NUf4QtgCyJo+G4y6wemgAxC
69iy0UWWcdluR7gVE8iqRYRLaGeDHQhZDMNTSPyzP3Xayaug6lr50keHrfMUe3BdPKSajEM9RE+T
qJYAN/L48kc3RaRKdM1YOC4MUIs/udgqzFWf2VNg+010WMTenAlCyEs34tX5pqjMzU5WemkGwxqs
6TLdoYoIGk4iKKmQLldvnoejlmT9Q1XeAZ3kmX8jViqozsu0TVhI+cjx2pILhx3FbsW4ZVbfWVvl
9xiu2vXHTUSON1jrb1IIv7fyOGU8poa07lMQSl+qHzahb9ctgNEX9NoCsrQcbMChD97z2l/tQ0oW
LFAezm6hyo0+62j2qSovUW6+myl26whIdQaWzB/Py0etVbuAxRyGjecwUPBhuW3QopgMfQ89Lut6
FWIUOiVWAgNHjaqLSqtulGSz1FppvDsGahEUOG60wPYF2x0dWSGGVPAWUiE11vVyr3u+Oa2BbUpW
7sqNJDi07ycGK41lRZD64RRtl6kPoYm43NE/7Dhh/q4DmS+Wka6GS79wj0yri1Cnxc8iIicYDs3o
uhe6dnEvGV8BrP0eyt1p1BtzRp85lSdyhyPJu00FtpUtvW6L+DrF0ZtF6Ua9Yu4a4ZahWxPYdLFS
9xZTV0izQpaI+mOOnPftrItLoyso/tmF5WPU4N7TYqzfwG0mtHS4y02E8LnnTIoksIeEAhcaqtHs
g2SrFq9dYxF5sdOLIdA8Y3R9SRPFsPUAG9K2fAgECucKZNf/WzLPE1CFD5B/G7wHY+L1jKNmLRxi
csdlqOmhzdWbISMaHnQKu07XPjvwWmuy0LK0XZx5cismLTM2LJ+fAqJuf7s5Ai6uvuC37d9vMfpC
EU/mf/IWlzNWHnDU8us0gGDtHlbzbHA7/oLlhudJlYGw94wJBrJiL663eGa9X3lGEQP3j5O/+GPn
1cZIQsaoSu4va3AaUkx7SRb8qwdSJmnWK2jxgRre7AmE7/jPRZwf8ewXQp+pydAZM6OxEUndymOE
Zuiz+AWan4BxC6JVWndUc54aBVyVGJksi+cGO0mhbBVmevG2miFgRYdIiDHdrX+4DplCc+gfU9oy
PKY2xJihgYExUXhfYXfXkBiftvUwmLpOFQVyWsNJTCh6wtU0rLLuw1ddKdo4mku5462CaiMUahsP
ok0ySIIAaz/3Rr2wP6848O1WJSyQQee13V/6NEdEQB0r52D1AUs21FOW1YixTHkve8lijHi9yPGR
9icRtBw8dqooxX+QBDvwm9rrRbP5PM7wzbOlCcbXgzHitgu6LeuBpuL4uWO/9I4sEanM47j+J3W0
P/QRx6ooPo/OgPxQaylFhlKSKYIJHDhFxpYOkAUfJbur0KXHsFm8E134BAg/K8ZtYF19yQbK+vg7
U9OAbwS5/2f9hW5psANWg5zoJ+Qhu4eUCynNvKdtfVG3rJIEl2o+eNgj6z3uGw1s51ge2EjNlAHc
3h0CV5syukA6pd9TTVG/FQNiIjurxcSCKQLmyGQ0Y+8peAuHqkb7L1LCGBHFgg7eIyAY7vTUg73D
gF33oSdK8A7O0AoFww6Ab62P3AdCg15j18dqMzbcmefYt3DoZyKpXQ32jky9HV3OEhNCg9NGX749
BdtBMA0L8M8NiQ2BrrCcQWI8J115yBygKy8hYk1SEzpXoI4Sxp2kK/AWfwHAOPwczcySNj+KnMc0
mhBP5sHBujzIjjpo1gYjATUU/EWu5RUzWWv7k6L3NbMMHyPgaHakRWBSSJGd4YVtFQ+IFDfiEWlS
wOm9mTOhwh8PvzeB/2pmuE5PZwET49IeCoU/oDAgxELoFsATdozxytRrVY/ejNKudRmoNb7m5Ugb
zr5lK49LQ67fTP17wE413IRgESHil/XmRBG4HBFnBIfpIsyJY7gAiWjYfP30PmEacBVinzlEwb2G
5MP3pbiFiiNYLgaG3S9KPXgvwbPqWvYZ5hg80CEgTkTh44eAyrq//WIPtxTs0u08ICOtdTyRAGZQ
NFQ7CuoTWTb3ZP8e8O822LfmVKM2WVJYQosKQemiZ7frlStoIC75su01mbe5yqs9y5Sjyqu4J5qv
tA5lg0WHR/IIYrNgdXy+KMHSXMfnTi1AKzFBB0veg3muie2VfmUtAKhw+fW8TotyaoBU7CJPI0pa
Ci59eGWX2XJXpzogFeMVx04Jm42yEviuj+pz33O1UgfapA9drzGpPtiOs+jqO8EystEPH64Ua7oC
K3s1GP3wzNEOzg0YQEXYTgRB5CBzHWLqLfdNwhvAln5WwnrQE9ByBg5fHMjqMD06LmnBHkKOkU3r
ONZyiBXYwCPO4o5Amh4R99vgMNDFIpgNY1Kk4tOqsGSMsOarG9i9GHep1KOdx/tLHEvY0W8AQTze
oiZDJZcLr4MIIyfyMW4b6A4utO7R5+heZT1YF4E3KABmymwUQyVaoJfdaIAzK+spWGJEKtkHzJ8T
YQ+xvwFtr8xhVHv2YNx9Cg8i2eqHIrrfXFJg0alJV56hQsFfxSCrBIjXCF04zVBDf2PC+UoqkbEm
rTL6QY4b5+QN2HmoIRGE92HM5htwGktxTEq3PFxO2tEIkcwrWEPOdto+t804lSimPDCmjdYVQzsi
6mNXbUuJv6xWb/1DXEXDi6A5qaFbHNYIuesR0PKFsAHE1Hr31XcMQmB2Um65e1SIW+OrRnkYl8WB
MkhPfjxxpXDqz1/FBAU2lLZbvsf3hZGGzgQ5vCNp31iSW+33O6Va+/V92wvs2SwgxID1la7elMJN
v1olQh1xSq/PqGRk2okQOnkpOm1kaVdlIRMF2cTSeiHdZjl1A0O/lh8cyq8wnCBLuBfAxTIA93OG
iiP0LsYnhbyvbm0NINOmAHdLeiOPVfnQ1V0nM0+IQMX+LIJLTV2kHpO26MdnZAuECZDgFSdAODyc
RQM2d8bBfq8RMNSdkkExtmPKrf+ivP6Y3YTLUrFK6cWWrF/7EWtVSAlmVtjC3vNu8vDBZCdGB1c5
TOkly6xdflArMrQ7OmEUcrEXtCVBM/8dZAQ0OgKIMO3klz120J6XanbAuxH1/CfqFPfXHIDBI7WL
n03eyMkCeU9GTHjgTydpl78anq2v6YjSypxBNnb91frKlbi3DaoSFmW44toln5kEs149srl3zL/p
DifIyZknIWTf5xlDksayx8JAlE/Jfon8C4xe5TTeDdi517bMsMqfZArdX+66iO4jMnFEDawgS6h4
e3+npuEOIGgK3Ub6KIgTVdPHJ83mfWRicD05aPlyy25wVO420Adfl+z4t8sZK/AL+TM553/ZPKy9
/i1mmR1eM6Pnf4W/yKBaT7TwFUbZENBBwbBXWReAMqEe+HdftmwOaOHEZ6DyustWe0bPnWltN+cz
J/4zXlCCLWG+bcdu+qRuPFWVW3HISWagzV8BJEINtVOhSQMdp4A2ocuZRxiBzlQJuVM6YKS7ive/
FkYPnkWN9auFJyiFe0YCu6YePA6g+YQ2LBukkt3sYK+/jpfnvk49OG/+gDljgn5sYi+t8hwITp6S
bV/cKHICKfkVi2lBgnQ7T8N3c90OvA2U8ReQ6hdkvw8Wt3wHKWkHy3h5hMjKybX7/KZFJvL03j3D
p0J+uJxQpSSQ4nDlzDkqAqE5UBPTOVaD0NSpgZh/hsGb6PW1kSMA3MuH5pjMXeDLvkQ42sC4ZVHV
D05ryW5lVi8eUlV5ePimErGCX1umI53ibOQPMRxyjIdagQNK/9eNjyGbRXwDbkh76QniSGGOe+Ob
obE9K+I7zOh151L+sNQ50RTZAnJR+aha1kIXwPg3Z/FMh3t+oNXXsSKL3IcDhpsJuch1j3dESUXW
cx0nvP/Tyv6B6qIPB1LukRYD1dV54MbWwqQ7uZgkkihpTp25ygHHJVNaW2+4UKR5dwS9JXYGK9Mi
kf0b/8v23wlTBhhBC+CSW4q8GV+gYK/oWO2a+0KGMSJgseu/v/1exvZEfPqv3US/ILd/W9tKqJNK
Uon2+WnfAf0BaIhbh6HIwWNMn0C4AGLZ8USqsnsKEcrZbAFjOLxxock8Vf1uB+2wyw47MkitPp/8
xNix7FQq1Gd/c7dnUuRQ7+ckukeN04EQfYCMDSa/U1D3rKOJ2T4nMEBF3l6JwmEgtxD9P1PjaVu4
SlSzIVdLpLhC1ciLWo7ypodFR0ldV+UjxLi1SQKujsicYPKs00fnX3278nCqoWeadHAfUXeWe0Zd
dk07PjyhAophU3+TyUe1s/d9tBVxbh/8nADzJjmUCw3kFWMzF0j+p7W0QOR+saFBxB0ILn7PbhFO
Qo3sPAZJjPU+qfsGpYSrDY2TPaEwhZ+w1vW9QDwOfRvadJ0cc2wCB+g5hwgnfW7nf5CKsP3h6A+P
Suqreu5vi5zB6yEeZ2RPn8wLlasXdIrIuDubRnmKpkwB45AHhQsVUv5s21+W3hKvxCBM4vhEBQQ/
uzIBJf47vHmIx1VNSYz8cNDlWikB4EbG+msc2VEWDWeQ/qAXgAEqTgEEyjS54mtlr1f0ikGlpIUa
/zzPnApthgmSX3a+MXWSHMarmLcPEOIBe0FCuvCrqkd4DrC87Ja5wwEnzz8+KHcG20llbB2SqOLC
xiVSU8kt+I+GF0p01ou4VcgSreWr5UTHeIyxTwdojQf7zvem2jHefsUROD1VXPG7R1MTEHYKOklv
CkbaneyfsT22Sx3C84B2OMHTzmDYyu/LhySs+t7jvSIS/xpfcihKMKv2cqYTf/r7MYCuoQT1W8KU
XIy4qw685NVQImkv2W8RUUA+wZbpMdXKVT/PAX9QtG9n89OFcsP+9uZIddcfZPSy4bAgKK67elCi
qJmyomgbvqbtvZphR6vfQ++c5FHc/W9UqV7XyGXchUlfo18Q9xCRT6FLsYPTcsEbNXNjwnSm24fw
bWnWqs9ypwJQTKl8GqAG+3TpN9WbC23qgZ9SSiAONICTJLFzNqY1Zw0FrnsZvyTQpy9GF/UBrbud
RWyAYRYvhwb6NVj+fbLE5oHkfLEFhSur/JShfvbcuNJN7ezIGli4TCu4/dNHfP+leKTWg3GtPYqq
DnQxFv9c7xNkcAgdH9ak6NqQM3gs4BaPjeHIKdOLI2KDdbz9jlKOuBvu4JWgm38qG0Aooc1hpPhZ
HpY1NOXLJTxPqfiDeo52swkWezHTdT5a01VQOIV+c/JdFqsA/Q9pKC9KV4xQxrpaQ7lnPuJh8fjQ
R32vM0YDDq9OTVgubAdZcueG6jwtnMOqkUiK21B1WllQrwrKOpJnTpnIwxdhJAWqBgyCdd5ogfol
KhM5f7DHE0ujcwpqDXT5IEiElI48Fyd5qlGZvKL3MzvVxlSCog6Fj2yyPW26RukmS0PaMzQyNCmq
evYaRq+IxVIH1YDTAYbqut1qp2R5QoPWy4MtsZEqKdUtWy8X2cuhv4xUJ4eB5d0L0JL3pd4p9vMg
KFwK/NpiXkj+88UZlH6aV5BzMwcBt5C0ia688RUqyYRE0X4I5xJnwdUeCCLwI06g0piLkq7Nh8FZ
Dgzz8KOIX+RFBqnBE3eHWngwa7WeWp3TvYfoy7fKoYFMNJxdzGb6EmvlCmXdS/QkKGeldJQ48SB+
IQUs8zZlX/LXsVIVbjG2CseViQpRKApTFVQc8+h4M2vA1RNJovZn4jvlmIiLsU+uihQEgwy/MtLQ
ZXeo2e3DoSLD2+HRzru1HUZnJd8Bh8T5kHbPpefI8c4IA0nHIjvL04UnGIQZnXqUpDmRWu8Ddis9
t+/1bNUIYXwvKVVe9dTsAqZEmSdN5vr75Is0eu3ocp06ZinWX38BFl5oV1hOIcPaGDW95AvG5WXP
E/i7il2N6DOhMj3PLUA7sBz6wDi13RN4PLIIQ3cX3rC3XEwJjFQyGOEekmGyM6zTSePSRyD3cojQ
s7UFnZ4nui/TAohJ0T/3wLX0YWZLZSOY1LDPKetUPMUUMxELWSWyrIWAHkcOCKXR4clB/D8N4ZR4
qpDas/v9M/aUr/wbgdCrhph9pW0Sj3nmtWu850i5GGrLh9qK7Sr2m8W6BwLVu20JzW2kJaPPxVJa
E2q+nnW4Qrt48qUL5jAQ+ZPveIKr2+wrcaQ7gfHB2B6QQ8up91HSxlEQ7YbqQLw6LsEToI+FiG0D
EYJ8ZJnp/RJDOIfu6bvpC4y8LT94zPX/91lIyYJPhtf8y2JyUNjF7jFxwsU5F76zamODHi5H49ih
iguXO/ZW+VzSFTnles+vXeHftmK74HMSPDYqepPjbLhqxm+54VZ13Nm2UCQxirwWiflfa4xZDvlC
p4EQjAXQ2z6c3JItEPn4rLfB3QQWQhB3gZlAyHiRVvZrHKtmZXnAzuoKflKLes+b+EeXF1G9h1lV
Wer1dKle/RuAniKcPsbA67T13B8QzBMxtBiKd6zx4JnnsVGAsTJxcyCzD9xasFQNcggBKiKNjAZj
pGafj0w70g8L6Zqn8KXD++ndEtmnqVd1mFub3XcMKS/bghAYSU3uCpoMMIXul7YBFUzIyzJcDrw2
C8XKoU2BRHAwvWzpjz1kzo4tX/FT2pqHt2VFf/csGa9sfBCYLrISKmbIXBhIxstwM2yIzT51S/uX
wF5Bbgf8CFQS0sVOcN2J4JnR8jevLfSvoaLHFTEaO2JDBOQqe3zIWiov7NKmCqZSy0F+nBJSAjUw
1lF7wsrDAKDcqkDmKYg/BMDOBZhBsbQaZ0M+L2YS9+mpIQggy+2EgjxrI1myZj1JvBWBl59yAEu9
hItoxB6+jXpRJnWbmDhBP2G+qgzd2gu/COLycWp09zQ9wxHbb89Zmw3lefvOLV541F8D285Hz39f
T+aUYR7ZEbVYmcK0AR6nKrFk6MIJWwMGGARn6oX3KBfQANeR8fVcVlfGYRquPROLZzfstaNP6yiN
nyLK0WaX5XyCLf8aOsoESqKFB7Ti13oQWoECK3hZkZ2RdNEY/b5ovMPlmE5PNfwYcKCUv+wUdOLa
qzmO7Lgawalpg5xVfAw3Mmu2cbk8RKrBiZ7f7B3bCWVy6yvhuUpReUGG2ea3IZx2sDMj01Pn3SeC
Fe57uPEXAXiLKFExOrUoXhArErBmx1teQbzabAzJGz6VjZi99N/PwcNrB9Bk+0iql00QsjWH+aJl
OaT3PNbfdlfhZx3FoT/9/1bnE6h0mNZtJeCkY5F+XrALECCc/PJJOKN9rafWS8LDz5Wws5is+3DR
6Az5bQg7tuB3I1yLgveJtQg2+gdZTcc2uH/jybGh76vHM9phX2kKAuz2L3jhXGb4MBgJ+Tg7OlN9
oeXxt88hYnPHXo9PFEsR4+u8NrWk3p8279uum1EntO3lEe6d5Lrs1sdlvS54Hqg2k+p8PkAp1xF/
GLTK7WzWK2UbdrTIiITQk13Eof9uS/UtTqmI2d35iTJOm/HCwmSM1wiCc4jp8gZpoB2ghhFGKij5
eEwwrwt5cA5ERwiFLJil6vP4DKZC/waMeJIlcSj3aE8gPsAhRZ5B20OIVziyRzZFjswbwRpJA0F6
EbxjQ4S2DgJ6wYLgqhxQM2G9eByuaXSMfNsB3vnjurCx/fiWR5Z8FOAAzJRbkxDrdKlQWP9vZYv/
gXuVwlf4WDhR1kjj4Ye6PyDN0L4KDvFuQlsFxlL2E85FXQNmPrnnr6Q3Cf3z3IIfopQaog16SXeH
/Ui3bt7nUeB4fRIlIG32QgIVAikOM7aTt2ozSVkQBruF+BOBlGa+FYBVMIHbKZbM4UDU3r+ESXu8
hnrWWwKi7bpGhSe+Xp+h+44uMIZeikpI/qEb4JJt0D1N+l2xLI+zfSjx6IPFfndDzzt92ZSIeu9C
jO099IOYiWE1Gsrr1SWgfWx4nW29Es3qyllUT18sDl/QA1scDIviu7Igmp2x6S9GWdtZUiLOLc71
ydzlaXPK3foilrWVuCt+nD9j/EqbkHVPe2i+0Mc8K5t0TmBTKEWNvK6bmX8m5amyvip+HJ4Kt6km
ipcOuV3EdWcqZmUOsOjYakCF8Twc4JCm7Q0PF34FI6CC046v3R/dTk1tvpJBMR5IKUnBjQIqGIrN
9QCUHlMCHO6UviWyi/HJOtawv8Bquiac39dUpUVzIX/zrLZHzZW3+MiBbCwX4liP5ehA8yg5WBmg
vXXCDJE3r5Lrc3Id8EASwLHa6zGfPvYvQ0EwHDBBCJu4QqKAYzGWEE1quGvQkLc+oEe7ExQckJFo
sVfqb6tu8UJsiCV5SiQnfy4b683ANu//TI38AT5aLHLSjguMBimF3ZhqUQhnaKjhVVM7C0KPf7zS
ruVfxwBMOSMntmJGcG4/I7tXnjk+gAa2OGiqfIgmE646PVZQpXDC3C8KIKZ9heD8y9JhbxvWrms6
Ws2labxyK89mSk4AVewokzYEpLQHc9t93pTFFUk9pwBWqR+aly8DALU1jO7rzj9KggSSEHTeKTn5
c9o56IpELrH3Ea4WAmmbtxmMVfh04bT2Qq1zGJU68TRrsj5/RiZH2gjvVF5NGTUQuVzJz990BXDb
lUKcdWwagaAmOC6FYu9hL6kAvOOPwjDjFTaCdlefFqRderUnByCt1r/ulb3rfhtpggrfut2JQWGf
l7dfNn7uYk5jw/Obp6Plyp6ySfUuQqPdPN/TH3LLpcxPoT2AvvMTvzg2GVOPdFpYpnG7W3pXgIuo
0A7Jio+q1oYF8BtMrzpZTLhsHMD1L5gGc1sfyxXvbviNwd+laOC0VSH8g5KOG015ZOcYjy6T1YR9
BXv+7fC9wchk4o2IKpyA3mFtdH06XkDpHsftxCWoaeG0VqDxzi+FelDelS8bBlmjKkBvZJUP5usp
pGgM0rNRQ7AkgSUTD4/V6OUiRsQ/qTSAr3q0oHrSqLWo9LYwoL29iN//sVsR6FwwN5OzpVcx/OUc
dhSAwFLTj4EqQ1LyTspcwA+01LZZfx/FHRli6Yz0+9kAA47f6iU5gEp8f6WBPr6N6mCp/wQLM0Xk
wTqaXkxxIHjNtCouxLkcPioc1boDRYAn0RVJmAUikbQDcc9DCfPqRquJTjacX34gKhvV/iHdU0Kc
rkvERED4C2KMAtFBTgoWSu4VEkc6lvHu1gRyAAgsT2ijlwcWh1IP21RRzHD5/O8brq5heS1ZOKNs
tgMuzRw0artFzHfDJ9kkvq2oJ3fqHejVZ7v+ax/sGzuCYSMi64PyLMQt6akZbVOlWIABK3P0atEJ
HrVULY8b7xqysIQmv9OTwDbxy4OqvJNyOYlKOTHPe3FqD+So8jp2UGSkLMvENVKpLmgL1d4FK0ak
UqhTVI/AP7WbKXUiEAC4iRTCya6VLdcGXpyeI3gFUBB/SKXXFD0Uh/a0ZKBVyVzo2cRRcGkxRxqD
N+AxhPVuHvFQgg5A4XIRK7sPlACEotK7gFA2b7UkjYJjq342cP/0xVg8o4NLR+/IK0/oHuba9p1R
32YIYRzAIA6I4sdCnlCG05xD9wETIlZM+zXI9cAL37NJZqt0STI2Sr4aVyPbd94IZMk+CtZqNLxG
w2blMp+ybUgxiM6iP2xkV8XZ1tqjTAiKMk30t7ndK565i0EY8M1fZ+PMuCtQcXRw4qcaTT52rF1Y
AGMLt0ty80T9AiHCjyyhm9KndNu11AesDUm7Sn/4nUQsGjE/sYLBc5SZ2Qjk0aEnrTsBrBOMuJSC
VSsm5nW02eCOwSUHl5t91bKzvFzaJswA2/SDCEixa1mgKtZxSpCkqo+OuAtNclxCW8p6j+J3EXOg
0+qxswKZ9RpRlQfrkF6Pkd2k5PcTGpQr6A5cWJTwIAFcMXT4F2hQ+9lz4ZiafOPhiAnhyTiNZ9b8
9G+YXJ7j2qx4AE7RPuOmTj0dTBdCyhywn9VIJ2OHa6vGsIaEGsngcmaZnSALQ3GWzvvMUjzC0Zdq
NBp3S7K3s0k2PMokkq7OITn5LE3PTw5rUGXM+Q5x/ie3d66uWVS9n2m+mhoJF5WHi/YSASytQawj
bI2OV8uXzMvUqalM//Optj+BPhw6V47K63Ul1RRZKjEiJBnXpZH4KTn6/hxfVkygmB0xLCS7INay
LPxNXmVdZ/eQzjbYr0FbSynqOdgPvgldTCYMZOoDOhp/ItifpSYDILqXEKl2t+1fkptcvruCZ6Hf
5kqag1xi7gFBoV9BXFfJ5qxniy3Nn0tEunlQrwvWKzKxbOxQgS0grXIStXKt/aCriGPy4BNtEKGv
R5GL7UQ0uc+oNFEur30fK8h+LxPPkookLkn82Kdh2PrElylG0+CBIpM2Vec9g6Ze5lrTb8lLAu9z
/Uv/DHvpkpWEvjAKzg9Tnd6GhjNsXpbx0mKY1mWVmffRtcuvfgmeMViO6d6rGZQXut8tzdPNpFO/
Og2Aj6oplJxMD6MQt/Rw8gW4J16HXODJYP6apv5pty84lEMlFecL2qJv4cdSihRI/WQbBbMALpkD
68QQ1AbqU8hpvJFVrB0Yw1gTg745rNkrmFoPmb+wMxipL281OVIDNfqfBJ+/TYguhoe2yR12OH4a
hy775WJGboSRGnxUyCOX3Uc88KGpSyJ05ZEsbujgZtQGCSajrC2HLzP85V3NDHuhO5OEyb0WkIXa
bAY+IdSXdq8MdV4jWOwIfKgOSd+5cRmQ/L5LpWf/FY9H3ootDL+l9hFlYf7P2JIT5MEOal6Kw0Kh
fEf2VSXZtI0RGlhJCcrh38wlEsoQITVhaRRXRXqGfy1RgtMpMHDWLNyATyxz8z+49A2myLX25UHK
iA8MEg36Jqbptv/wSSMLHw1AIhrWGXX/oqmG1mAlltPlQDZOfszFOeLEPZ2dLv8ewpIr9WMU5jEk
s+MKRsx2BxQ8mW07oVtHO45c+EC2RBJl4d77NCs/qALVPDi0WLv5ZZTk9BhuQvSrzRcJ+3lVLWiN
VEbXMOxI0iluMAchLbt3Hkli90I7sfAVQk00SHLNaNwvJQiriv/pbp8ty7+1YbZZmDg1FebLC5fk
b+qI5+g+MADnJPDGeyxgy6AyR/ARp8rdY/t9iFWViTzxq3sD2hZPuFCBbeicqeKWBgVKSMZvUx3Z
ePt3gWlQ3af4hr3Cht4/ox/p6XXtntMK+aOuPx4TZSNGbAaAjqItM3tUHxpuOuSDunLZ3cmikI30
IuN8NRp5e613JEOTRiLqQAfr2IuulFKmBC28oFYusmlb/FHQHCKGqaqQGEbfEesviS5PlVUF71Qb
n6NNd9nrNNZJblnKtCd0bFxFIUSYgFX4PtlKlJl22Yg43NHRgrVr+g72E+iPE5ymKZW5yEiAQ5HK
Zu27jZexypTPCozMozXXF96FXlf12VTR19yeZWHo5pvYTAKWRGQ5rz3t6vDcUnyn0ck7BJK0Irec
qPkyjR5V073MaCuAJrQLnMPCZCJ+r2ARR+IYg5qsv0fmV1fL/Pwapx7B8B5gzel6fH4D9dSOGp5t
HWsoM7PvFglqqy2btLInRVYo/IWqtSsbdAraWZCzwLU5I202QVGAC2Lc2gMtEM17GKHxoZvafh8h
Bg9gIdxa98e0tb+dc2NOwoop/AzASzMd+04l3dFDZMJbXVBiV4PszS3m0stoIJZqPWYHQpx9f4fU
kaiLEFukfs/JGg5wd9CJWkzN4o/JgRcjb7kykpx86WBWq2AZzX9XVY6voRE7xXytdzh0iAcYVc9K
9XXBBQYa8280YjrwqzTpb+zSKa9vnbkp45o4ZnxHJPGE5CW8Es4GcUMiaGBolW4aEif8GDLem9JO
GRluf5ZBsZHp2a9xncXdTSFZ6j1KBwYZsom7RMryo6kOJ7pi86kegZ9bM3GewxeRRY9255Y2KgQw
JO8d+AaZZF141u3eD+X1Ym2riK6BZyI1TFixEzWOqO8wpBIgdnu5v9ZT6moQk8/YrnQuX4mZYDSA
bEmHotMR9J/kEAOSUg8J6wbpIONaOydNf75ehfvlITuHsS3NFssPo7EP6k5e6cwP2jkVBxGnz7W4
xfcH4coGBxzUBYleA4QQaC5L8BY5I0qDgI8RD8cNDGzGTsFkYzIm/tkrAghsHz8+NncZoYwCyJS1
1wr1uZUY0xZ7JCxxV7epS6PhgZ7oXpkr+v5LcZvURt4+XljVrmwDK9DnfGM+5PboQuEnvO9P44pW
gU31DUQFEGbbZX3UpyYHjPcg6wcDn4JKJpdyyOoclWoNMRfwyqmLDxCboBXks8/in2rbLk1u1UXM
Fv+1UymVIM9BY2r24rudGS+H7gEIZG7DymmmkVjRjwknESs0h1Ya6GiH12FVSffNyhfD2df0aEuH
aCLTg9L6FedYbq/gm13VSu1YxsyYps3YoIdzKnQErF2igz0QJwPpn6zUOU/pJZ+/gmYx5ACDk6pJ
Ke7fcBfl4mnbfSWMviHzVvhjsKOH9hcOoiGq4gHKmplgsY5y3aKAR93Grtmc3ZvwbU3M+QJcMGJJ
b3zXtGFunDAiTaD0EuW8MjIYd9k69/uwskcUY+/56M1xQ/1d7rPdgDK/6H+gq5P1Y3rFj8o7y2wA
Rpw/jqJxHaBnF76CSZlbcHiv9LYQ/GU/tXu+gYfCBnUvqY9mQHOrc40+qSoClP7BrtTat0pPbdjY
xQWM4rhYs6KGnb8B7xNRP7Q9hnY9CIhvImFRE+8Uu01F46tuSsHvMFkVWsEa/K7PqlIOSzUDh9mg
jwEavK4BVwbp395tbnROCjtmsd1Hh3z+Z6LBTdEwKqdFSq3R76PRafo3SZ3BAerPoD1bqIw3L+mu
Q0iPqw1lmefl9knNBHquEiWERLLEs48Kg0xGJuKsAjx7NQfaXZ8Lssi3QuyBsqANzc5tBD59GEcm
/jZLS6ZL9bPP23Ak0BobUSsErtWI8duY4IllBSOZzUi3J9ZgORf3qQnDH4ZVAG7zdUF0VWGZ802W
ZqESU6krm8/6CSWAe9nw1otJeyejr0UJsSSOdyNz2ZS8V5j9KstcJAD/7lcXsG9HMh0T03yahVc/
qVkP6uGe+KPH6wdOmoqL8MMNXbH94FcdhqYZBwGmcFixfDeD1eWxyJOgrZMJaBMaiByHpJqIpaTK
6EQr9k9/4VlJdrbbLQLEfOF9URtjN5im+Jvyu7F+6apYmSFAe+j6DSlsgdD50agt6vbQ0eGRuP2V
V93ibHwEL+lbVeA7wMDYBg6aZfP39BNLKqPK93XmYGsYuAqOKkY6Yvr2WzxfrBRKhcUhP9YOo5E1
wqPEzV2DyuhXQjyFGAZLlumXIcQKhM/zjWuykEMKn3UrYA3RRZlEmerHl14oAmqdU7t6z0218gP4
iGqL2aJcafUXSre/zX8IvXJ1RaqMEeNArB0GKSUjROpkHufp6B41fc0kH1RR4DAUlAWkOV+gDnVw
AWt3dcniqLltAuEffyJe0wO2miRIgBkzIDpZRxLqTUYb7+3P+V0K90zhkrCmwFrjb4Gfx9lZhzk4
hDjpH9wMs+4ySZ+9xanucw8SJHpj3N8bch+3OREaqZ6G8yFjRClonCKMzHzat8CUCtG05uYG5p1i
5jrpPJwUu+XVw75e74nmuAUSUsK8utboJVu275wFAF32/5033h9p2snMYfEi9MOtKXIg9dA/z9Ot
Nx6VTXUJlh8L1fSPIU2Z0GTP5CikvhzYJvSopRWcESkcXlVGvgX4oyNJodY84mqYro5p6LzbGjyJ
fDsHBmeY9IZ+fbiCRqbtRcqhQMPk/F6I9VB43+888Z3ifEFVtr8ENnL8u43wWVbZgl5YuE789r88
Np6WklRwxrXr6EdiQ1kOs4+kTn4I+qOJ6QccRzPx+5TA3FcsJAiMhYaORSkRRzzx8FTPlD2arM23
rLlxxn5J2j916EKvdsWiE+oRFtrB9C+WpYJCRtZcRa3d48QDG1BRhXdWGrScAKgC7qj/aAy9P6o4
4EGfnhQmLh4flZXUkc6sAfaoD8ROXqqL0+rJmzLRKgeOXCh7JQX2DtCP6PChoh/XLxsgSC7m7hb+
xzupJm9ZQlHsKuTc8SdHzNNSn03rZeIMynVkYakQpLNqAditmLbvW5gQaRFkynuyDPwGEA/E1q6u
vSUaGEFGU82sMBTJ9xxirZ90QLVxOlFgYeQxI09+bvBjUixztaHgSbCOXleg9lrdpPSejAuquXYT
OIxx0JrD5MUFqWlZ5DGU4jcUQl/qGkFrYFYDQtyCHjPaopeGLMhjPgdjpSfWl1CLTnyEaGQaj6vn
MF0RNMT6thq0GJJloLmQ1REFiJAdjbeiNMKexNmKiqi+MrWZJaOvZmrO+W5xbQXxTlNTe/KXhKjs
AD5XrWGfNu797Wy6eATVqL3e3bpWbXZlcFRVKOoOSBb/6wmmKekXEcQxNd/NB34jft8JmumDdycr
FWqFELtnolByuPP2z1MEiPcsdN61y37CwhjggmfausqBhDKJf5NHKqXtUCZVJ5OYSA+9gqLZ7/Ca
kqZHyFnGZVwKdwCpDEVoRUCyWBoeEBPy0450e6mP9nS663rcqItMdzh4Fbx0lxCI8oIJ4I/KZaPF
m9AKZ8HiqShNf2LLKgOPnFXpyfRgCqJjXJE3fYoHjstvqIuMkI62P3zk+N5P8uB9GE7KKf/acIJG
5PZbUFHmPqYsGQ279E8lL7iFrK18McRtnW6STM6DAdmFETBCW2bRMmLkru6CxT/HKhupvmAgKdLV
lzTL8HmZ4zNi2N6Mzqjbizflm4qeS7LmI5+0nZKluA1vJgW0Od9mX784uI930r3lfDODxqKYIOIw
VkMvp6EsqJAB+bYvU8nDKHt2icUJidSC9Mcq3UbZ1slTRQgxWnN4RC2VN0GcLJSzARsrXAH/oiTs
6PpNjJXKZ+cictWFlvFfKceDAGGSGC8KFUHhVbkVYpk8tQHayxRj5u+//X9obAajcLccqUz+72zh
Py9+zkmpYsIeejDTam00E1eDqfF8ei9uieegZiV1jhuEelY16Fji4shjDPDGlLRItEcYOritlh64
eCLFp1NfImNzXTJpXMaz2d36bbI3bZ4U+v6U2I8xbZoYwwMLBLfdnJdhS1w8+P9gSeE5ns2OsTvN
zExz5pX18bq44zuYmHt7BjC8dAsDBigA8UnJK/PF0UdhH+p2Rlcj2FU9pSEKwTjNDwHlEixZgGBf
pbD/9JdV3th4Ag+4l+ZWO2AQc/Tfu12OogDLFG8ghuw+Vb4rKJcfFky3ffnlx7spCaRBxTOQDHQC
OuGQgpU0HpOnVrSIe3xYkDd6Z46xVnPJu2fxbUjkaxsmlEAnRef8VbogT5cJrN6Mz9gOnhxjlOAQ
u06ppv0WDIPVagDWUu6yUu8TbLlZdyPHY3mRWdiaP8qM0cdkCYQoZbBIC8RFSGbbvemhWo4dOh4e
85Hv8Oo9ZWtw1SN+jBUS+FX9TAYJpeG1CaMfqnotwQKh9K9Vcazw4/F7YmUYakxnTUMwn9Wyvi+z
v1pDvw2/XU51rBVyjbzhYwVE2DV2MbSgex5uiMy2tF74UOsaZ04sWe0tT4NGKxo4MhYXXwgdDnZv
/kY4NRkuDDVPwNH59j/Dg/tbEtJHOZyLrrT1HVoFMtyiz4KC1UaMWpTcBouz8AECgci7spnEWFrZ
o2nib3xLu8JD3mEA7uFIQB/u+5pLjkB97/EMzvIQqYxOCjfJb/vOuw8VXpUlPrZ6Wf3+qGgmdOAW
/hOBr40wpYX66uARtyyT2DBExcwehBjfpws8t/J8RrTp4rsrdGba1movAcJdTs8wfHxw2UGfoxTS
AT1jExx3CMve9kt9/BDRyLzCT+HgkGAubhsNY2PniueI6PS6Ye72R34jiHzOoOor/p5WKRdIqnkf
f8A+nTctP0HiXv2MXGAACxmMJYyzpeQehWytgccO56UTs3YogpFd0IZ69FmV3JRRxliD305+WptZ
u6WhD0/EdSuFB2gVpYXdRWqbTBmoQ4g2alVKqaDJ4QVeQz7SE9IVTUN+RWqEZGKwCaPAS4n0DV+C
6Z4npVlpqDHOdpGHQiNTSB67bYS/kiDKa7fHtfOWlcCZov/zpGALt/64j5K1XjYpae8Sjb59jrvI
XoX/kxlTBjfVzkRHSO6gtamWjMhePahHeLFYNDBYE5PlZcPEFiHETU3iUipWfQftLTt8++vXFC4K
FbH1Jun7+qdGk8heN5QQrX+8yjoLJk2L98B5WlnLYUWbRAVIDBSxKhw70mnbdkU3Kh4jc7J4CTvW
XpEVwgVx8d5YBa13VOXzsWGSS241xqdCxrh7dBQCW/+mZQANVL9/NJM/LUe10qTN81HM4jN7fDfQ
ZJfR54gqNCoEe9t+IanTq6vH2beKrF94lZ6oG5189vvA06ULmVqQwXkCgadDHP4xVhyBqbnVXm7A
5qzTG2iyr0ERuIyjmlZxlN/WxDkTL3kd8H8rrpsaWgfMwnr7TP+8eZDASebnGJaNZkzjk7Bw+2mB
Zzki05+Nj+2uuHcP9Gh4jUjM2dPVW24iKFvlB3JS9jinlJ6J96Ml10aGfgA/PFdd7YiLDdqmYY8T
6Vn3SuCVOfauXccPid+cA/G0CqGCpjcUthEYbBEPf+9GW7DfohMtSsb3YLulLhWP0IrA9LZ5Igz9
iB5xcd5KeM8EtbFjYXAGd5HDf7FuFZt+OtEZDBfAEfwccdG57LMedPeIFopOuXHi6eFWKTGyqbLX
7j0cNJbY+rcLdC3j9ZfD3WERkQtqo9smOvIFdofowAdGqDVpE3TSFJE/EV/38pn/q8C/owDUL7po
RtkSAeFdno3NGls4ABnSeBBjmkruGPIzXIQZOluXIiDMvspx2DmJCOuOueqvVvh+bR5Pjj0N9Ybo
A5qHnpURtZKWYdLx1DTa5Gp9ueUFMi2K+vDB1Yj9SzKKbj02yugsi0NZLXXyI/xdy15MxvxMBP3i
8g05+AfDi8+X08qZDSJteR3lC6up8fqXOSNKV42nUpGDiQpn42hH85yuvHAgmtv6/AABKoZy2+gq
wgoVSIdfAf7VqRk+KUXXxtS/wmcTa7ojB/mHWbKBUzuhLgFZKMSx/E/0u1eIJdHtbjPBoFNa5qDO
OuwueZjm3Pbar/pTtKIcSCSO69SXZnCOwhdrr89EaXEm31M3t5CYg9ACrfa8xhhfiDhgZT7CUrIt
kbVxsG9wDHD31V00AG1W3q0RVWP4osWQfPwyb2mFjm5WUoMWehbUntETyH7DipaCJFt2XKDimql9
lLH/IE8FcG5d54z/V09SNEiSgFW1xDkGj2IX1LM6fkr2fitJoLyysbQOtKCVL2kHVZiSgzlLL2WO
awJ43Sgej6BB8hywlLlIlVn3Vr40GBhpJ0ZgujQSY1CQcjzOHBs9ThBoXLos3YlfZWMAqlhLufak
ZlvrV39DSj2/9QiNSdFWuatCKIMs8WTfVi2I/kDehuLgYyP70Io1mhi6tjvvdI2LREJk6uqoX3JY
QUOLjTKnzCT53aaSIeE+aMPt2DwmHvAXcxY0ktLvrsPU6DfmhAnDriJMW7KP3GMZypsATUjzqEXb
cT0KiVaumGLgzyMKh+QaU6z9ARolVWYyPkYpUU3mpKolUBbvSJdIsMSBWjKgyUSJ4cfpzp3lQ5kS
XJ8Opqbrl1vAmJDlm3aXpx0ESQc1rSbAWY7lZq6HqX0OCqvTQd0ipwDDTqLiXYgyPwVEfahAgYra
Px0dhZWpM0O9PwTK5RgI63Iazm81jJQDUyevhZsQEzbCuDeyGhoUa8ngL4DTICO7k6tCnB3Ov3nT
SjQjznZzJ7OG9B6bvUEXVKfQVyXYFrE88XxusW/uRI5G8DXMjebqyeHprirX55BKke1gXhWSkvoy
tI/BFgDiRPlP0FgfdLbV5Hot5x9NHK4qkiS3P9sy9xdNWzwraS/DVMQ3rEB22nMCZYxEGbPWypao
3IybmWSATo8lN3iE9AprcMIbDU67hGKwSuTLx3IlFy9MTik07PRl2Hp+8pXqhSMi/FPzSjEROmaE
Xz8s5n8xLiZD0d976qYm+rnxYd1JZ8xUpqDQ/xOUfbbeKQMmnupufKe2F0fpyCcL2FM3EnnUgMtN
xNjakohf0ehg36++ObCOsMZvUeMMh+RMgsPDqYcGZ6MQ+zc3DHKZWg74Pc7ta+oMKBAgmOGNrG+r
d2jZREoOpcc13EPqptc6yL/FxZJVHiLmtytpK2LSsrh6/24Y/Du78EOg0gptlUTEOx2MDDlp7Xz/
pm8Kb1jncaBfgT1HZunm4lH1i+tjUaXVmXEM8Ml2zSP/SiZila9NGbouCPzcNDrtAvMHwnBjrf62
1q5VlkdbpPx4Dr2MpU0YUi9GItAwwlreI6SyzmMQLg9XZQ6hVZa1HEuQxwPTgJXN8m9qLjLFy+Qp
hU181e6lOOHH/I6y0mB+sk7e30VzkwdBzMmQIdP3i61FJWWguIUMXwOariszvb6T562ezqYUJ2UU
QTFgb8bhN5b3QwVHtl+sU0VSZbIfiRTFYMGA2g7O4MchfAQJYOFWXihKlOUqOLrjc4il0KH6VhX3
5CfwPejKbknKrxGHTDKbUPaboFrwz/W+E5c6114zyRRFw4cBMRZxr1shegDJhPWmfYuqaEfMM3Ia
FDxx/XtjlfuYKAZyfkXvSt2lS507M1cB/MdL/Y7AQCajbfA/MVwbvkC7DbKfFejTGk7Ps0R/jOrm
nghNNt2TDnTNEaM5lcUmfXkZCapC85mx3FHP+oJiN2bQWIgjbdmu810BgmfCsmfuEf3iMUa7f1v1
7M2Fb6dmHfN1bXazoqIg1jM/XEjR283ixQqW7phCuhsgVeUbRDSe3hWH+OVd1aXTFGf5KqL01T8p
TLD+lm7suf5N90tfiji0ifteoYExttCVGkOtlse3tBBcWfOcW/bC9pTwfM4BuexiK4iLmT//Ef4I
UcB8aCviTIADRtV2zOiebxHdMOZ4M1h49d1+s3HskECDpRVu2r2NI1BFED4VV/FaBVJCXs6756kE
fwNcY0JbIHtgbASvoO2i/3zVndnp5ibBN0Y1NoI92Q1QEuulHZB01OvpymCELNsCvJtavpZ5WoG2
Cm/sFu6nib6Zp8+IsU9CpIManP3nAZB0/RWRd9YEbtAnRqYg00XAsT12x9Au2hgWoisgrtVGforA
gGIB6io+qVTlwCj7VYD+tSFTHDJbyxEKGf/NbtY9UnozO/CbTRxqrupN37zApdwqcHuPeP8+6V0i
NQu+4RTBLRbSn0M0QpIl2ZUf84JxsiOavESBm0fCrztjNk3NAl2ObkVWjmyU2WvbDNYw2m9Z12iK
78nA2fotxD5tn+yQc/G7Vq4jSjl+u81VXQVxBezezLwJHoLmBjtwo/VwgaDD2tARiB+4PUyU7Jtq
Am83X3e16CtAoGbsbwBz8ENz6Em+pgqs0HGfn40nU8ZUbNgnj3cdN+1AbQ8gx2oWIUXSfB0S+aDd
it+3GbIkAw/UhNxfMi4GAQI9tAb1fzALFTM1waJvUdUDfYm6EHr+BEyGE4We/bOgYRgOufTGkx34
M23U3Kg0QEpKy0JQpDgIPvuVL2W7X1+oI6d4Nw+GmP0ywunCpsAabXNXg0BXqbIkJp0O8XwxFqlq
F2FJdJ9SD9a6TQblaqqtgx6MvNA8dSt8ELsauvesthyRP32aKuw3f0O/uv39jfM/8tmzbbwTE2yx
F+qGfb9ZWWCvHpBrObx2EO7ENNL4ieUmS04Y+KAAqIaKeNis9WJia+XG+wgUZoGwUWuuhpZ/7EEd
0j0ExAR8SN5s6sKkbh08tTeUPMa0NyxjCqkZFVNUwfHSo3sjr9Yb/s1hyVYTcPrwnr5wleWPFSNq
hsOEiWKmiAyK3ZVkn+ev/byZ4Npu10Rl9mlvkwMV5p8awtjjai/mdrtuVqDVAnO5jrDZxsD4Tm/z
D4YAffps76aXHhdP6F0knQxk2EWpPkPNJJKoHO2XLNG1pBACP8+1Fa18EwmVfGhyasZOUPxioP+Z
3gHU/4jBQRppAoJifKEq8m7iPE+FvgE2U8vmx2sqSfsL4nN8KT3BLCzfH1yAURDhX9leJElvdWhY
zBBOrGrCaylvkvFwiiEPKRl1z1/bWeJw4j0rG5YQ94Y6g0Ro3CUeXhUhcScoNh8y/IuKCQDc2/Rf
GSx+2JokwClOKc/sYRYyclpePFB0k3CEX6//yGx3bTN9skZvR0KaMxwiITPrWKKrFzkZ65q/6TDu
YQ+1ELC0yvdzyVBd9nMbEFPnLC/7h8B9Vj1AXMME/vbidwknz5HtUaGYQphbL0pfCgHvbT0uOp33
K4ejO1cV36f5fqU04J4UKdMonISvMOJN2D0IWEOQdzPPopdIGrbeXuQr7zfxc5M8Fw1zSU+9EYrw
UBA7xWVQr/NfzMg0Xr0SycN8G5qFJDqhmH/XVeDmtjUkVMk+hZBzBsFuw7NYqm+PQ3AiYTKPxi+i
ZiCqcp1IGuaEEdajvuHtlYZfvoBxNsK1qvjfEWEZ0qFvNruK396BT9/txcaU9ip0QAsA1oQW3qSQ
YfAwvKnzyV0w/iBc3zCu+ZAkZwziDtJwfguLb7TIfgJeO9Tl6NJRd6v+wkk2gOyxxZyiwXzcO1bu
s0ghu167mCmi3I9XDI7uL+UCe/msJEwBUx33Rq8jriRycXgJ1NGEapNgY46h29cG0Ld9WpoXMNlS
Y7UkPbVUYkzZEmXRHOGUIyGbnvgptH25afrydBzwGm3Fda4r2/dUT3bcpwXwOOFiPRqa+vIOXRgg
Y6qbZJB6dcwV4KmQLdziBLHYXayFSbdS8LbiZYv5vOmQq4bF+3t8osIuBXA0ZnzbvX65cMvoqm7b
iTQAaZOkr6seuEP/HRUOTRZO1NpTf6d0UHckdDrJr4qzrmaeJVH038aR0U1bbq2y7pmMglQoVEWp
dFHy5WLupaBG9Eqdq4j62fXrVQQ8/hGijoZChkMvKeneILXLBB9y/rtKd84mqaM2dJbJru5Ox0Z6
DMOCkUDZu37qJ31ga3EZqoQAX+76tOVQFOj2URXzDdTdHqmzhMTjBKh9umtvbZoIX0SqAAHd6hNP
WS1aGvrQcqZwiNAZH5jV0+Ix87jADCWPaQ2u5nsgX8JuU8RN6fRXy8gUu+A/fb062YQLpIPvH9zX
520qlNAmfdjnHlhZTQjIAwTm9FCU0TllwdggrR18zIbpC0d/oE9ZEUUqq4En4iTkjNvZV/S2OQM5
itu9iB+ZS7DYmKkCIxkL2ksJf4aRbthP8X13SUHXzHagqBUi8B9eYy1TQcVMBWdrzSSzIv/akN/k
RXKP1zTG+je4LNurURUHZzk30D0IwFC9zWZAUkp9xlPnb7vZ4esle0sQjmEc1saOWOdPXIny9/gw
VPUDpPzm3lWdP6yyXgF+G23WyaldQdb4qRnOYIPHHf3IjXSp/JVWaxH2izTG30c+IqPAoXGHhLq8
byvDljVCOo2Aj0qnocsttUP8xhZ7oi1i+aJv75xR6GJrw2g9f/NZVUgpJAy9EB4NI8ivYgO80Ael
5dctDMV8ZntEqBdQaVFuraDcDlLjnBrt60fzT6O9xhVY8QAzrRaPnQx0b8ths7pSpY/+OveAFX7c
NgSENZq+jlbvnXqYW3A0sHmWOQHUIAbXAjyJatURKvGswfH4kGrWt95/Vm+b4cpa1VwmuZb0KN3C
do6KjVX6m2tTR8OQN3j3o3kJZA8MagndVXwFA1jrU8+hphC7PrUC2rbawCtjbL5UXlOlKKHPsQDD
e9JGM1NGDIxlvIFIZmsnyomhLoq3KVwB1ScZAOK8FA2vWIO1rQztvPNyO0VkiJMgotFA3804qtGK
metRTowdcAEPyWxBDtIkX4yuvcFv33wu+h1jJsZGvxuknp0pL/SmhlE5szy4d4Oy4hoqmnJrY02e
wAl/ip2TxxIhBu1K1S6nZSVJqH/8lllGu1+kNZMs0s8JjAzDI/Q6RzSrTxREAemNmyM2Hkpm3cVz
tXRVOH5uW4M37EWMRYZXaGNLEo6pDOLpP/P+m/vEv/CNVMvr+UpXjW/5QMMlChsg9adf+VsoAwPN
VOR5A8gIhn9jFYpK4uqwk6kMeMq58sPIEZSjRJtUac18p7eLAxEQpGP0mJW4UK1mODqVebv89pZx
rT9jeSFtpZAqNmmyYDc8H0CkC8hXvsWmm3kkIqzZdI09BU0Re9rSPogEURU6f9Py6AXfHSwTqs1H
Q2ic6dLX3GSr8bgnBQoxiCCwdjDb/xLIJN3Uvw7B4RmoEwV+nt1Ox3talCoc241wTkEcaQNUrHVD
bDnoWaBvbsk08rdv3TEqwpACi+aalAdgrpR4oe0Jdmf+imulloL/2i+LVkMSA69mO1P8mKKqckD9
ZZ6hxSznJgwDuxxEWAiTqf+zOphnZeIRXhSLTT7YfG6SfhfzRCUvAwnOnorREsgYrYtpFfP/P+un
ZvVeqQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

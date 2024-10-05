// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Oct  2 18:25:29 2024
// Host        : AjaThinkPad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
tDFC7ouxlqGJkW2Nsq9/QOvaLaM=
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

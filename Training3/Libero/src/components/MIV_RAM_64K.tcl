# Exporting Component Description of MIV_RAM_64K to TCL
# Family: PolarFire
# Part Number: MPF300T-1FCG1152E
# Create and Configure the core component MIV_RAM_64K
create_and_configure_core -core_vlnv Actel:SystemBuilder:PF_SRAM_AHBL_AXI:$PF_SRAM_AHBL_AXI_version -component_name {MIV_RAM_64K} -params {\
"AXI4_AWIDTH:32" \
"AXI4_DWIDTH:32" \
"AXI4_IDWIDTH:8" \
"AXI4_IFTYPE_RD:T" \
"AXI4_IFTYPE_WR:T" \
"AXI4_WRAP_SUPPORT:F" \
"BYTEENABLES:1" \
"BYTE_ENABLE_WIDTH:4" \
"B_REN_POLARITY:2" \
"CASCADE:1" \
"ECC_OPTIONS:0" \
"FABRIC_INTERFACE_TYPE:0" \
"IMPORT_FILE:../src/cfg_and_mem_files/RV32_simple_gpio.hex" \
"INIT_RAM:T" \
"LPM_HINT:0" \
"PIPELINE_OPTIONS:1" \
"RDEPTH:16384" \
"RWIDTH:40" \
"USE_NATIVE_INTERFACE:F" \
"WDEPTH:16384" \
"WWIDTH:40" }
# Exporting Component Description of MIV_RAM_64K to TCL done

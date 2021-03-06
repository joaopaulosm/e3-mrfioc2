# .cmd
# ====

epicsEnvSet("TOP", "$(E3_CMD_TOP)/../..")
iocshLoad("$(TOP)/iocsh/env-init.iocsh")

epicsEnvSet("LOCATION","MTCA:AMC2")
epicsEnvSet("IOC", "YOCTO2")
epicsEnvSet("DEV", "EVRL")

require mrfioc2, 2.2.0-rc7

# 0e:00.0 - 2U timtest crate
#iocshLoad("$(TOP)/iocsh/evr-mtca-init.iocsh", "S=$(IOC), DEV=$(DEV), PCIID=0e:00.0")
iocshLoad("$(TOP)/iocsh/evr-mtca-init.iocsh", "S=$(IOC), DEV=$(DEV), PCIID=06:00.0")

iocInit()

iocshLoad("$(TOP)/iocsh/evr-run.iocsh", "IOC=$(IOC), DEV=$(DEV), INTREF=")
#iocshLoad("$(TOP)/iocsh/evr-mtca-tclk-run.iocsh", "IOC=$(IOC), DEV=$(DEV)")
iocshLoad("$(TOP)/iocsh/evr-lb-run.iocsh", "IOC=$(IOC), DEV=$(DEV)")
#iocshLoad("$(TOP)/iocsh/evr-output-run.iocsh", "IOC=$(IOC), DEV=$(DEV), FPOUT0=, FPOUT1=, FPOUT2=, FPOUT3=, EVT0=$(EVT_14HZ), EVT1=$(EVT_14HZ), EVT2=$(EVT_14HZ), EVT3=$(EVT_14HZ), FPUVOUT0=, FPUVOUT1=, FPUVOUT2=, FPUVOUT3=")
iocshLoad("$(TOP)/iocsh/evr-BPIn-sniff-run.iocsh", "IOC=$(IOC), DEV=$(DEV)")

dbl > "${IOC}-${DEV}_PVs.list"

#EOF

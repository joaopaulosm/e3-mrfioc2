# .cmd
# ====
epicsEnvSet("TOP", "$(E3_CMD_TOP)/../..")
iocshLoad("$(TOP)/iocsh/env-init.iocsh")

epicsEnvSet("LOCATION","PBI LAB")

epicsEnvSet("IOC", "TM")
epicsEnvSet("DEV", "EVG")

# Select the software release
require mrfioc2, 2.2.0-rc6

iocshLoad("$(TOP)/iocsh/evg-mtca-init.iocsh", "IOC=$(IOC), DEV=$(DEV), PCIID=$(MTCA_3U_PCIID6)")

iocInit()

# RUNTIME
# =======
iocshLoad("$(TOP)/iocsh/evg-mtca-run.iocsh", "IOC=$(IOC), DEV=$(DEV), INTREF=''")
iocshLoad("$(TOP)/iocsh/evg-seq0-NBP-run.iocsh", "IOC=$(IOC), DEV=$(DEV)")

# dbl > "${IOC}_PVs.list"

#EOF
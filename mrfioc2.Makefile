
include ${REQUIRE_TOOLS}/driver.makefile


# mrfioc2/configure/CONFIG_SITE
USR_CPPFLAGS += -DUSE_TYPED_RSET

# mrfCommon/Makefile 
USR_CFLAGS   += -DDEBUG_PRINT
USR_CPPFLAGS += -DDEBUG_PRINT



MRFCOMMOM:= mrfCommon/src

## USR_INCLUDES can be used, however, have to define the absolute path
## 

SOURCES += $(MRFCOMMOM)/mrfFracSynth.c
SOURCES += $(MRFCOMMOM)/linkoptions.c
SOURCES += $(MRFCOMMOM)/object.cpp
SOURCES += $(MRFCOMMOM)/devObj.cpp
SOURCES += $(MRFCOMMOM)/devObjAnalog.cpp
SOURCES += $(MRFCOMMOM)/devObjLong.cpp
SOURCES += $(MRFCOMMOM)/devObjBinary.cpp
SOURCES += $(MRFCOMMOM)/devObjMBB.cpp
SOURCES += $(MRFCOMMOM)/devObjMBBDirect.cpp
SOURCES += $(MRFCOMMOM)/devObjString.cpp
SOURCES += $(MRFCOMMOM)/devObjCommand.cpp
SOURCES += $(MRFCOMMOM)/devObjWf.cpp
SOURCES += $(MRFCOMMOM)/devMbboDirectSoft.c
SOURCES += $(MRFCOMMOM)/devlutstring.cpp
SOURCES += $(MRFCOMMOM)/databuf.cpp
SOURCES += $(MRFCOMMOM)/mrfCommon.cpp
SOURCES += $(MRFCOMMOM)/spi.cpp
SOURCES += $(MRFCOMMOM)/flash.cpp
SOURCES += $(MRFCOMMOM)/flashiocsh.cpp


DBDS    += $(MRFCOMMOM)/mrfCommon.dbd


HEADERS += $(MRFCOMMOM)/mrfBitOps.h
HEADERS += $(MRFCOMMOM)/mrfCommon.h  
HEADERS += $(MRFCOMMOM)/mrfCommonIO.h 
HEADERS += $(MRFCOMMOM)/mrfFracSynth.h
HEADERS += $(MRFCOMMOM)/linkoptions.h
HEADERS += $(MRFCOMMOM)/mrfcsr.h
HEADERS += $(MRFCOMMOM)/mrf/databuf.h
HEADERS += $(MRFCOMMOM)/mrf/object.h
HEADERS += $(MRFCOMMOM)/mrf/version.h
HEADERS += $(MRFCOMMOM)/devObj.h
HEADERS += $(MRFCOMMOM)/configurationInfo.h
HEADERS += $(MRFCOMMOM)/plx9030.h
HEADERS += $(MRFCOMMOM)/plx9056.h
HEADERS += $(MRFCOMMOM)/latticeEC30.h



# COMMUNITY Dependency
# mrfCommon
MRMSHARED:= mrmShared
MRMSHAREDSRC:=${MRMSHARED}/src
MRMSHAREDDB:=${MRMSHARED}/Db

SOURCES += $(MRMSHAREDSRC)/mrmDataBufTx.cpp
SOURCES += $(MRMSHAREDSRC)/mrmSeq.cpp
SOURCES += $(MRMSHAREDSRC)/devMrfBufTx.cpp
SOURCES += $(MRMSHAREDSRC)/sfp.cpp
SOURCES += $(MRMSHAREDSRC)/mrmtimesrc.cpp

DBDS    += $(MRMSHAREDSRC)/mrmShared.dbd

HEADERS += $(MRMSHAREDSRC)/mrmDataBufTx.h
HEADERS += $(MRMSHAREDSRC)/mrmSeq.h
HEADERS += $(MRMSHAREDSRC)/mrmpci.h
HEADERS += $(MRMSHAREDSRC)/sfp.h



# COMMUNITY Dependency 
# mrfCommon (mrfioc2), mrmShared (mrfioc2), epicsvme (devlib2), epicspci (devlib2)
EVGMRMAPP:= evgMrmApp
EVGMRMAPPSRC:=$(EVGMRMAPP)/src
EVGMRMAPPDB:=$(EVGMRMAPP)/Db

SOURCES += $(EVGMRMAPPSRC)/evgInit.cpp
SOURCES += $(EVGMRMAPPSRC)/evg.cpp
SOURCES += $(EVGMRMAPPSRC)/evgMrm.cpp
SOURCES += $(EVGMRMAPPSRC)/evgAcTrig.cpp
SOURCES += $(EVGMRMAPPSRC)/evgEvtClk.cpp
SOURCES += $(EVGMRMAPPSRC)/evgTrigEvt.cpp
SOURCES += $(EVGMRMAPPSRC)/devSupport/devEvgTrigEvt.cpp
SOURCES += $(EVGMRMAPPSRC)/evgMxc.cpp
SOURCES += $(EVGMRMAPPSRC)/evgDbus.cpp
SOURCES += $(EVGMRMAPPSRC)/devSupport/devEvgDbus.cpp
SOURCES += $(EVGMRMAPPSRC)/evgInput.cpp
SOURCES += $(EVGMRMAPPSRC)/evgOutput.cpp
SOURCES += $(EVGMRMAPPSRC)/mrmevgseq.cpp
SOURCES += $(EVGMRMAPPSRC)/seqconst.c
SOURCES += $(EVGMRMAPPSRC)/seqnsls2.c

DBDS    += $(EVGMRMAPPSRC)/evgInit.dbd

HEADERS += $(EVGMRMAPPSRC)/evgMrm.h
HEADERS += $(EVGMRMAPPSRC)/evgRegMap.h
HEADERS += $(EVGMRMAPPSRC)/evgAcTrig.h
HEADERS += $(EVGMRMAPPSRC)/evgEvtClk.h
HEADERS += $(EVGMRMAPPSRC)/evgTrigEvt.h
HEADERS += $(EVGMRMAPPSRC)/evgMxc.h
HEADERS += $(EVGMRMAPPSRC)/evgDbus.h
HEADERS += $(EVGMRMAPPSRC)/evgInput.h
HEADERS += $(EVGMRMAPPSRC)/evgOutput.h
HEADERS += $(EVGMRMAPPSRC)/mrmevgseq.h



# HEADERS += pev.h
# # find the pev library from IOxOS
# PEVDIR = /opt/eldk-5.2/ifc
# USR_INCLUDES += -I$(PEVDIR)/include
# USR_LDFLAGS += -L$(PEVDIR)/lib
# LIB_SYS_LIBS += pev



# # COMMUNITY Dependency

# mrfCommon
EVRAPP:= evrApp
EVRAPPSRC:=${EVRAPP}/src
EVRAPPDB:=${EVRAPP}/Db

HEADERS += $(EVRAPPSRC)/evr/pulser.h
HEADERS += $(EVRAPPSRC)/evr/output.h
HEADERS += $(EVRAPPSRC)/evr/delay.h
HEADERS += $(EVRAPPSRC)/evr/input.h
HEADERS += $(EVRAPPSRC)/evr/prescaler.h
HEADERS += $(EVRAPPSRC)/evr/evr.h
HEADERS += $(EVRAPPSRC)/evr/cml.h
HEADERS += $(EVRAPPSRC)/evrGTIF.h



SORUCES += $(EVRAPPSRC)/evr.cpp
SORUCES += $(EVRAPPSRC)/evrGTIF.cpp
SORUCES += $(EVRAPPSRC)/devEvrStringIO.cpp
SORUCES += $(EVRAPPSRC)/devEvrEvent.cpp
SORUCES += $(EVRAPPSRC)/devEvrMapping.cpp
SORUCES += $(EVRAPPSRC)/devEvrPulserMapping.cpp
SORUCES += $(EVRAPPSRC)/asub.c
SORUCES += $(EVRAPPSRC)/devWfMailbox.c
SOURCES += $(EVRAPPSRC)/ntpShm.cpp




DBDS    += $(EVRAPPSRC)/evrSupport.dbd

# COMMUNITY Dependency
# mrfCommon (mrfioc2), mrmShared (mrfioc2), evr (mrfioc2), epicsvme (devlib2), epicspci (devlib2)
EVRMRMAPP:= evrMrmApp
EVRMRMAPPSRC:=$(EVRMRMAPP)/src
EVRMRMAPPDB:=$(EVRMRMAPP)Db


SOURCES += $(EVRMRMAPPSRC)/drvemIocsh.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemSetup.cpp
SOURCES += $(EVRMRMAPPSRC)/drvem.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemOutput.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemInput.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemPrescaler.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemPulser.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemCML.cpp
SOURCES += $(EVRMRMAPPSRC)/delayModule.cpp
SOURCES += $(EVRMRMAPPSRC)/drvemRxBuf.cpp
SOURCES += $(EVRMRMAPPSRC)/devMrmBuf.cpp
SOURCES += $(EVRMRMAPPSRC)/mrmevrseq.cpp
SOURCES += $(EVRMRMAPPSRC)/bufrxmgr.cpp
SOURCES += $(EVRMRMAPPSRC)/devMrmBufRx.cpp
SOURCES += $(EVRMRMAPPSRC)/os/default/irqHack.cpp
SOURCES += $(EVRMRMAPPSRC)/mrmGpio.cpp

DBDS    += $(EVRMRMAPPSRC)/drvemSupport.dbd

TEMPLATES += $(wildcard $(MRMSHAREDDB)/*.db)
TEMPLATES += $(wildcard $(MRMSHAREDDB)/*.template)
TEMPLATES += $(wildcard $(MRMSHAREDDB)/*.substitutions)
TEMPLATES += $(wildcard $(EVRAPPDB)/*.db)
TEMPLATES += $(wildcard $(EVRAPPDB)/*.template)
TEMPLATES += $(wildcard $(EVRAPPDB)/*.substitutions)
TEMPLATES += $(wildcard $(EVGMRMAPPDB)/*.db)
TEMPLATES += $(wildcard $(EVGMRMAPPDB)/*.template)
TEMPLATES += $(wildcard $(EVGMRMAPPDB)/*.substitutions)
TEMPLATES += $(wildcard $(EVRMRMAPPDB)/*.db)
TEMPLATES += $(wildcard $(EVRMRMAPPDB)/*.template)
TEMPLATES += $(wildcard $(EVRMRMAPPDB)/*.substitutions)

#!/bin/csh -f

set hostname = `hostname`
echo "Your hostname is:  $hostname"

###TestMAX
if ($hostname == "dell740" ) then
setenv SYNOPSYS_TMAX /home/0-SCDC-SHARE/2-Lab/Tools/txs/S-2021.06-SP5-5
#setenv PATH ${SYNOPSYS_TMAX}/bin:$PATH
else 
setenv SYNOPSYS_TMAX /home/shtp/ShareData/0-Server/2-Lab/Tools/txs/S-2021.06-SP5-5
#setenv PATH ${SYNOPSYS_TMAX}/bin:$PATH
endif
setenv PATH ${SYNOPSYS_TMAX}/bin:$PATH


###VCS
if ($hostname == "dell740" ) then
setenv VCS_HOME /home/0-SCDC-SHARE/2-Lab/Tools/vcs/T-2022.06-SP1
#setenv PATH ${VCS_HOME}/bin:$PATH
else 
setenv VCS_HOME /home/shtp/ShareData/0-Server/2-Lab/Tools/vcs/T-2022.06-SP1
#setenv PATH ${VCS_HOME}/bin:$PATH
endif
setenv PATH ${VCS_HOME}/bin:$PATH

alias vcs "vcs -full64"
alias dve "dve -full64"

###VERDI
if ($hostname == "dell740" ) then
setenv VERDI_HOME /home/0-SCDC-SHARE/2-Lab/Tools/verdi/T-2022.06-SP1-1
#setenv PATH ${VERDI_HOME}/bin:$PATH
else
setenv VERDI_HOME /home/shtp/ShareData/0-Server/2-Lab/Tools/verdi/T-2022.06-SP1-1
#setenv PATH ${VERDI_HOME}/bin:$PATH
endif
setenv PATH ${VERDI_HOME}/bin:$PATH

##SPYGLASS
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/spyglass/R-2020.12-SP2-13/SPYGLASS_HOME/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/spyglass/R-2020.12-SP2-13/SPYGLASS_HOME/bin:$PATH
endif

##VC-STATIC
if ($hostname == "dell740" ) then
setenv VC_STATIC_HOME /home/0-SCDC-SHARE/2-Lab/Tools/vc_static/R-2020.12-SP2-13
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/vc_static/R-2020.12-SP2-13/bin:$PATH
else
setenv VC_STATIC_HOME /home/shtp/ShareData/0-Server/2-Lab/Tools/vc_static/R-2020.12-SP2-13
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/vc_static/R-2020.12-SP2-13/bin:$PATH
endif

##RTLA
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/rtla/U-2022.12/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/rtla/U-2022.12/bin:$PATH
endif

##SYNTHESIS
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/syn/T-2022.03-SP5-1/bin:$PATH
else
#echo "synthesis setting"
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/syn/T-2022.03-SP5-1/bin:$PATH
endif

##DESIGNWARE
if ($hostname == "dell740" ) then
setenv DESIGNWARE_HOME /home/0-SCDC-SHARE/2-Lab/Tools/DW
else
setenv DESIGNWARE_HOME /home/shtp/ShareData/0-Server/2-Lab/Tools/DW
endif

#LC
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/lc/U-2022.12/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/lc/U-2022.12/bin:$PATH
endif

#DC
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/0-Tools/syn/T-2022.03-SP4/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/syn/T-2022.03-SP4/bin:$PATH
endif

#WV
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/0-Tools/wv/T-2022.06-SP1-1/bin:$PATH 
else
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/wv/T-2022.06-SP1-1/bin:$PATH 
endif

#FM
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/0-Tools/fm/T-2022.03-SP4/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/fm/T-2022.03-SP4/bin:$PATH
endif

#LC,STARRC,MW
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/0-Tools/lc/T-2022.03-SP4/bin:$PATH
setenv SYNOPSYS_LC_ROOT /home/0-SCDC-SHARE/0-Tools/lc/T-2022.03-SP4/bin
setenv PATH /home/0-SCDC-SHARE/0-Tools/starrc/T-2022.03-SP4/bin:$PATH
setenv PATH /home/0-SCDC-SHARE/0-Tools/mw/T-2022.03-SP4/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/lc/T-2022.03-SP4/bin:$PATH
setenv SYNOPSYS_LC_ROOT /home/shtp/ShareData/0-Server/0-Tools/lc/T-2022.03-SP4/bin
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/starrc/T-2022.03-SP4/bin:$PATH
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/mw/T-2022.03-SP4/bin:$PATH
endif

#PT
if ($hostname == "dell740" ) then
#Remove as trainer request: Jan.12#
#setenv PATH /home/0-SCDC-SHARE/0-Tools/prime/T-2022.03-SP4/bin:$PATH
### -- end -- ###
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/prime/T-2022.03-SP3/bin:$PATH
else
#Remove as trainer request: Jan.12#
#setenv PATH /home/shtp/ShareData/0-Server/0-Tools/prime/T-2022.03-SP4/bin:$PATH
### -- end -- ###
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/prime/T-2022.03-SP3/bin:$PATH
endif

#Custom Compiler
if ($hostname == "dell740" ) then
#setenv PATH /home/0-SCDC-SHARE/0-Tools/customcompiler/T-2022.06-3/bin:$PATH
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/customcompiler/T-2022.06-SP2/bin:$PATH 
setenv PATH /home/0-SCDC-SHARE/0-Tools/primewave/T-2022.06-3/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/customcompiler/T-2022.06-SP2/bin:$PATH
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/primewave/T-2022.06-3/bin:$PATH
endif

#FC,ICC2
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/0-Tools/fusioncompiler/R-2020.09-SP4/bin:$PATH
setenv PATH /home/0-SCDC-SHARE/0-Tools/icc2/S-2021.06-SP5-1/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/fusioncompiler/R-2020.09-SP4/bin:$PATH
setenv PATH /home/shtp/ShareData/0-Server/0-Tools/icc2/S-2021.06-SP5-1/bin:$PATH
endif

#ICV
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/icvalidator/S-2021.06-SP3-12/bin:$PATH
else
setenv PATH       /home/shtp/ShareData/0-Server/2-Lab/Tools/icvalidator/S-2021.06-SP3-12/bin:$PATH
endif

#ICV-WORKBENCH
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/icv_workbench/U-2022.12/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/icv_workbench/U-2022.12/bin:$PATH
endif

#HSPICE
if ($hostname == "dell740" ) then
setenv PATH /home/0-SCDC-SHARE/2-Lab/Tools/hspice/T-2022.06-SP2/hspice/bin:$PATH
else
setenv PATH /home/shtp/ShareData/0-Server/2-Lab/Tools/hspice/T-2022.06-SP2/hspice/bin:$PATH
endif

##LICENSE
setenv SNPSLMD_LICENSE_FILE 27020@dell740:27020@10.10.2.11
setenv LM_LICENSE_FILE ${SNPSLMD_LICENSE_FILE}

####################### EOF #################################################

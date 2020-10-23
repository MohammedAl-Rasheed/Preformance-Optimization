@Echo Off
Title Collection of TIMER RESOLUTION.BAT
cd %systemroot%\system32
call :IsAdmin

goto start
:start
bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /set nointegritychecks yes
bcdedit /set bootmenupolicy legacy
bcdedit /set bootux disabled
bcdedit /set hypervisorlaunchtype off
bcdedit /set nx optout
bcdedit /set quietboot yes
bcdedit /set tpmbootentropy default
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000068 true
bcdedit /set {globalsettings} custom:16000069 true
bcdedit /timeout 5
bcdedit /set uselegacyapicmode no
bcdedit /set usefirmwarepcisettings yes
bcdedit /set tscsyncpolicy Legacy
bcdedit /set x2apicpolicy enable
Exit


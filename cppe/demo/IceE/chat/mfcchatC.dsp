# Microsoft Developer Studio Project File - Name="mfcchatC" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=mfcchatC - Win32 Debug Static
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mfcchatC.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mfcchatC.mak" CFG="mfcchatC - Win32 Debug Static"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mfcchatC - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "mfcchatC - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "mfcchatC - Win32 Debug Static" (based on "Win32 (x86) Application")
!MESSAGE "mfcchatC - Win32 Release Static" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mfcchatC - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O1 /I "." /I "../../../include" /D "NDEBUG" /D "VC_EXTRALEAN" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /incremental:yes /machine:I386 /out:"mfcclient.exe" /libpath:"../../../../lib"
# SUBTRACT LINK32 /debug

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../include" /D "_DEBUG" /D "VC_EXTRALEAN" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386 /out:"mfcclient.exe" /pdbtype:sept /libpath:"../../../../lib" /fixed:no
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug Static"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "mfcchatC___Win32_Debug_Static"
# PROP BASE Intermediate_Dir "mfcchatC___Win32_Debug_Static"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugStatic"
# PROP Intermediate_Dir "DebugStatic"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../../include" /I "../../../../include/stlport" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../include" /D "_DEBUG" /D "ICEE_STATIC_LIBS" /D "VC_EXTRALEAN" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 iceEd.lib /nologo /subsystem:windows /debug /machine:I386 /out:"server.exe" /pdbtype:sept /libpath:"../../../../lib"
# SUBTRACT BASE LINK32 /incremental:no
# ADD LINK32 ws2_32.lib rpcrt4.lib /nologo /subsystem:windows /debug /machine:I386 /out:"mfcclient.exe" /pdbtype:sept /libpath:"../../../../lib" /fixed:no
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Release Static"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "mfcchatC___Win32_Release_Static"
# PROP BASE Intermediate_Dir "mfcchatC___Win32_Release_Static"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseStatic"
# PROP Intermediate_Dir "ReleaseStatic"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GR /GX /O2 /I "." /I "../../../../include" /I "../../../../include/stlport" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O1 /I "." /I "../../../include" /D "NDEBUG" /D "ICEE_STATIC_LIBS" /D "VC_EXTRALEAN" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 iceE.lib /nologo /subsystem:windows /incremental:yes /machine:I386 /out:"server.exe" /libpath:"../../../../lib"
# ADD LINK32 ws2_32.lib rpcrt4.lib /nologo /subsystem:windows /machine:I386 /out:"mfcclient.exe" /libpath:"../../../../lib"
# SUBTRACT LINK32 /incremental:yes /debug

!ENDIF 

# Begin Target

# Name "mfcchatC - Win32 Release"
# Name "mfcchatC - Win32 Debug"
# Name "mfcchatC - Win32 Debug Static"
# Name "mfcchatC - Win32 Release Static"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Chat.cpp
# End Source File
# Begin Source File

SOURCE=.\ChatClient.cpp
# End Source File
# Begin Source File

SOURCE=.\ChatClient.rc
# End Source File
# Begin Source File

SOURCE=.\ChatClientDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ChatConfigDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\LogI.cpp
# End Source File
# Begin Source File

SOURCE=.\PingThread.cpp
# End Source File
# Begin Source File

SOURCE=.\Router.cpp
# End Source File
# Begin Source File

SOURCE=.\Session.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\Chat.h
# End Source File
# Begin Source File

SOURCE=.\ChatClient.h
# End Source File
# Begin Source File

SOURCE=.\ChatClientDlg.h
# End Source File
# Begin Source File

SOURCE=.\ChatConfigDlg.h
# End Source File
# Begin Source File

SOURCE=.\LogI.h
# End Source File
# Begin Source File

SOURCE=.\PingThread.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\Router.h
# End Source File
# Begin Source File

SOURCE=.\Session.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\Chat.ice

!IF  "$(CFG)" == "mfcchatC - Win32 Release"

# Begin Custom Build
InputPath=.\Chat.ice

BuildCmds= \
	slice2cppe.exe -I. Chat.ice

"Chat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Chat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug"

# Begin Custom Build
InputPath=.\Chat.ice

BuildCmds= \
	slice2cppe.exe -I. Chat.ice

"Chat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Chat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug Static"

# Begin Custom Build
InputPath=.\Chat.ice

BuildCmds= \
	slice2cppe.exe -I. Chat.ice

"Chat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Chat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Release Static"

# Begin Custom Build
InputPath=.\Chat.ice

BuildCmds= \
	slice2cppe.exe -I. Chat.ice

"Chat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Chat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\res\ChatClient.ico
# End Source File
# Begin Source File

SOURCE=.\res\ChatClient.rc2
# End Source File
# Begin Source File

SOURCE=.\Router.ice

!IF  "$(CFG)" == "mfcchatC - Win32 Release"

# Begin Custom Build
InputPath=.\Router.ice

BuildCmds= \
	slice2cppe.exe -I. -I../../../slice Router.ice

"Router.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Router.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug"

# Begin Custom Build
InputPath=.\Router.ice

BuildCmds= \
	slice2cppe.exe -I. -I../../../slice Router.ice

"Router.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Router.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug Static"

# Begin Custom Build
InputPath=.\Router.ice

BuildCmds= \
	slice2cppe.exe -I. -I../../../slice Router.ice

"Router.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Router.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Release Static"

# Begin Custom Build
InputPath=.\Router.ice

BuildCmds= \
	slice2cppe.exe -I. -I../../../slice Router.ice

"Router.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Router.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Session.ice

!IF  "$(CFG)" == "mfcchatC - Win32 Release"

# Begin Custom Build
InputPath=.\Session.ice

BuildCmds= \
	slice2cppe.exe --ice Session.ice

"Session.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Session.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug"

# Begin Custom Build
InputPath=.\Session.ice

BuildCmds= \
	slice2cppe.exe --ice Session.ice

"Session.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Session.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Debug Static"

# Begin Custom Build
InputPath=.\Session.ice

BuildCmds= \
	slice2cppe.exe --ice Session.ice

"Session.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Session.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mfcchatC - Win32 Release Static"

# Begin Custom Build
InputPath=.\Session.ice

BuildCmds= \
	slice2cppe.exe --ice Session.ice

"Session.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Session.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\README
# End Source File
# End Target
# End Project

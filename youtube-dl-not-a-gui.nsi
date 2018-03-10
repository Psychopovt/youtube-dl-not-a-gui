# define installer name
OutFile "youtube-dl-not-a-gui_setup.exe"

# set %AppData% as install directory
InstallDir $APPDATA\youtube-dl-not-a-gui\

# default section start
Section

# define output path
SetOutPath $INSTDIR

# specify files to go in output path
File youtube-dl-not-a-gui.exe
File youtube-dl-not-a-gui.bat
# specify folders to go in output path
File /r youtube-dl
File /r ffmpeg

# define uninstaller name
WriteUninstaller $INSTDIR\youtube-dl-not-a-gui_uninstaller.exe

CreateDirectory $SMPROGRAMS\youtube-dl
# create a shortcut named "youtube-dl-not-a-gui" in the start menu programs directory
# point the new shortcut at the program youtube-dl-not-a-gui.exe
CreateShortCut "$SMPROGRAMS\youtube-dl\youtube-dl-not-a-gui.lnk" "$INSTDIR\youtube-dl-not-a-gui.exe"
# create a shortcut named "Uninstall" in the start menu programs directory
# point the new shortcut at the uninstaller youtube-dl-not-a-gui_uninstaller.exe
CreateShortCut "$SMPROGRAMS\youtube-dl\Uninstall.lnk" "$INSTDIR\youtube-dl-not-a-gui_uninstaller.exe"

# default section end
SectionEnd

# create a section to define what the uninstaller does.
# the section will always be named "Uninstall"
Section "Uninstall"

# always delete uninstaller first
Delete $INSTDIR\youtube-dl-not-a-gui_uninstaller.exe

# delete installed files
Delete $INSTDIR\youtube-dl-not-a-gui.exe
Delete $INSTDIR\youtube-dl-not-a-gui.bat
# delete installed folders
RMDir /r $INSTDIR\youtube-dl
RMDir /r $INSTDIR\ffmpeg
RMDir $INSTDIR
# now delete shortcuts
Delete $SMPROGRAMS\youtube-dl\youtube-dl-not-a-gui.lnk
Delete $SMPROGRAMS\youtube-dl\Uninstall.lnk
RMDir $SMPROGRAMS\youtube-dl

SectionEnd
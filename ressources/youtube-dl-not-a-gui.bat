::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJH2L91c9LRVAXzihM2+/RqYT/fr46taerVgJQeA6NYvXl7qBNK0Sp0LxfKo/02lJl94eDx5LQhuoYQEIsGFXonGHMoqYv0LvRVzE5wY3Dmw6jmDf7A==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIpJw5AWQaHcW+2S7sT/KX6ou2Sqy0=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATExEMlJFtmaSqjDk/a
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJH2L91c9LRVAXzihM2+/RqYT/fr46taerVgJQeA6NYvXl7qBNK0Sp0LxfKo02W9OjckJQR9UMxykekI15GlXvyqAL8L8
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
REM		Name :
REM					youtube-dl-not-a-gui
REM		Author :
REM					▄▄▄▄▄▄▄  ▄ ▄▄ ▄▄▄▄▄▄▄
REM					█ ▄▄▄ █ ██ ▀▄ █ ▄▄▄ █
REM					█ ███ █ ▄▀ ▀▄ █ ███ █
REM					█▄▄▄▄▄█ █ ▄▀█ █▄▄▄▄▄█
REM					▄▄ ▄  ▄▄▀██▀▀ ▄▄▄ ▄▄
REM					 ▀█▄█▄▄▄█▀▀ ▄▄▀█ █▄▀█
REM					 █ █▀▄▄▄▀██▀▄ █▄▄█ ▀█
REM					▄▄▄▄▄▄▄ █▄█▀ ▄ ██ ▄█
REM					█ ▄▄▄ █  █▀█▀ ▄▀▀  ▄▀
REM					█ ███ █ ▀▄  ▄▀▀▄▄▀█▀█
REM					█▄▄▄▄▄█ ███▀▄▀ ▀██ ▄
@ECHO off
REM Console height / width
MODE 65,30 | ECHO off
REM Console title
TITLE youtube-dl-not-a-gui
ECHO.
ECHO   -------------------------------------------------------------
ECHO                      Video URL to download :
ECHO   -------------------------------------------------------------
ECHO.
REM Prompt for a video URL to download
SET /p videoURL="> "
ECHO.
REM - U : auto-update youtube-dl.exe to latest version
REM --no-warnings : do not output some useless warning messages
REM --no-check-certificate : fix for "SSL certificate verify failed" error
REM -f bestvideo+bestaudio : best video-only format and best audio-only format, without merging them
REM -o "%userprofile%\Videos\%%(uploader)s - %%(title)s.%%(ext)s" : default output folder and file naming template
REM --ffmpeg-location "%directoryPath%ffmpeg\ffmpeg.exe" : ffmpeg.exe location to mux video and audio files to mkv format
"youtube-dl\youtube-dl.exe" -U | MORE
FOR %%A IN (%videoURL%) DO (
	"youtube-dl\youtube-dl.exe" --no-check-certificate --no-warnings -f bestvideo+bestaudio/best -o "%userprofile%\Videos\%%(uploader)s - %%(title)s.%%(ext)s" --ffmpeg-location "ffmpeg\ffmpeg.exe" "%%A"
)
REM Wait 10 seconds, then exit script
TIMEOUT 10
@echo off
echo Setting up Claude Code global config...

if not exist "%USERPROFILE%\.claude" mkdir "%USERPROFILE%\.claude"
if not exist "%USERPROFILE%\.claude\commands" mkdir "%USERPROFILE%\.claude\commands"

copy /Y CLAUDE.md "%USERPROFILE%\.claude\CLAUDE.md"
echo Copied CLAUDE.md

for %%f in (commands\*.md) do (
    copy /Y "%%f" "%USERPROFILE%\.claude\commands\"
    echo Copied %%f
)

echo.
echo Done. One manual step remaining:
echo Merge settings-additions.json into %USERPROFILE%\.claude\settings.json
echo (Don't overwrite — just add the hooks sections into your existing file)

@echo off
echo "Read the README.txt file for instructions before continuing."
set /p=Hit ENTER to continue...
echo "Starting."
echo d | xcopy /s .\Game .\PracticeMod
echo f | xcopy /s .\Game\default.xbe .\default.xbe
flips --apply acb.ips default.xbe autocb.xbe
powershell -Command "Expand-Archive -LiteralPath '.\PMod.zip' -DestinationPath .\PracticeMod -Force"
echo f | xcopy .\autocb.xbe .\PracticeMod\autocb.xbe
del ".\default.xbe" /f /q
del ".\autocb.xbe" /f /q
set /p=Finished! Hit ENTER to close...
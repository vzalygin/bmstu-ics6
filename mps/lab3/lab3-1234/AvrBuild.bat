@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "C:\repos\bmstu-ics6\mps\lab3\labels.tmp" -fI -W+ie -C V2E -o "C:\repos\bmstu-ics6\mps\lab3\lab3.hex" -d "C:\repos\bmstu-ics6\mps\lab3\lab3.obj" -e "C:\repos\bmstu-ics6\mps\lab3\lab3.eep" -m "C:\repos\bmstu-ics6\mps\lab3\lab3.map" "C:\repos\bmstu-ics6\mps\lab3\lab3-5.asm"

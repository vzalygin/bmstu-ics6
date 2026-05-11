@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "C:\repos\bmstu-ics6\mps\lab2\labels.tmp" -fI -W+ie -C V2E -o "C:\repos\bmstu-ics6\mps\lab2\lab2.hex" -d "C:\repos\bmstu-ics6\mps\lab2\lab2.obj" -e "C:\repos\bmstu-ics6\mps\lab2\lab2.eep" -m "C:\repos\bmstu-ics6\mps\lab2\lab2.map" "C:\repos\bmstu-ics6\mps\lab2\lab2-4.asm"

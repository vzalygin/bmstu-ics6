@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "C:\repos\bmstu-ics6\mps\lab1\labels.tmp" -fI -W+ie -C V2E -o "C:\repos\bmstu-ics6\mps\lab1\lab1.hex" -d "C:\repos\bmstu-ics6\mps\lab1\lab1.obj" -e "C:\repos\bmstu-ics6\mps\lab1\lab1.eep" -m "C:\repos\bmstu-ics6\mps\lab1\lab1.map" "C:\repos\bmstu-ics6\mps\lab1\lab1.asm"

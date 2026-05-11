@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "C:\repos\bmstu-ics6\mps\lab1-3\labels.tmp" -fI -W+ie -C V2E -o "C:\repos\bmstu-ics6\mps\lab1-3\lab1-3.hex" -d "C:\repos\bmstu-ics6\mps\lab1-3\lab1-3.obj" -e "C:\repos\bmstu-ics6\mps\lab1-3\lab1-3.eep" -m "C:\repos\bmstu-ics6\mps\lab1-3\lab1-3.map" "C:\repos\bmstu-ics6\mps\lab1-3\lab2-3.asm"

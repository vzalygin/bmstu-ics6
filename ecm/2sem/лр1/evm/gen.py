with open('run_opt.vcd') as f:
    run = f.read()

with open('prog_opt.asm_output') as f:
    asm = f.read()

print(run)

print(asm)

d = {}
text, data = asm.split('Disassembly of section .data:')

print('codes:')
for s in text.split('\n'):
    if len(s) > 8 and s[8] == ':':
        addr, code, command = s[0:8], s[10:18], s[29:]
        print(addr, code, command)
        d[addr] = (code, command)  

print('datas:')
data_n = 1
for s in data.split('\n'):
    if len(s) > 8 and s[8] == ':':
        addr = s[0:8]
        print(addr, code, command)
        d[addr] = ('0000000'+str(data_n), '<invalid operation>')
        data_n += 1

print("pc:")
for s in run.split('\n'):
    if len(s) > 0 and s[-1] == '"':
        if s[1] != 'x':
            s = s[1:-2]
            h = hex(int(s, 2))[2:]
            print(h, '|', d[h][0], '|', d[h][1])
        else:
            print(s[1:-2])

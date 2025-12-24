APPLIED = 'APPLIED'
IRRELEVANT = 'IRRELEVANT'
STOP = 'STOP'

def rule(sub_in, sub_out):
    fmt = '['+sub_in+'] -> ['+sub_out+']'

    def apply_rule(string):
        if sub_in in string:
            return (APPLIED, fmt, string.replace(sub_in, sub_out, 1))
        else:
            return (IRRELEVANT, fmt, string) 
    return apply_rule

def rule_stop(sub_in, sub_out):
    fmt = '['+sub_in+'] -> ['+sub_out+']'

    def apply_rule(string):
        if sub_in in string:
            return (STOP, fmt, string.replace(sub_in, sub_out, 1))
        else:
            return (IRRELEVANT, fmt, string) 
    return apply_rule

def markov(string, rules):
    print(f'0.\t{string}\t->')
    for E in range(0, 100):
        applied = False
        for i, rule in enumerate(rules):
            (result, fmt, string) = rule(string)
            if result == APPLIED:
                print(f'{E+1}.\t{string}\t(rule {i+1} {fmt})\t->')
                applied = True
                break
            elif result == STOP:
                print(f'{E+1}.\t{string}\t(rule {i+1} {fmt})')
                print('RESULT: OK')
                return
        if not applied:
            print('RESULT: OK')
            return
    print('RESULT: overflow')

markov('abcdabaa', [
    rule('Nb', 'bN'),
    rule('Nc', 'cN'),
    rule('Nd', 'dN'),

    rule('Gb', 'bG'),
    rule('Gc', 'cG'),
    rule('Gd', 'dG'),

    rule('Ga', 'aN'),
    rule('Na', 'cG'),

    rule_stop('G', ''),
    rule_stop('N', ''),
    rule('', 'N')
])

markov('acbcdcccbcda', [
    rule('δa', 'aδ'),
    rule('δb', 'bδ'),
    rule('δc', 'cδ'),
    rule('δd', 'dδ'),
    rule('δμ', 'δ'),
    rule_stop('δ', ''),

    rule('cc', 'γ'),
    rule('γc', 'γ'),
    rule('γ', ''),
    rule('bc', 'μcb'),

    rule('', 'δ'),
]) # accbdcbda

markov('abbca', [
    rule('γa', 'aδaγ'),
    rule('γb', 'bδbγ'),
    rule('γc', 'cδcγ'),
    rule('γ', 'μ'),

    rule('δaμ', 'μa'),
    rule('δaa', 'aδa'),
    rule('δab', 'bδa'),
    rule('δac', 'cδa'),

    rule('δbμ', 'μb'),
    rule('δba', 'aδb'),
    rule('δbb', 'bδb'),
    rule('δbc', 'cδb'),

    rule('δcμ', 'μc'),
    rule('δca', 'aδc'),
    rule('δcb', 'bδc'),
    rule('δcc', 'cδc'),

    rule_stop('μ', ''),
    rule('', 'γ'),
]) # abbcaabbca

# гроб, недоделано
markov('abbca', [
    rule('γa', 'aAγ'),
    rule('γb', 'bBγ'),
    rule('γc', 'cCγ'),
    rule('γ', 'μ'),

    # rule('Aμ', 'μa'),
    # rule('Bμ', 'μb'),
    # rule('Cμ', 'μc'),
    rule('Ga', 'aG'),
    rule('Gb', 'bG'),
    rule('Gc', 'cG'),

    rule('GAμ', 'μa'),
    rule('GBμ', 'μB'),
    rule('GСμ', 'μС'),

    rule('GAA', 'AGA'),
    rule('GAB', 'BGA'),
    rule('GAC', 'CGA'),
    rule('GBA', 'AGB'),
    rule('GBB', 'BGB'),
    rule('GBC', 'CGB'),
    rule('GСA', 'AGС'),
    rule('GСB', 'BGС'),
    rule('GСC', 'CGС'),

    rule('Aa', 'aA'),
    rule('Ab', 'bA'),
    rule('Ac', 'cA'),
    rule('Ba', 'aB'),
    rule('Bb', 'bB'),
    rule('Bc', 'cB'),
    rule('Ca', 'aC'),
    rule('Cb', 'bC'),
    rule('Cc', 'cC'),

    # rule('A', 'GA'),
    # rule('B', 'GB'),
    # rule('C', 'GC'),

    rule_stop('μ', ''),

    rule('', 'γ'),
    rule('', 'G'),
]) # abbcaaсbba

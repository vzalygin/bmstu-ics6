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
    fmt = '['+sub_in+'] |-> ['+sub_out+']'

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

# Легенда:
# a,b,c -- исходный алфавит
# γ -- движущийся в конец маркер конца
# μ -- зафиксированный в конце маркер конца
# A,B,C -- движимые буквы (которые будут зеркалироваться)
# λ -- маркер зеркалирования, которые протаскивает первую движимую букву в конец
# ξ -- маркер зеркалирования, который отходит обратно за новой первой движимой буквой

markov('abbca', [
    rule('γa', 'aAγ'),  # Двигаем маркер конца в конец и создаем движимые символы
    rule('γb', 'bBγ'),
    rule('γc', 'cCγ'),

    rule('γ', 'μ'),     # Преобразовываем и оставляем маркер конца в конце

    rule('Aa', 'aA'),   # Двигаем большие буквы в конец, до маркера конца
    rule('Ab', 'bA'),
    rule('Ac', 'cA'),
    rule('Ba', 'aB'),
    rule('Bb', 'bB'),
    rule('Bc', 'cB'),
    rule('Ca', 'aC'),
    rule('Cb', 'bC'),
    rule('Cc', 'cC'),

    rule('λa', 'aλ'),   # Продвигаем маркер зеркалирования через неинтересные символы (которые не трогаем)
    rule('λb', 'bλ'),
    rule('λc', 'cλ'),

    rule('λAA', 'AλA'), # Протягиваем вместе с маркером зеркалирования первый движимый символ в конец до маркера конца (зеркалируем)
    rule('λAB', 'BλA'),
    rule('λAC', 'CλA'),
    rule('λBA', 'AλB'),
    rule('λBB', 'BλB'),
    rule('λBC', 'CλB'),
    rule('λCA', 'AλС'),
    rule('λСB', 'BλС'),
    rule('λСC', 'CλС'),

    rule('λAμ', 'ξμa'), # Перекидываем движимый символ через маркер конца и меняем тип зеркалирующего маркера (чтобы он пошел назад за след движимым символом)
    rule('λBμ', 'ξμb'),
    rule('λСμ', 'ξμc'),

    rule('Aξ', 'ξA'),   # Отодвигаем зеркалирующий маркер за следующим движимым символом
    rule('Bξ', 'ξB'),
    rule('Cξ', 'ξC'),

    rule('aξ', 'aλ'),   # Как дошли до текущего первого движимого символа, то меняем тип обратно, чтобы протащить движимый символ вперед
    rule('bξ', 'bλ'),
    rule('cξ', 'cλ'),

    rule_stop('λμ', ''),# Останаливаемся, когда закончились неперекинутые движимые символы (то есть между маркерами λ и μ нет букв A/B/C) 

    rule('', 'λγ'),     # Запускаем Шайтан-машину...
]) # abbca -> abbcaaсbba

for m in range(5, 19):
    for d in range(1, 100):
        a = 66.6 / 1000 * m / d
        b = 1 / a
        c = 4.595
        if 0 < b - c < 0.5:
            print(f"m {m} d {d}; freq {a} slack {b - c} act {b} exp {c}")

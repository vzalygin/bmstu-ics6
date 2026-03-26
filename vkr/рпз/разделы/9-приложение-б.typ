#import "../../version.typ": *

#show: приложение.with(буква: "Б", содержание: [ Фрагмент исходного кода ])

#листинг(```
/// Вывод (сцепка, chaining) общего типа для двух последовательных типов
///
/// Выходная конфигурация `lhs` должна быть сопоставлена с входной конфигурацией `rhs` (T-COMPOSE rule).
/// Сопоставление конфигураций -- попарное сопоставление переменных на верхушках стеков конфигураций. Сопоставление для цитат -- сопоставление их входных и выходных конфигураций.
/// В процессе сопоставления генерируются ограничения, для которых затем ищется наиболее общее решение -- унификация. Если решение не существует, то имеет место ошибка типизации.
fn chain(lhs: &Type, rhs: &Type, ctx: &mut Context) -> Result<Type, TypingError> {
    let (mut lhs, mut rhs) = (lhs.clone(), rhs.clone());
    ctx.emit_debug(format!("types lhs {} rhs {}", lhs, rhs));

    let mut constraints: Vec<Constraint> = constrain_chain(&lhs, &rhs, &mut ctx.step());
    let mut replacements: Vec<Replacement> = vec![];
    ctx.emit_debug(format!("constraints {}", fmt_vec(&constraints)));

    {
        let ctx = &mut ctx.step();
        while !constraints.is_empty() {
            let constraint = constraints.pop().unwrap();
            ctx.emit_debug(format!("solve constraint {}", constraint));
            let replacement = chain_solve(constraint)?;
            ctx.emit_debug(format!("by replacement {}", replacement));
            let mut new_constraints: Vec<Constraint> = vec![];
            for constraint in &constraints {
                let mut constraints = constraint
                    .clone()
                    .apply_replacement(&replacement, &mut ctx.step());
                new_constraints.append(&mut constraints);
            }
            replacements.push(replacement);
            constraints = new_constraints;
        }
    }

    ctx.emit_debug(format!("replacements {}", fmt_vec(&replacements)));

    for replacement in replacements {
        lhs = lhs.apply_replacement(&replacement);
        rhs = rhs.apply_replacement(&replacement);
    }

    ctx.emit_debug(format!("chained types lhs {} rhs {}", lhs, rhs));

    Ok(lhs.append(rhs.seq.into_iter().skip(1)))
}
```)[ Фрагмент исходного кода ]
const make_state_machine = (init_state, transitions, fall_back) => {
    let state = init_state;
    const make_next_state = (input) => {
        let transition = transitions[state][input];
        if (transition === undefined) {
            return fall_back;
        }
        const { next_state, output } = transition;
        state = next_state();
        return output;
    };
    return make_next_state;
};

function get_random_int(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

const make_number = () => {
    switch(get_random_int(1, 3)) {
        case 1: return MADE_ONE;
        case 2: return MADE_TWO;
        case 3: return MADE_THREE;
    }
};

const go_to = (next_state, output) => {
    return  {
        next_state: () => next_state,
        output: output
    };
};

const go_to_run = (next_state, output) => {
    return  {
        next_state: next_state,
        output: output
    };
};

let counter_value = 0;

const text = (str) => {
    document.getElementById("output").textContent = str;
};

// states
const BEGIN = 'BEGIN';
const MADE_ONE = 'MADE_ONE';
const MADE_TWO = 'MADE_TWO';
const MADE_THREE = 'MADE_THREE';
const GUESSED = 'GUESSED';

// inputs
const GO_TO_RESET = 'GO_TO_RESET';
const START_GAME = 'START_GAME';
const GUESS_ONE = 'GUESS_ONE';
const GUESS_TWO = 'GUESS_TWO';
const GUESS_THREE = 'GUESS_THREE';

// outputs
const RESET = () => { text('Автомат сброшен.'); }; 
const START = () => { 
    counter_value = 0;
    text('Число загадано. Очки: 0');
}; 
const LESS = () => { text(`Много! Очки: ${++counter_value}`); };
const GREATER = () => { text(`Мало! Очки: ${++counter_value}`); };
const GUESSED_RIGHT = () => { text(`Да! Итоговая сумма очков: ${++counter_value}`); };
const FORBIDDEN = () => { text('Неправильный ввод.'); };

const transitions = {
    BEGIN: {
        GO_TO_RESET: go_to(BEGIN, RESET),
        START_GAME: go_to_run(make_number, START)
    },
    MADE_ONE: {
        GO_TO_RESET: go_to(BEGIN, RESET),
        GUESS_ONE: go_to(GUESSED, GUESSED_RIGHT),
        GUESS_TWO: go_to(MADE_ONE, LESS),
        GUESS_THREE: go_to(MADE_ONE, LESS),
    },
    MADE_TWO: {
        GO_TO_RESET: go_to(BEGIN, RESET),
        GUESS_ONE: go_to(MADE_TWO, GREATER),
        GUESS_TWO: go_to(GUESSED, GUESSED_RIGHT),
        GUESS_THREE: go_to(MADE_TWO, LESS),
    },
    MADE_THREE: {
        GO_TO_RESET: go_to(BEGIN, RESET),
        GUESS_ONE: go_to(MADE_THREE, GREATER),
        GUESS_TWO: go_to(MADE_THREE, GREATER),
        GUESS_THREE: go_to(GUESSED, GUESSED_RIGHT),
    },
    GUESSED: {
        GO_TO_RESET: go_to(BEGIN, RESET),
    },
}

const state_machine = make_state_machine(BEGIN, transitions, FORBIDDEN);
set shell := ["lua", "-e"]

@default: problem_1

problem_1:
    require('fennel').install().dofile('problem_1.fnl')



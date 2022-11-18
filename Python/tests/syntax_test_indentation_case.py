# SYNTAX TEST reindent-unchanged "Packages/Python/Python.sublime-syntax"

match var:
    case 10:
        case = 1
    case 20:
        case = 2
    case "10":
        case = 3
    case 5 if True:
        case = 4
    case [1,2,3]:
        case = 5
    case (1,2,3,):
        case = 6
    case {"key": "value"}:
        case = 7


type literal = 
        | IntLit of int
        | FloatLit of float
        | BoolLit of bool
        | StringLit of string

type bexpr = 
        | BEQ         
        | BGEQ         
        | BLEQ 
        | BLT 
        | BGT 


type op1 = OP1Neg

type op2 = OP2Div

type opn = 
        | OPNAdd | OPNSub | OPNMult

type nexpr = 
        | NOp1 of op1*nexpr 
        | NOp2 of op2*nexpr
        | NOpN of opn*nexpr
        | NLit of literal
        | NVar of variable

type expr = 
        | EBoolExpr of bexpr*expr*expr
        | ENumExpr of nexpr
type stmt = 
        | STDecl if decl_stmt
        | STAssign of string*expr
        | STIfElse of expr*stmt list*stmt list 
        | STWhile of expr*stmt list
        | STRet of expr

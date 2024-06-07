
if exists("b:current_syntax")
	finish
endif


" check :h syn-match syn-keyword
syntax keyword coolConditional if then else fi

syntax keyword coolRepeat while loop pool

syntax keyword coolType Int String Object
syntax keyword coolLabel case of esac

syntax keyword coolKeyword let class inherits
syntax keyword coolKeyword new

syntax match coolComment "\v--.*$"

syntax match coolOperator "\v\<-"
syntax match coolOperator "\v\+"
syntax match coolOperator "\v-"
syntax match coolOperator "\v\="
syntax match coolOperator "\v\<"
syntax match coolOperator "\v\>"
syntax match coolNumber "\v[0-9]*"


syntax region coolComment start=/\v\(\*/ skip=/\v\\./ end=/\v\*\)/
syntax region coolString start=/\v"/ skip=/\v\\./ end=/\v"/


" for a list of syntax groups, type :h group-name
highlight link coolLabel Label
highlight link coolType Type
highlight link coolConditional Conditional
highlight link coolRepeat Repeat
highlight link coolKeyword Keyword
highlight link coolComment Comment
highlight link coolOperator Operator
highlight link coolString String
highlight link coolNumber Number
highlight link coolFunction Function
highlight link coolIdentifer Identifer


let b:current_syntax = "cool"

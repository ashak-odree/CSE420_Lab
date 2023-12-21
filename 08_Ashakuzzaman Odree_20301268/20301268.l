%option noyywrap

%{
#include<bits/stdc++.h>
using namespace std;


ofstream yyoutlog; //output filestream for log file

string loglist = ""; //list of tokens along with line numbers

// define necessary c++ variables and functions here (if any)
int scope = 1; //to keep track of line numbers
  //to keep track of line numbers
%}

/* Regular Definitions */
delim [ \v\r]


/* write regular expressions for whitespace and newline */
ws [" "]

newline [\n]
letter [a-zA-Z_]
digit [0-9]

/* ------------------ */

BIN_PREFIX  0[bB]
BIN_DIGITS  [01]+

OCT_PREFIX  0[oO]
OCT_DIGITS  [0-7]+

FLOAT_S [0-9]*\.[0-9]+[eE][+-]?[0-9]+

HEX_PREFIX  0[xX]
HEX_DIGITS  [0-9a-fA-F]+
tabs \t
/* --------:\n*\t---------- */


/* write regular expressions for id, float and integers */
id {letter}{letter}*{digit}*
float {digit}*"."{digit}+
integer {digit}*

%%
{newline} {
        	
			scope=1;
	}

{tabs} {
	scope++;
	}

{ws} { /* ignore whitespace */ }


if {
			loglist="Scope no "+to_string(scope)+": Token <IF> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}
elif {
			loglist="Scope no "+to_string(scope)+": Token <ELIF> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}
while {
			loglist="Scope no "+to_string(scope)+": Token <WHILE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
			
		}

else {
			loglist="Scope no "+to_string(scope)+": Token <ELSE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

for {
			loglist="Scope no "+to_string(scope)+": Token <FOR> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

range {
            loglist="Scope no "+to_string(scope)+": Token <RANGE> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

break {
			loglist="Scope no "+to_string(scope)+": Token <BREAK> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

not {
			loglist="Scope no "+to_string(scope)+": Token <NOT> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

catch {
			loglist="Scope no "+to_string(scope)+": Token <CATCH> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

try {
			loglist="Scope no "+to_string(scope)+": Token <TRY> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

except {
			loglist="Scope no "+to_string(scope)+": Token <EXCEPT> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

True {
			loglist="Scope no "+to_string(scope)+": Token <TRUE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

False {
			loglist="Scope no "+to_string(scope)+": Token <FALSE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

def {
			loglist="Scope no "+to_string(scope)+": Token <DEF> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
			
		}

return {
			loglist="Scope no "+to_string(scope)+": Token <RETURN> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		
		}

finally {
			loglist="Scope no "+to_string(scope)+": Token <FINALLY> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

and {
			loglist="Scope no "+to_string(scope)+": Token <AND> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

or {
			loglist="Scope no "+to_string(scope)+": Token <OR> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

print {
			loglist="Scope no "+to_string(scope)+": Token <PRINT> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
			

		}

in {
			loglist="Scope no "+to_string(scope)+": Token <IN> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

continue {
			loglist="Scope no "+to_string(scope)+": Token <CONTINUE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

pass {
			loglist="Scope no "+to_string(scope)+": Token <{PASS}> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

None {
			loglist="Scope no "+to_string(scope)+": Token <NONE> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

{id} {
            loglist="Scope no "+to_string(scope)+": Token <ID> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{integer} {
            loglist="Scope no "+to_string(scope)+": Token <CONST_INT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{float} {
            loglist="Scope no "+to_string(scope)+": Token <CONST_FLOAT> Lexeme "+yytext+" found"+"\n"+"\n";
            yyoutlog<<loglist;
        }

{BIN_PREFIX}{BIN_DIGITS} {
    loglist = "Scope no " + to_string(scope) + ": Token <CONST_BIN> Lexeme " + yytext + " found" + "\n" + "\n";
    yyoutlog << loglist;
}

{OCT_PREFIX}{OCT_DIGITS} {
    loglist = "Scope no " + to_string(scope) + ": Token <CONST_OCT> Lexeme " + yytext + " found" + "\n" + "\n";
    yyoutlog << loglist;
}

{HEX_PREFIX}{HEX_DIGITS} {
    loglist = "Scope no " + to_string(scope) + ": Token <CONST_HEX> Lexeme " + yytext + " found" + "\n" + "\n";
    yyoutlog << loglist;
}

{FLOAT_S} {
    loglist = "Scope no " + to_string(scope) + ": Token <CONST_FLOAT_S> Lexeme " + yytext + " found" + "\n" + "\n";
    yyoutlog << loglist;
}


"+"|"-" { /* to match two same operators use | */
			loglist="Scope no "+to_string(scope)+": Token <ADDOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"++"|"--" {
			loglist="Scope no "+to_string(scope)+": Token <INCOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"<"|">"|"==" {
			loglist="Scope no "+to_string(scope)+": Token <RELOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"="		{
			loglist="Scope no "+to_string(scope)+": Token <ASSIGNOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"&&"|"||" {
			loglist="Scope no "+to_string(scope)+": Token <LOGICOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"!" 	{
			loglist="Scope no "+to_string(scope)+": Token <NOT> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"(" 	{
			loglist="Scope no "+to_string(scope)+": Token <LPAREN> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

")" 	{
			loglist="Scope no "+to_string(scope)+": Token <RPAREN> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
			 
		}

"{" 	{
			loglist="Scope no "+to_string(scope)+": Token <LCURL> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"}" 	{
			loglist="Scope no "+to_string(scope)+": Token <RCURL> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"[" 	{
			loglist="Scope no "+to_string(scope)+": Token <LTHIRD> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"]" 	{
			loglist="Scope no "+to_string(scope)+": Token <RTHIRD> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

"," 	{
			loglist="Scope no "+to_string(scope)+": Token <COMMA> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}

":" 	{
			loglist="Scope no "+to_string(scope)+": Token <COLON> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}
"<=" 	{
			loglist="Scope no "+to_string(scope)+": Token <RELOP> Lexeme "+yytext+" found"+"\n"+"\n";
			yyoutlog<<loglist;
		}
">=" {
    loglist = "Scope no " + to_string(scope) + ": Token <RELOP> Lexeme " + yytext + " found" + "\n" + "\n";
    yyoutlog << loglist;
}

%%

int main(int argc, char *argv[])
{
	

	if(argc != 2) //check if file name is given
	{
        cout<<"Please input file name"<<endl;
		return 0;
	}

	yyin = fopen(argv[1], "r"); //the file to be read must be assigned to yyin

	yyoutlog.open("20301268.txt", ios::trunc); // remember to rename the log file as mentioned in the spec

	if(yyin == NULL) // file does not exist
	{
        cout<<"Wrong File Name"<<endl;
		return 0;
	}

	yylex(); // start reading the input file in a loop

	

	yyoutlog.close(); // close the log file

	fclose(yyin); // close the input file
}
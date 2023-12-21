/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IF = 258,
     ELSE = 259,
     FOR = 260,
     ID = 261,
     LPAREN = 262,
     RPAREN = 263,
     LCURL = 264,
     RCURL = 265,
     ADDOP = 266,
     ASSIGNOP = 267,
     DECOP = 268,
     INCOP = 269,
     LOGICOP = 270,
     MULOP = 271,
     RELOP = 272,
     DOUBLE = 273,
     COMMA = 274,
     CONST_FLOAT = 275,
     CONST_INT = 276,
     SEMICOLON = 277,
     LTHIRD = 278,
     RTHIRD = 279,
     RANGE = 280,
     NOT = 281,
     CATCH = 282,
     WHILE = 283,
     DO = 284,
     BREAK = 285,
     TRY = 286,
     EXCEPT = 287,
     TRUE = 288,
     FALSE = 289,
     DEF = 290,
     FINALLY = 291,
     AND = 292,
     OR = 293,
     PRINT = 294,
     IN = 295,
     PASS = 296,
     NONE = 297,
     CONTINUE = 298,
     RETURN = 299,
     INT = 300,
     FLOAT = 301,
     CHAR = 302,
     VOID = 303,
     SWITCH = 304,
     CASE = 305,
     DEFAULT = 306,
     PRINTLN = 307
   };
#endif
/* Tokens.  */
#define IF 258
#define ELSE 259
#define FOR 260
#define ID 261
#define LPAREN 262
#define RPAREN 263
#define LCURL 264
#define RCURL 265
#define ADDOP 266
#define ASSIGNOP 267
#define DECOP 268
#define INCOP 269
#define LOGICOP 270
#define MULOP 271
#define RELOP 272
#define DOUBLE 273
#define COMMA 274
#define CONST_FLOAT 275
#define CONST_INT 276
#define SEMICOLON 277
#define LTHIRD 278
#define RTHIRD 279
#define RANGE 280
#define NOT 281
#define CATCH 282
#define WHILE 283
#define DO 284
#define BREAK 285
#define TRY 286
#define EXCEPT 287
#define TRUE 288
#define FALSE 289
#define DEF 290
#define FINALLY 291
#define AND 292
#define OR 293
#define PRINT 294
#define IN 295
#define PASS 296
#define NONE 297
#define CONTINUE 298
#define RETURN 299
#define INT 300
#define FLOAT 301
#define CHAR 302
#define VOID 303
#define SWITCH 304
#define CASE 305
#define DEFAULT 306
#define PRINTLN 307



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

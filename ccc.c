#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdbool.h>

typedef enum {
    TK_RESERVED, // symbol
    TK_NUM, // integer
    TK_EOF, // EOF
} TokenKind;

typedef struct Token Token;

struct Token {
    TokenKind kind; // type of token
    Token *next; // next token
    int val; // value of TK_NUM token
    char *str; // strings of token
};

Token *token; // current token

char *user_input; // input program

// reports an error
void error_at(char *loc, char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);

    int pos = loc - user_input;
    fprintf(stderr, "%s\n", user_input);
    fprintf(stderr, "%*s", pos, ""); // print pos spaces
    fprintf(stderr, "^ ");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    exit(1);
}

// if the next token is an expected symbol, then assigns next token and returns true
// otherwise returns false
bool consume(char op) {
    if (token->kind != TK_RESERVED || token->str[0] != op)
        return false;
    token = token->next;
    return true;
}

// if the next token is an expected symbol, then assigns next token
// otherwise reports an error
void expect(char op) {
    if (token->kind != TK_RESERVED || token->str[0] != op)
        error_at(token->str, "expected '%c'", op);
    token = token->next;
}

// if the next token is an integer, then assigns next token
// otherwise reports an error
int expect_number() {
    if (token->kind != TK_NUM)
        error_at(token->str, "expected a number");
    int val = token->val;
    token = token->next;
    return val;
}

bool at_eof() {
    return token->kind == TK_EOF;
}

// create a new token and assign a newly created token to cur's next token
Token *new_token(TokenKind kind, Token *cur, char *str) {
    Token *tok = calloc(1, sizeof(Token));
    tok->kind = kind;
    tok->str = str;
    cur->next = tok;
    return tok;
}

// tokenize input p string and return it
Token *tokenize() {
    char *p = user_input;
    Token head;
    head.next = NULL;
    Token *cur = &head;

    while (*p) {
        // skip empty string
        if (isspace(*p)) {
            p++;
            continue;
        }

        if (*p == '+' || *p == '-') {
            cur = new_token(TK_RESERVED, cur, p++);
            continue;
        }

        if (isdigit(*p)) {
            cur = new_token(TK_NUM, cur, p);
            cur->val = (int) strtol(p, &p, 10);
            continue;
        }

        error_at(token->str, "Cannot tokenize");
    }

    new_token(TK_EOF, cur, p);
    return head.next;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Invalid number of argument");
        return 1;
    }

    // tokenize
    user_input = argv[1];
    token = tokenize();

    // output the first part of assembly
    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");

    // check if the first string is integer, and assign it
    printf(" mov rax, %d\n", expect_number());

    while (!at_eof()) {
        if (consume('+')) {
            printf(" add rax, %d\n", expect_number());
            continue;
        }

        expect('-');
        printf(" sub rax, %d\n", expect_number());
    }

    printf(" ret\n");
    return 0;
}
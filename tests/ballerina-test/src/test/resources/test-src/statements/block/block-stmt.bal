function testReturnStmtLocation1() {
    int a = 2;
    if (a > 0) {
        string s1 = "hello if";
    } else {
        string s2 = "hello else";
    }
    return;
}

function testReturnStmtLocation2() returns (int) {
    int a = 2;
    if (a > 0) {
        string s1 = "hello if";
    } else {
        string s2 = "hello else";
    }
    return a;
}

function testReturnStmtLocation3() {
    int a = 2;
    if (a > 0) {
        string s1 = "hello if";
        return;
    } else {
        string s2 = "hello else";
    }
}

function testReturnStmtLocation4() {
    int a = 2;
    while(a < 4) {
        a = a + 1;
        if (a == 3) {
            return;
        }
    }
}

function testCommentAfterReturnStmt() returns (int) {
    int a = 2;
    if (a > 0) {
        string s1 = "hello if";
        return 1;
        //comment after return stmt
    } else {
        string s2 = "hello else";
    }
    return a;
    //comment after return stmt
}
LuaPG
=====

LuaPG

// 编译时要采用动态链接，因为 -llua 和 -llualib两个库找不到
g++ 24.1.cpp -shared -o 24.1  -fpic -I/usr/include/luajit-2.0/


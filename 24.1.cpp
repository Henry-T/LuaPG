
// #include <stdio.h>
// #include <string.h>

//extern "C"
//{
    // #include "lua.hpp"
    // #include "lauxlib.h"
    // #include "lualib.h"
//}
// using namespace std;

// int main()
// {
    // char buff[256];
    // int error;
    // lua_State *L = luaL_newstate();
    // luaL_openlibs(L);
    
    // while(fgets(buff, sizeof(buff), stdin) != NULL)
    // {
    //     error = luaL_loadbuffer(L, buff, strlen(buff), "line") || lua_pcall(L, 0, 0, 0);
    //     if (error) {
    //         fprintf(stderr, "%s", lua_tostring(L, -1));
    //         lua_pop(L, 1);
    //     }
    // }
    
    // lua_close(L);
    // return 0;
// }

#include <iostream>
using namespace std;

int main()
{
    cout<<"eee"<<endl;
}
# googletest-starter-project

Useful starting point obtained from [https://github.com/lasote/clion-conan-consumer](https://github.com/lasote/clion-conan-consumer)

The current version works for Release Visual Studio 2017 builds.

However, a Visual Studio 2017 Debug build gives:

    2>gtest.lib(gtest-all.obj) : error LNK2038: mismatch detected for '_ITERATOR_DEBUG_LEVEL': value '0' doesn't match value '2' in main.obj
    2>gtest.lib(gtest-all.obj) : error LNK2038: mismatch detected for 'RuntimeLibrary': value 'MD_DynamicRelease' doesn't match value 'MDd_DynamicDebug' in main.obj
    2>LINK : warning LNK4098: defaultlib 'MSVCRT' conflicts with use of other libs; use /NODEFAULTLIB:library
    2>C:\Users\Clare\Documents\Programming\GitHub\googletest-starter-project\build64\bin\tests.exe : fatal error LNK1319: 2 mismatches detected

From looking in the conan user directory, it seems that the gtest debug libraries have not been built

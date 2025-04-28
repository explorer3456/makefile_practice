# Makefile project
> section 5.
**Embedded project hierarchy**
> simple embedded project source tree
> - common ( common API for driver and application ).
> - drivers ( device driver ).
> - app ( top level program ).
> - Makefile ( top level makefile).
> and each of directory contains src dir and inc dir.

# Design makefile**
> step out of coding, think about dependencies.
>
**External dependencies**
> * external tool dependencies
> * external toolchain depenencies
**Internal dependencies**
> * list of all sources to get header dependencies with object files. ( GCC provides -MD option to create .d files).
> * list of all object files to link to generate final ELF file.
**Toolchain variable**
> toolchain variable( CFLAGS, LDFLAGS ).
> * CFLAGS should include path of header files location.
> CC, LD, AS, .. etc should be defined properly.
**input / output source variable**
> input source directory, and build directroy that all the object files go.
> and build directory that final output goes.
> * build/
> * build/objs/

# Important makefile design
**How do we get list of source files ?**

# To Do
**Try seperate makefile per module**
> Final makefile contains all the build rules, how about seperate the rule into
> module.mk ?

	

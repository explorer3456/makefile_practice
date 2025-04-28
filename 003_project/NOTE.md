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
**Build system feature**
> build system includes not only just build sources, but also includes remove output files,
> copy output files, check version .. etc


# Makefile design steps
> here are simple guideline to design makefile
**Step1. Define toolchain, or external tools that is required**
> define path of any toolchain including external one in makefile variable
**Step2. Define debug target to debug makefile**
> define .PHONY: debug target to print debug data of makefile
**Step3. Define lists of all input source files in project**
> you can define directory name variable to do this. ( ex) common, drivers, app .. etc)
> anyway, the list is needed because it can be used to define the object file list
**Step4. Define output directory and object file list**
> final goal is generate final.elf file. before that, we need to put all the objects file into
> some build/objs directory.
> so define the output directory and object file list using input source file lists.
**Step5. initialize CFLAGS and LDFLAGS**
> CLFAGS and LDFLAGS has default option such as build with gdb debug symbol or dwarf information
> If you use linker script, linker script can be added to LDFLAGS. 
> Important, the path to header files must be added to CFLAGS.
**STep6. Add header dependency**
> with -MDD option in CFLAGS, gcc automatically generate header dependency info file(*.d).
> you should include that files to Makefile so that when header file changes, 
> source code that is related to header file can be recompiled.
 

# To Do
**Try seperate makefile per module**
> Final makefile contains all the build rules, how about seperate the rule into
> module.mk ?

	

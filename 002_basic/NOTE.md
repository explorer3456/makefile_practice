# Makefile build system
> section3, 4
**Makefile important feature**
> 1. incremental build
> 2. automatic scan and detection of modification
> 3. Recursion.
> 4. ability to use environment variables.
> 5. support parallelism
> * use "j" option to run parallel make.
> 6. low level control over rules and dependencies

**Makefile parallelism**
> you should define rules properly so that make build system can
> build modules in parallel.
```
example will be updated 
```
**Makefile inclusion**
> try to seperate modules and define "mk" file to each modules
```
parent_project
- makefile
module_a
- module_a.mk
module_b
- module_b.mk
```

**Makefile buildsystem**
> makefile is focused on primarilly build itself.
> however, buildsystem has more feature other than just building.
> it includes build, copy, modify, remove for dealing with final software pacakges.
>
> build system with makefile
> * Makefile - for build
> * Dependency check - makefile rule
> * Tools ( cp, sed, awk .. etc)

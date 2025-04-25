# basic conecpt of makefile
> section 1,2
>
**Makefile basic**
> here are some basic makefile syntax
```
$@ : all target
$< : all the dependencies
$^ : all the .c sources

%.o : %.c // foo.o and foo.c


```
**Makefile prefix**
> some makefile syntax
```
- : ignore errors
@ : don't print command
+ : run even if make is in don't execute mode

%.o: %.c
    @echo "compiling"
    -gcc $< $@

```


> useful makefile syntax
```
# only files with extension of C file
$(filter %.c, $(files)) .

strip

```

**Makefile inclusion**
> seperate makefile into mk files.
```
-include example.mk

```

**Makefile options**
> some options for makefile
> override system environment variable
```
-e, --environment-overrrids  # override system environment variable
```
> Makefile ignored some build rules because those are already built.
> using -B option, all rules are always triggered.
```
-B, --always-make # Makefile ignored some build rules if some rules are already fulfilled.
```
> make silent build
```
-s, --silent
```


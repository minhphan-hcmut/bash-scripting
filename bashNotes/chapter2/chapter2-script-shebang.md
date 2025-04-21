# Section 2.1: Env shebang
- In the first line of a script there is maybe 
    ```
        #!/usr/bin/env bash
    ```
- The script must have exectution permission
- This tell the kernel to run the script with bash but find the bash in the evironment variable PATH for me
- More flexible between OS without worry to /bin/bash is different
- if user run the file like this
    ``` 
        bash ./hello-world.sh
    ```
- Then the env shebang is ignored
# Section 2.2: Direct shebang
- To run a script file with bash interpreter, the first line must indicate the absolute path to the bash executable to use
    ```
        #!/bin/bash
    ```
- The script is resolved and used only if a script is directly launch like this -> ./script.sh
- If user run the script like this "bash ./script.sh" -> then the first line shebang is ignored

# Section 2.3: Other shebangs
- There are two kinds of programs the kernel knows of.
    - A binary program is identified by it's ELF(ExtenableLoadableFormat) header, which is usually produced by a compiler.
    - A scripts of any kind.
- If a file starts with the first line like "#!" then the next string has to be the name of interpreter
- Example:
    ```
        #!/bin/bash something wrong
        echo "This line will never be printed"
    ```
- bash tries to execute its argument "something" and "wrong" which doesn't exist
- Another example:
    ```
        #"/bin/echo something wrong
        # and now call this script named "thisscript" like so:
        # thisscript one two
        # the output will be:
        something wrong ./thisscript one two
    ```
- Some programs like awk use this technique to run longer scripts residing in a disk file
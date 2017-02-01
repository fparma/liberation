# Building a Liberation Mission File

## Dependencies
The following Dependencies are Required:
* MSYS2 or MSYS Supplied by https://git-scm.com/download/win
* Mikeros PBO Tools
* GPP (Either precompiled bin from the deps folder or compile it yourself from https://github.com/logological/gpp/)

Attention! gpp.exe and mikeros pbo tools need to be in your %PATH% Environment variable.

## Building the mission
The mission of your choice can be built by opening up a terminal (MSYS/MSYS2 Shell) and navigating into the main repository Folder. Then execute the following command:
```sh
# Where <mission> is the name of the "mission" you want to compile.
./make-<mission>.sh

# Full example:
./make-nogovo.sh
```

# Explaining whats going on in the build process
...
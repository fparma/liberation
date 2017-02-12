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
# Builds mission folder for all maps beginning with fp_* in the src folder.
./make.sh

# Builds missions just like above but also generates a PBO File.
./make.sh --pbo
```

# Explaining whats going on in the build process

First, the shell script copies the .Default folder from the src/ folder, which contains the entire base of the mission and puts it in the dist/ folder.
After that, depending on which script you ran, it will copy the customization files, which will be placed over the Default folder contents. Allowing individual missions to override files if required.

After that, the pre-processing happens. the gpp.exe tool is responsible for the preprocessing. It is a general purpose pre-processor,  which handles includes and macros outside of arma's macro/preprocessor system. If you don't know what a preprocessor or macro preprocessor is, you can read more here: https://en.wikipedia.org/wiki/Preprocessor

After the macro preprocessing happens, we rename the folder with timestamp (if set in the shell script) and lint + build the PBO.

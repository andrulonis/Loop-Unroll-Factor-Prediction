Repository of the practical part of thesis about loop unroll factor choice in hardware design and software compilation. The repository contains majority of the files created and used, the parts that use `myopt` can also be replaced with just using `opt` from Clang. If not, myopt was an `opt` wrapper provided by the following framework from a Compiler Construction course: https://bitbucket.org/vusec/vu-coco-public/src/master/. Some scripts need to be placed in specific directories to work correctly.

Hardware part relies on the ALADDIN tool from https://github.com/harvard-acc/ALADDIN, it can be installed the simplest as a docker container, all is described in the repository.

Reference: Aladdin: A Pre-RTL, Power-Performance Accelerator Simulator Enabling Large Design Space Exploration of Customized Architectures, Yakun Sophia Shao, Brandon Reagen, Gu-Yeon Wei and David Brooks, International Symposium on Computer Architecture, June, 2014

#!/bin/bash

cd ~/android/evolutionx/vendor/evolution/build/target/product/security

    ../../../../../../development/tools/make_key releasekey '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key platform '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key shared '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key media '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key networkstack '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key sdk_sandbox '/CN=PsybernetiQ/'
    ../../../../../../development/tools/make_key bluetooth '/CN=PsybernetiQ/'

    
openssl genrsa 4096 | openssl pkcs8 -topk8 -scrypt -out avb.pem
    
    ../../../../../../external/avb/avbtool extract_public_key --key avb.pem --output avb_pkmd.bin

signify-openbsd -G -n -p factory.pub -s factory.sec

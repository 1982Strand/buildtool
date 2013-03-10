#!/bin/bash

echo ""
echo "[--- Re-sign apks ---]"
echo ""
    for apk in `find apk_in/decompiled/*.apk/dist/ -name "*.apk"`
    do
        echo "Signing $apk..."
        java -jar ~/buildtool/signing/signapk.jar ~/buildtool/signing/testkey.x509.pem ~/buildtool/signing/testkey.pk8 $apk $apk.signed
        zipalign 4 $apk.signed $apk.signed.aligned
        mv $apk.signed.aligned $apk
        rm $apk.signed
    done
cp -f ~/buildtool/apk_in/decompiled/*apk/dist/*apk ~/buildtool/apk_out/

#!/bin/bash

echo ""
echo "[--- Re-sign apks (Test Keys) ---]"
echo ""
    for apk in `find $DEC/*.apk/dist/ -name "*.apk"`
    do
        echo "Signing $apk..."
        java -jar $SIGN/signapk.jar $SIGN/testkey.x509.pem $SIGN/testkey.pk8 $apk $apk.signed
        zipalign 4 $apk.signed $apk.signed.aligned
        mv $apk.signed.aligned $apk
        rm $apk.signed
    done
cp -f $DEC/*apk/dist/*apk $OUT

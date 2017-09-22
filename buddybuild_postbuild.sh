#!/usr/bin/env bash

echo "Uploading IPAs and dSYMs to Crashlytics"

CRASHLYTICS_API_KEY=409f9a467a1358ae828c44fe44e8193df9d2c2ab
echo "Uploading to Fabric via command line"  
$BUDDYBUILD_WORKSPACE/Pods/Fabric/upload-symbols -a $CRASHLYTICS_API_KEY -p ios $BUDDYBUILD_PRODUCT_DIR

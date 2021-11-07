#!/bin/sh
#
# satria
# flutter-netlify-build.sh
# Created by Cong Fandi on 7/11/2021
# email 	: me@congfandi.com
# website 	: https://www.thengoding.com
# Copyright © 2021 Cong Fandi. All rights reserved.
#
#

# Get flutter
git clone https://github.com/flutter/flutter.git
FLUTTER=flutter/bin/flutter

# Configure flutter
FLUTTER_CHANNEL=master
FLUTTER_VERSION=v2.5.3
$FLUTTER channel $FLUTTER_CHANNEL
$FLUTTER version $FLUTTER_VERSION

# Build flutter for web
$FLUTTER build web --release

echo "OK"
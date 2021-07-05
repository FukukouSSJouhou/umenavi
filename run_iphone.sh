#!/usr/bin/env bash
gitidkun=`git rev-parse --short HEAD`
dtkun=`date "+%Y%M%D %H%m%s"`
Buildid="${gitidkun} ${dtkun}"
flutter run --release --dart-define=APPVER=$Buildid

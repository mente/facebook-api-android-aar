#!/bin/bash

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` versionName"
  exit 1
fi  

version=$1
./gradlew clean sources javadocJarRelease && git checkout gh-pages && mvn install:install-file \
	-Dfile=build/libs/facebook-api-android-aar.aar\
	-DgroupId=com.facebook\
	-DartifactId=facebook-android-sdk\
	-Dversion=$version\
	-Dpackaging=aar\
	-Dsources=build/libs/facebook-api-android-aar-sources.jar\
	-Djavadoc=build/libs/facebook-api-android-aar-javadoc.jar\
	-DlocalRepositoryPath=./
facebook-api-android-aar
========================

Facebook Android SDK library built with gradle in aar format for usage with android gradle build system. Versions included: 3.0.2, 3.5.0, 3.5.2, 3.6.0, 3.7.0, 3.8.0, 3.14.1

How to use
=======================
Before you can get aar you should checkout [facebook-android-sdk](https://github.com/facebook/facebook-android-sdk) submodule. Overall build process including build is straightforward:
```bash
  $ git submodule update --init
  ...
  $ ./gradlew build
  ...
```

When build is finished aar file will be located in `build/libs`.

Maven artifact
======================
For a lazy people (such as I) there's a maven repository with already built facebook artifact located at http://mente.github.io/facebook-api-android-aar . `build.gradle` example:
```groovy
buildscript {
    repositories {
        mavenCentral()
    }

    dependencies {
        classpath 'com.android.tools.build:gradle:+'
    }
}

repositories {
    mavenCentral()
    mavenLocal()
    maven {
        url "http://mente.github.io/facebook-api-android-aar"
    }
}

apply plugin: 'android'
dependencies {
    compile 'com.facebook:facebook-android-sdk:+@aar'
    //your other dependencies
}

android {
  //android build setup
}
```

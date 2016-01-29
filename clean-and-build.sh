#!/bin/bash
rm -rf bin &&
rm -rf libs &&
rm -rf obj &&
rm -rf gen &&
/opt/android-ndk-r10e/ndk-build clean &&
/opt/android-ndk-r10e/ndk-build &&
ant clean &&
ant debug 

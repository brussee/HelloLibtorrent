#!/bin/bash
rm -rf bin &&
rm -rf libs &&
rm -rf obj &&
rm -rf gen &&
/opt/android-ndk-r10e/ndk-build NDK_DEBUG=1 clean &&
/opt/android-ndk-r10e/ndk-build NDK_DEBUG=1 &&
ant clean &&
ant debug 

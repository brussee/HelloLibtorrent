# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)


# ------------------------------------------
# Define prebuilt shared libboost system library
include $(CLEAR_VARS)
LOCAL_MODULE    := libboost_system
LOCAL_SRC_FILES := libs/libboost_system.so
include $(PREBUILT_SHARED_LIBRARY)

# ------------------------------------------
# Define prebuilt shared libtorrent library
include $(CLEAR_VARS)
LOCAL_MODULE    := libtorrent
LOCAL_SRC_FILES := libs/libtorrent.so
include $(PREBUILT_SHARED_LIBRARY)

# ------------------------------------------
# Build the hello libtorrent library
include $(CLEAR_VARS)
LOCAL_MODULE     := hello

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES  := hello.cpp

LOCAL_SHARED_LIBRARIES := libtorrent libboost_system

include $(BUILD_SHARED_LIBRARY)



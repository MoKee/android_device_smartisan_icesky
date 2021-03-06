#
# Copyright (C) 2018 The MoKee Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := Fence.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libui \
    libgui \
    libutils \
    libcutils

LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := SensorManager.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libui \
    libgui \
    libutils \
    libcutils

LOCAL_MODULE := libshim_mmcamera2
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := MediaBuffer.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libui \
    libgui \
    libutils \
    libcutils \
    libstagefright_foundation

LOCAL_MODULE := libshim_ims
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

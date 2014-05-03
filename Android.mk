LOCAL_PATH:=		$(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:=		paxctl-ng
LOCAL_MODULE_TAGS:=	optional
LOCAL_SRC_FILES:=	src/paxctl-ng.c

LOCAL_SHARED_LIBRARIES:= libc
LOCAL_STATIC_LIBRARIES:= libattr

LOCAL_CFLAGS:=		-DXTPAX
LOCAL_C_INCLUDES:=	$(LOCAL_PATH)/include \
			external/libattr

include $(BUILD_EXECUTABLE)

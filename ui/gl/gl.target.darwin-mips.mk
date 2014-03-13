# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := ui_gl_gl_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,skia_skia_gyp)/skia.stamp \
	$(call intermediates-dir-for,GYP,third_party_mesa_mesa_headers_gyp)/mesa_headers.stamp \
	$(call intermediates-dir-for,GYP,ui_gl_gl_jni_headers_gyp)/gl_jni_headers.stamp

### Rules for action "generate_gl_bindings":
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc: $(LOCAL_PATH)/ui/gl/generate_bindings.py $(LOCAL_PATH)/third_party/mesa/src/include/GL/glext.h $(LOCAL_PATH)/third_party/khronos/GLES2/gl2ext.h $(LOCAL_PATH)/ui/gl/GL/glextchromium.h $(LOCAL_PATH)/gpu/GLES2/gl2chromium.h $(LOCAL_PATH)/gpu/GLES2/gl2extchromium.h $(LOCAL_PATH)/third_party/khronos/EGL/eglext.h $(LOCAL_PATH)/ui/gl/EGL/eglextchromium.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/wglext.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/glx.h $(LOCAL_PATH)/third_party/mesa/src/include/GL/glxext.h $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: ui_gl_gl_gyp_gl_target_generate_gl_bindings ($@)"
	$(hide)cd $(gyp_local_path)/ui/gl; mkdir -p $(gyp_shared_intermediate_dir)/ui/gl; python generate_bindings.py "--header-paths=../../third_party/khronos:../../third_party/mesa/src/include" "$(gyp_shared_intermediate_dir)/ui/gl"

$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_egl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_gl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_glx.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_osmesa.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;
$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_wgl.h: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.cc \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_wgl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_api_autogen_wgl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_interface_autogen_wgl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_egl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_gl.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_glx.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_osmesa.h \
	$(gyp_shared_intermediate_dir)/ui/gl/gl_mock_autogen_wgl.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
$(gyp_intermediate_dir)/gl_bindings_autogen_gl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_gl.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/gl_bindings_autogen_mock.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_mock.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/gl_bindings_autogen_osmesa.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_osmesa.cc
	mkdir -p $(@D); cp $< $@
$(gyp_intermediate_dir)/gl_bindings_autogen_egl.cc: $(gyp_shared_intermediate_dir)/ui/gl/gl_bindings_autogen_egl.cc
	mkdir -p $(@D); cp $< $@
LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/gl_bindings_autogen_gl.cc \
	$(gyp_intermediate_dir)/gl_bindings_autogen_mock.cc \
	$(gyp_intermediate_dir)/gl_bindings_autogen_osmesa.cc \
	$(gyp_intermediate_dir)/gl_bindings_autogen_egl.cc

GYP_COPIED_SOURCE_ORIGIN_DIRS := \
	$(gyp_shared_intermediate_dir)/ui/gl

LOCAL_SRC_FILES := \
	ui/gl/android/gl_jni_registrar.cc \
	ui/gl/android/scoped_java_surface.cc \
	ui/gl/android/surface_texture.cc \
	ui/gl/android/surface_texture_listener.cc \
	ui/gl/gl_bindings_skia_in_process.cc \
	ui/gl/gl_context.cc \
	ui/gl/gl_context_android.cc \
	ui/gl/gl_context_stub.cc \
	ui/gl/gl_fence.cc \
	ui/gl/gl_gl_api_implementation.cc \
	ui/gl/gl_image.cc \
	ui/gl/gl_image_android.cc \
	ui/gl/gl_image_shm.cc \
	ui/gl/gl_image_stub.cc \
	ui/gl/gl_implementation.cc \
	ui/gl/gl_implementation_android.cc \
	ui/gl/gl_interface.cc \
	ui/gl/gl_osmesa_api_implementation.cc \
	ui/gl/gl_share_group.cc \
	ui/gl/gl_state_restorer.cc \
	ui/gl/gl_surface.cc \
	ui/gl/gl_surface_stub.cc \
	ui/gl/gl_surface_osmesa.cc \
	ui/gl/gl_switches.cc \
	ui/gl/gpu_switching_manager.cc \
	ui/gl/scoped_binders.cc \
	ui/gl/scoped_make_current.cc \
	ui/gl/sync_control_vsync_provider.cc \
	ui/gl/egl_util.cc \
	ui/gl/gl_context_egl.cc \
	ui/gl/gl_surface_egl.cc \
	ui/gl/gl_egl_api_implementation.cc \
	ui/gl/gl_image_egl.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unknown-pragmas \
	-EL \
	-mhard-float \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DGL_IMPLEMENTATION' \
	'-DGL_GLEXT_PROTOTYPES' \
	'-DEGL_EGLEXT_PROTOTYPES' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/skia_library/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/third_party/swiftshader/include \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-uninitialized \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unknown-pragmas \
	-EL \
	-mhard-float \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

MY_DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DGL_IMPLEMENTATION' \
	'-DGL_GLEXT_PROTOTYPES' \
	'-DEGL_EGLEXT_PROTOTYPES' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/skia_library/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/third_party/swiftshader/include \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-uninitialized \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-EL \
	-Wl,--no-keep-memory \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--fatal-warnings \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-EL \
	-Wl,--no-keep-memory \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--fatal-warnings \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES :=

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libskia \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: ui_gl_gl_gyp

# Alias gyp target name.
.PHONY: gl
gl: ui_gl_gl_gyp

include $(BUILD_STATIC_LIBRARY)

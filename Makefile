vendor := $(srctree)/$(src)

ifeq ($(CONFIG_M2468_DTBS),y)
	subdir-y += meizu
else

ifneq "$(wildcard $(vendor)/qcom)" ""
	subdir-y += qcom
endif

endif

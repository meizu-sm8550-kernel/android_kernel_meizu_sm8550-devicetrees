ifeq ($(CONFIG_M2468_DTBS), y)

M2468_BASE_DTB += m2468-kalama.dtb

M2468_BOARDS += \
    m2468-overlay-00.dtbo \
    m2468-overlay-01.dtbo \
    m2468-overlay-02.dtbo \
    m2468-overlay-03.dtbo \
    m2468-overlay-04.dtbo

kalama-dtb-$(CONFIG_ARCH_KALAMA) += $(M2468_BASE_DTB) $(M2468_BOARDS)
kalama-overlays-dtb-$(CONFIG_ARCH_KALAMA) += $(M2468_BASE_DTB) $(M2468_BOARDS)
dtb-y += $(kalama-dtb-y)

endif

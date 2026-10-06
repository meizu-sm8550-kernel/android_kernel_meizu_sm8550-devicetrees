# Only M2468 DTB0 and its five ordered overlays.
dtb-y := m2468.dtb m2468-overlay-00.dtbo m2468-overlay-01.dtbo m2468-overlay-02.dtbo m2468-overlay-03.dtbo m2468-overlay-04.dtbo
kalama-overlays-dtb-y := $(dtb-y)
always-y := $(dtb-y)
clean-files := *.dtb *.dtbo

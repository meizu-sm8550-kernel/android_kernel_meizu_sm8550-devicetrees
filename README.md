# Meizu 21 Note (M2468) · LineageOS 23.2

Note DTB0 和五项 DTBO 的兼容重建源码，以及仅选择 M2468 的 Kbuild 入口。

本仓库由 [kernel_manifest](https://github.com/meizu-sm8550-kernel/kernel_manifest) 一并拉取，分支 `lineage-23.2`。请使用其中的固定 manifest 和构建说明；不需要另套本地接入补丁。

上游：[来源](https://github.com/LineageOS/android_kernel_qcom_sm8550-devicetrees.git)，基线提交 `ab13cc3f28acfca873b7e3f0f3e3bb49d20812b9`。保留原有许可证及版权声明。这里的 ROM 基准是 LineageOS 23.2；SoC内核基准仍是 Android 13 / Linux 5.15，二者不是同一版本号。

本地已完成核心、385个模块及六份Note DT的构建/静态验证，基础模块CRC配套；尚未完成整套ROM构建或真机启动验证。不得混用stock ko、伪造CRC/vermagic或关闭模块检查。

Note局部HBM目前限部分亮屏模式；AOD、完整ready、手势/指纹、充电扩展与其它设备运行行为仍待验证。源码存在或编译通过不代表这些功能可用。

DTS按stock硬件描述的原始属性字节重建，不是原厂最初DTS；不包含live FDT。全literal格式避免旧dtc重复fixup及转义差异，保留原属性与五个overlay索引。实际Android DTBO入口在device仓库的dtbo.mk/dtbo.cfg。

# m2468 设备树源码

M2468 的一个 DTB 和五个有序 DTBO，以及仅选择该设备的 Kbuild 入口。DTS 由原厂硬件描述的属性字节重建，不是魅族原始维护源码。

本仓库属于 **meizu-sm8550-kernel**，**当前仅支持 m2468（魅族 21 Note）**。组织与内核仓库名称中的 `sm8550` 表示平台，不表示支持其它魅族 SM8550 设备；M2481（魅族 21 Pro）也不在本适配范围内。

发布分支为 `lineage-23.2`。使用 [kernel_manifest](https://github.com/meizu-sm8550-kernel/kernel_manifest) 同步四个配套源码仓库，并按其中的构建说明编译。清单跟随该分支，`revisions.lock.json` 只记录发布版本。

设备路径、配置和自有代码标识使用 `m2468` / `M2468`。提交采用“子系统前缀 + 首字母大写的动作描述”，每条提交聚焦一项修改，见 [提交约定](https://github.com/meizu-sm8550-kernel/kernel_manifest/blob/lineage-23.2/CONTRIBUTING.md)。原厂 DT 属性、固件名和运行时接口保持兼容。

上游基线为 `ab13cc3f28acfca873b7e3f0f3e3bb49d20812b9`，来源和许可信息见 [m2468-source-provenance.json](m2468-source-provenance.json)。保留上游许可证和版权声明。

本次整理只调整提交历史、内部命名和文档。此前编译与设备反馈的范围见 [历史适配记录](docs/m2468-bringup-history.md)；未因本次整理新增整 ROM 编译或实机验证结论。各项主机回归不能代替外设运行验证。

原厂属性字节、五个 overlay 索引及既有 RC0 PCI 类型修复保持不变。`M2468_DTBS=1` 选择本设备的源码入口。

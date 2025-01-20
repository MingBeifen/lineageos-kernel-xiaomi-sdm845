基于lineageos开源内核修复，添加了KernelSU-Next与SUSFS
如果编译报错可能需要手动将SUSFS补丁patch到KernelSU-Next中
kernel_patch中的补丁可以辅助修补KernelSU-Next/kernel中的文件
观察输出的报错自行选择需要的文件

执行build.sh生成配置文件
再执行build-i.sh即可编译内核
内置了KernelSU-Next和susfs

脚本内置的编译配置适用于小米8ud
如果你不是小米8ud，可以在arch/arm64/configs/vendor/xiaomi/中寻找自己机型的设备代号
将机型代号.defconfig mi845_defconfig合并为一个文件存放至arch/arm64/configs/
可以在源码根目录执行cat arch/arm64/configs/vendor/xiaomi/<机型代号>.config arch/arm64/configs/vendor/xiaomi/mi845_defconfig > arch/arm64/configs/merged_defconfig
这将覆盖原来的配置文件，如果不想原来的配置文件被覆盖请自行备份或修改命令

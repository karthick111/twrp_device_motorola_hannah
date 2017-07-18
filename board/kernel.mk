# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=tty60,115200,n8 androidboot.console=tty60 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 gpt androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

CUSTOM_DTB_TOOL := device/samsung/j2y18lte/dtbtool/dtbTool
KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
INSTALLED_DTIMAGE_TARGET := $(PRODUCT_OUT)/dt.img

$(INSTALLED_DTIMAGE_TARGET): $(CUSTOM_DTB_TOOL) $(KERNEL_OUT)
	@echo ----- Making dt image ------
	$(hide) $(CUSTOM_DTB_TOOL) -s $(BOARD_KERNEL_PAGESIZE) -o $(INSTALLED_DTIMAGE_TARGET) -p $(KERNEL_OUT)/scripts/dtc $(KERNEL_OUT)/arch/$(TARGET_ARCH)/boot/dts
	@echo ----- Made dt image: $@ --------

$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk) $(MKBOOTIMG) $(recovery_kernel) $(INSTALLED_DTIMAGE_TARGET)
	@echo ----- Making recovery image ------
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(INTERNAL_MKBOOTIMG_VERSION_ARGS) $(BOARD_MKBOOTIMG_ARGS) --dt $(INSTALLED_DTIMAGE_TARGET) --output $@ --id > $(RECOVERYIMAGE_ID_FILE)
	$(hide) $(call assert-max-image-size,$(1),$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
	@echo ----- Made recovery image: $@ --------

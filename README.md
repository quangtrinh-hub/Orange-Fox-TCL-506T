# OrangeFox Recovery Project (Unofficial) for TCL 506T

An unofficial build of OrangeFox Recovery Project for the **TCL 506T** (MediaTek).

---

## ⚠️ Disclaimer
> **Your warranty is now void.**
> I am not responsible for bricked devices, dead SD cards, thermonuclear war, or you getting fired because the alarm app failed. Please do some research if you have any concerns about features included in this recovery before flashing it! You are choosing to make these modifications at your own risk.

---

## 📥 Features & Status
* **Boot:** Working ✅
* **Touchscreen:** Working ✅
* **ADB Sideload:** Working ✅
* **SD Card:** Working ✅
* **Decryption (FBE):** Work in progress (Shows `0MB` on stock ROM). Please follow the **Decryption Guide** below to access your storage.

---

## 🚀 Installation Guide (Fastboot Method)

### Prerequisites:
1. An **unlocked bootloader** on your TCL 506T.
2. Android SDK Platform-Tools (ADB & Fastboot) installed on your PC.
3. Enable USB Debugging in Developer Options on your phone.

### Steps:
1. Boot your device into Fastboot mode:
   ```bash
   adb reboot bootloader
   Check if your device is detected:
    Bash

    fastboot devices

    Boot the recovery image temporarily to test:
    Bash

    fastboot boot OrangeFox-R12.0-Unofficial-506T.img

    Once booted into OrangeFox, you can flash the OrangeFox-R12.0-Unofficial-506T.zip file to make it permanent.

🔓 How to Fix "0MB Internal Storage" (Decryption Guide)

Due to Android's default File-Based Encryption (FBE), the recovery cannot read the internal storage on the stock ROM, resulting in a 0MB storage display. Follow these steps to decrypt and access your storage:
⚠️ WARNING: This process will FORMAT your device. Backup all important data first!
Step 1: Format Data

    In OrangeFox, go to the Wipe menu (trash bin icon).

    Tap Format Data (do NOT use Advanced Wipe).

    Type yes and confirm.

    Your storage will now show its correct capacity.

Step 2: Prevent Re-Encryption (Crucial)

If you boot directly back into the stock ROM now, Android will automatically re-encrypt the storage, and it will return to 0MB on the next recovery boot. To prevent this:

    Download a Disable Force Encryption (DFE) zip file (e.g., DFE-NEO or Disable_Dm-Verity_ForceEncrypt) compatible with your Android version.

    Use the ADB Sideload guide below to flash the DFE zip file before booting into the system.

📦 How to Flash Files via ADB Sideload

Use this method to flash files (like DFE, Magisk, or ROMs) directly from your computer when internal storage is encrypted or unavailable.
Steps:

    On your phone (OrangeFox Recovery):

        Go to Menu -> Advanced -> ADB Sideload.

        (Optional) Check Clear Dalvik Cache and Clear Cache.

        Swipe to Start Sideload.

    On your computer:

        Open your terminal/cmd in the folder where your .zip file is located.

        Verify the connection:
        Bash

        adb devices

        (Should display your device ID followed by sideload).

        Flash the file:
        Bash

        adb sideload <filename>.zip

    Finish:

        Wait for the progress bar to reach 100% (or Total xfer: 1.00x).

        Once completed successfully on your phone, tap Reboot System.

👥 Credits & Acknowledgements
## 💻 For Developers: How to compile with working Decryption

If you are a developer and want to compile this OrangeFox build with working decryption (asking for PIN/Pattern) for your specific software version, follow these steps:

1. **Find your device's exact security patch date:**
   Boot your phone to the system, enable USB Debugging, and run:
   ```bash
   adb shell getprop ro.build.version.security_patch

(e.g., 2023-12-01)

    Update BoardConfig.mk:
    Open BoardConfig.mk and edit these lines with your actual Android version and security patch:
    Makefile

    PLATFORM_SECURITY_PATCH := <your_patch_date>
    VENDOR_SECURITY_PATCH := <your_patch_date>
    PLATFORM_VERSION := 13

    # Enable FBE Decryption flags
    TW_INCLUDE_CRYPTO := true
    TW_INCLUDE_CRYPTO_FBE := true
    TW_INCLUDE_FBE_METADATA_DECRYPT := true
    BOARD_USES_METADATA_PARTITION := true
    TW_USE_FSCRYPT_POLICY := 2

    Update recovery.fstab:
    Ensure your /data partition line contains the encryption flags:
    Plaintext

    /data  f2fs  /dev/block/by-name/userdata  flags=fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized;keydirectory=/metadata/vold/metadata_encryption




    OrangeFox Recovery Project for the base recovery.

    TeamWin (TWRP) for the core project.

    Special thanks to all developers who contributed to the MediaTek device trees.

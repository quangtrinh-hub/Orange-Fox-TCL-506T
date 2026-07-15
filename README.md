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
* **Decryption (FBE):** Work in progress / May show `0MB` on stock ROM. Use **ADB Sideload** for flashing files.

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

📦 How to Flash Files via ADB Sideload (Fix 0MB Internal Storage)

If OrangeFox cannot read your internal storage (0MB due to encryption), use ADB Sideload to flash files (Magisk, Custom ROMs, Decryption Patches) directly from your computer.
Steps:

    On your phone (OrangeFox Recovery):

        Navigate to Menu (or Wipe section depending on your theme).

        Go to Advanced -> Select ADB Sideload.

        Check Clear Dalvik Cache and Clear Cache (optional), then Swipe to Start Sideload.

    On your computer (Arch Linux / Ubuntu / Windows):

        Open your terminal in the directory where your .zip file is located.

        Verify the connection:
        Bash

        adb devices

        (It should display your device serial number followed by sideload).

        Flash the file:
        Bash

        adb sideload <filename>.zip

    Finish:

        Wait for the progress bar to reach 100% (or Total xfer: 1.00x).

        Once completed successfully on your phone screen, tap Reboot System.

👥 Credits & Acknowledgements

    OrangeFox Recovery Project for the base recovery.

    TeamWin (TWRP) for the core project.

    Special thanks to all developers who contributed to the MediaTek device trees.

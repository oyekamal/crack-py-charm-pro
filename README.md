# JetBrains Activator

This repository provides a method for activating JetBrains IDEs.
# Chose your platform
## Windows
### Video tutorial
https://www.youtube.com/watch?v=tknQRl9l5oI
### Text tutorial
`jb.ps1` is the script for Windows users.

1. Download `jb.ps1`.
2. Open it with Notepad and edit the `$idepath` variable to include the paths to your JetBrains IDE executables, ending with `*64.exe`. Delete the example provided.
3. Save the changes.
4. Run `jb.ps1` as an administrator.
5. Run this script periodically to ensure your IDEs remain activated.
6. (Optional) Automate the process by adding it to your daily tasks or startup folder.

## Linux

`jb.sh` is the script for Linux users.

1. Install `iptables`:
   - For Debian-based systems: `sudo apt install iptables`
   - For Arch-based systems: `sudo pacman -S iptables`
   - For other distributions, install `iptables` accordingly.
   
2. Make `jb.sh` executable:
   ```bash
   chmod +x jb.sh
   ```

3. Run `jb.sh` with root privileges:
   ```bash
   sudo ./jb.sh
   ```

4. (Optional) Automate the process by adding `jb.sh` to your system startup.

Note: Using this script on Linux may block connections to `account.jetbrains.com` for all applications, not just JetBrains IDEs. Consider it as a temporary solution.

## Mac OS

Still no support.

# After script
After running any of the scripts, follow these steps:
1. Start your IDE.
2. When prompted for an activation key, find one [here](https://www.google.com/search?q=jetbrains+activation+key+github).
3. No need to change the proxy. If you have it enabled in IDE settings, disable it.
4. Click on activate, and you're good to go.

If you encounter any issues, try following the instructions more carefully. If you still encounter issues, contact @danosito on Telegram.
thanks for linux fix by @vanquan805

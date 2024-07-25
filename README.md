# NoStartBackUp

Removes the "Start back-up" button in the address bar of File Explorer.

[Technical details](https://github.com/aKrnlThat/NoStartBackup/blob/main/technical.md).

## Instructions

> [!IMPORTANT]
> Do **not** use Run with PowerShell in context menu, it will instead throw an error,
> unless you allowed script execution through Execution Policies manually.

1. Right click [this link](https://raw.githubusercontent.com/WindowsOclock/NoStartBackup/main/NoStartBackup.ps1) and click "Save link as..."
2. Press Win + S and type Windows PowerShell
3. Select "Windows PowerShell" > "Run as Administrator"
4. Type in the file path to where `NoStartBackup.ps1` is stored (usually C:\Users\\[username]\Downloads) and press Enter
5. Once it's done the button should be removed

# How NoStartBackup Works
This is how NoStartBackup works in detail. *(Well, not much, because it's 2 lines of code not counting comments and whitespace.)*

## Deleting the Registry Key
The culprit of the button is the registry key `HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StorageProvider\OneDrive\StorageProviderKnownFolderSyncInfoSourceFactory`. It presumably stores some info about if the folder is synced. The code forcefully deletes it:
```powershell
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StorageProvider\OneDrive" -Name "StorageProviderKnownFolderSyncInfoSourceFactory" -Force
```

<details>
  <summary>Useless breakdown of the command</summary>
  `-Path`: Specifies path to the key/item property
  <br/>
  `-Name`: Specifies name of the key/item property
  <br/>
  `-Force`: Forces the deletion
</details>

## Restrting Windows Explorer
The effects only happen when restarting Explorer.
```powershell
Restart-Process -Name explorer -Force
```

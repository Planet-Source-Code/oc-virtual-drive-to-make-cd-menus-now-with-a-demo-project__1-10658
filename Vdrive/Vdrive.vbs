'V holds my Email Address i was playing with the ASCII and has nothing to do with making a virtual drive
V = (chr(67) & chr(111) & chr(100) & chr(101) & chr(100) & chr(32) & chr(98) & chr(121) & chr(32) & chr(111) & chr(99) & chr(64) & chr(108) & chr(105) & chr(110) & chr(101) & chr(111) & chr(110) & chr(101) & chr(46) & chr(110) & chr(101) & chr(116))
' Vdrive.vbs
'
' This script demonstrates how you can use VBScript to assign to a virtual drive to a folder.
'
' Ian O'Connor
' http://website.lineone.net/~oc/
' oc@lineone.net

Dim MyVar
MyVar = MsgBox ("Change the script to suite you" & VbCrLf & "'' X:\'' Specifies a virtual drive to which you want to assign a path." & VbCrLf & "''C:\$Cdrom$'' Specifies a physical drive and path you want to assign to a virtual drive." & VbCrLf & "Run  ' subst X: /d '  to remove your virtual drive" & VbCrLf & VbCrLf & "                      Press OK to make a temporary virtual drive", 65, "   Make A Temporary Virtual Drive         " & V)
IF MyVar = 1 then VirtualDrive()

Sub VirtualDrive()
On Error Resume Next
Dim sFolderPath
Dim filesys
Dim drv
Dim wsh

sFolderPath = "C:\$Cdrom$"  '<<<<<<<< Set the folder you want to use<<<<<<<<
drv = "X:"                  '<<<<<<<< Set a drive letter<<<<<<<<

Set filesys = CreateObject("Scripting.FileSystemObject")
Set wsh = CreateObject("WScript.Shell")

If filesys.FolderExists(drv) Then
MsgBox (drv & " Drive aready exists Change the script to suite" & VbCrLf & "Or you have already got a virtual drive")
'wsh.Run("subst " & drv & " /d")
Exit Sub
End If

If filesys.FolderExists(sFolderPath) Then
wsh.Run("subst " & drv & " " & sFolderPath)

Else

filesys.CreateFolder(sFolderPath)
wsh.Run("subst " & drv & " " & sFolderPath)
End If
END SUB
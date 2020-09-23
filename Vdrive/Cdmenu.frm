VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   1845
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1845
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   4095
   End
   Begin VB.Image Image6 
      Height          =   495
      Left            =   3840
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image5 
      Height          =   495
      Left            =   3120
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image4 
      Height          =   495
      Left            =   2400
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image3 
      Height          =   495
      Left            =   1680
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image2 
      Height          =   495
      Left            =   960
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Left            =   240
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Const conSwNormal = 1
Function Run(Program As String, path As String)
ShellExecute hwnd, "open", Program, vbNullString, path, 1
End Function
Private Sub Form_Load()
Form1.Caption = App.EXEName
Image1.Picture = LoadPicture("\Setup1\Icon.ico")
Image2.Picture = LoadPicture("\Setup2\Icon.ico")
Image3.Picture = LoadPicture("\Setup3\Icon.ico")
Image4.Picture = LoadPicture("\Setup4\Icon.ico")
Image5.Picture = LoadPicture("\Setup5\Icon.ico")
Image6.Picture = LoadPicture("\Setup6\Icon.ico")
Label1.Caption = "This is just a demo to show how virtual drive" & vbCrLf & "Can help you with a cd menu for your setups" & vbCrLf & "Click a picture"
End Sub

Private Sub Image1_Click()
Run "Setup1.exe", "\Setup1"
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.ToolTipText = "Click Here to Start Setup 1"
End Sub

Private Sub Image2_Click()
Run "Setup2.exe", "\Setup2"
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.ToolTipText = "Click Here to Start Setup 2"
End Sub

Private Sub Image3_Click()
Run "Setup3.exe", "\Setup3"
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.ToolTipText = "Click Here to Start Setup 3"
End Sub

Private Sub Image4_Click()
Run "Setup4.exe", "\Setup4"
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image4.ToolTipText = "Click Here to Start Setup 4"
End Sub

Private Sub Image5_Click()
Run "Setup5.exe", "\Setup5"
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.ToolTipText = "Click Here to Start Setup 5"
End Sub

Private Sub Image6_Click()
Run "Setup6.exe", "\Setup6"
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.ToolTipText = "Click Here to Start Setup 6"
End Sub


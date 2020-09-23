VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   1875
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1875
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   1320
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   120
      Top             =   360
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form1.Caption = App.EXEName

Form1.Icon = LoadPicture("Icon.ico")
Form1.Top = Screen.Height / 2 - (Form1.Height / 2)
Form1.Left = Screen.Width / 2 - (Form1.Width / 2)

Form1.BackColor = vbBlack
If Right(App.Path, 1) = "\" Then
Path = App.Path
Else:
Path = App.Path & "\"
End If
Text1.Text = LCase("Path = " & Path & App.EXEName & ".exe")
Text1.BorderStyle = 0
Text1.BackColor = vbBlack
Text1.ForeColor = vbGreen
Text1.Locked = True
Image1.Picture = LoadPicture("Icon.ico")
Label1.AutoSize = True
Label1.BackStyle = 0
Label1.ForeColor = vbGreen
Label1.Caption = "Demo setup program i think you get the idea now"
End Sub

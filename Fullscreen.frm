VERSION 5.00
Begin VB.Form frmFullscreen 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'Kein
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   855
      Left            =   2640
      ScaleHeight     =   57
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   65
      TabIndex        =   1
      Top             =   960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   855
      Left            =   120
      ScaleHeight     =   57
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
End
Attribute VB_Name = "frmFullscreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim FoxMask As Long
Dim nWidth As Long, nHeight As Long

Private Sub Form_Load()
    Picture2.Width = Screen.Width
    Picture2.Height = Screen.Height
    BitBlt Picture2.HDC, 0, 0, Picture2.ScaleWidth, Picture2.ScaleHeight, GetDC(0), 0, 0, vbSrcCopy
    With frmFoxCBmp3.picRotSrc
        If frmFoxCBmp3.scrFastMask >= 0 Then
            nWidth = .ScaleWidth * (frmFoxCBmp3.scrFastMask + 1)
            nHeight = .ScaleHeight * (frmFoxCBmp3.scrFastMask + 1)
        Else
            nWidth = .ScaleWidth / (1 - frmFoxCBmp3.scrFastMask)
            nHeight = .ScaleHeight / (1 - frmFoxCBmp3.scrFastMask)
        End If
        FoxMask = FoxxCreateFastMask(.HDC, 0, 0, .ScaleWidth, .ScaleHeight, nWidth, nHeight, &HFF00FF, &H1)
    End With
    Move 0, 0, Screen.Width, Screen.Height
    Picture1.Move 0, 0, Screen.Width, Screen.Height
End Sub

Private Sub Form_Unload(Cancel As Integer)
    FoxxDeleteMask FoxMask
End Sub

Private Sub Picture1_Click()
    Unload Me
End Sub

Private Sub picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    BitBlt Picture1.HDC, 0, 0, Picture1.ScaleWidth, Picture1.ScaleHeight, Picture2.HDC, 0, 0, vbSrcCopy
    FoxxFastMask Picture1.HDC, X - nWidth \ 2, Y - nHeight \ 2, FoxMask
    Picture1.Refresh
End Sub

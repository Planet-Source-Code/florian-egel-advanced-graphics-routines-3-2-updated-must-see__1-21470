VERSION 5.00
Begin VB.Form frmDemo1 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'Kein
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5940
   Icon            =   "Demo1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   5940
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.PictureBox Picture3 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   375
      Left            =   1080
      ScaleHeight     =   375
      ScaleWidth      =   375
      TabIndex        =   2
      Top             =   120
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   375
      Left            =   120
      ScaleHeight     =   25
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   1
      Top             =   120
      Width           =   375
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'Kein
      Height          =   375
      Left            =   600
      ScaleHeight     =   25
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   375
   End
End
Attribute VB_Name = "frmDemo1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'''''''''''''''''''''''''''''''''''
'' declaring some API-Functions  ''
'''''''''''''''''''''''''''''''''''

Private Enum FoxEffectFlags
    FOX_USE_MASK = &H1
    FOX_ANTI_ALIAS = &H2
    FOX_SRC_INVERT = &H100
    FOX_DST_INVERT = &H200
    FOX_MASK_INVERT = &H400
    FOX_SRC_GREYSCALE = &H1000
    FOX_DST_GREYSCALE = &H2000
    FOX_FLIP_X = &H40000
    FOX_FLIP_Y = &H80000
    FOX_TURN_LEFT = &H10000
    FOX_TURN_RIGHT = FOX_FLIP_X Or FOX_FLIP_Y
    FOX_TURN_90DEG = FOX_TURN_LEFT
    FOX_TURN_180DEG = FOX_TURN_RIGHT
    FOX_TURN_270DEG = FOX_FLIP_X Or FOX_FLIP_Y Or FOX_TURN_LEFT
End Enum

Private Declare Function FoxBumpMap Lib "FoxCBmp3.dl" (ByVal DstDC As Long, ByVal DstX As Long, ByVal DstY As Long, ByVal DstW As Long, ByVal DstH As Long, ByVal SrcDC As Long, ByVal SrcX As Long, ByVal SrcY As Long, Optional ByVal MskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Private Declare Function FoxAlphaBlend Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal alpha As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long

Private Sub Form_Load()
    'Load a picture into an invisible PictureBox.
    Picture1.Picture = LoadPicture("Images/TextMsk.bmp")
    
    'Creates the Relief of the Picture.
    FoxAlphaBlend Picture1.HDC, 0, 0, Picture1.ScaleWidth, Picture1.ScaleHeight, Picture1.HDC, -1, -1, 128, 0, FOX_DST_INVERT + FOX_DST_GREYSCALE + FOX_SRC_GREYSCALE
    
    'Moves the Form over the whole screen.
    Move 0, 0, Screen.Width, Screen.Height
    Picture2.Move 0, 0, ScaleWidth, ScaleHeight
    Picture3.Move 0, 0, ScaleWidth, ScaleHeight
    
    'Copy the current Screen into another invisible PictureBox
    BitBlt Picture3.HDC, 0, 0, Picture3.ScaleWidth, Picture3.ScaleHeight, GetDC(0), 0, 0, vbSrcCopy
End Sub

Private Sub Picture2_Click()
    'Exits the program when the user clicks the mouse anywhere on the Screen.
    Unload Me
End Sub

Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Redraws the screen to the Fullscreen-PictureBox
    BitBlt Picture2.HDC, 0, 0, 1024, 768, Picture3.HDC, 0, 0, vbSrcCopy
    
    'Bumpmapps the Relief to the PictureBox
    FoxBumpMap Picture2.HDC, X, Y, Picture1.ScaleWidth - 2, Picture1.ScaleHeight - 2, Picture1.HDC, 1, 1, &H7F7F7F, FOX_USE_MASK
    
    'Refreshes the PictureBox
    Picture2.Refresh
End Sub

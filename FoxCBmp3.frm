VERSION 5.00
Begin VB.Form frmFoxCBmp3 
   BackColor       =   &H8000000E&
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "FLOMIX Studios FoxCBmp3.dll Demo 3.3"
   ClientHeight    =   6255
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   5490
   Icon            =   "FoxCBmp3.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6255
   ScaleWidth      =   5490
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   20
      Left            =   0
      TabIndex        =   167
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picWDSource 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   3120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   176
         Top             =   5280
         Visible         =   0   'False
         Width           =   4860
      End
      Begin VB.PictureBox picWDMirror 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   3360
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   175
         Top             =   5040
         Visible         =   0   'False
         Width           =   4860
      End
      Begin VB.PictureBox picWDMask 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   3600
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   174
         Top             =   4800
         Visible         =   0   'False
         Width           =   4860
      End
      Begin VB.HScrollBar scrWDSize 
         Height          =   255
         Left            =   120
         Max             =   15
         Min             =   1
         TabIndex        =   171
         Top             =   4560
         Value           =   1
         Width           =   4815
      End
      Begin VB.CommandButton cmdWDStart 
         Caption         =   "Start Demo"
         Height          =   375
         Left            =   120
         TabIndex        =   170
         Top             =   5040
         Width           =   1095
      End
      Begin VB.PictureBox picWaveDemo 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   168
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labWDSpeed 
         Caption         =   "Speed:"
         Height          =   255
         Left            =   2160
         TabIndex        =   173
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labWDSize 
         Caption         =   "Wave Size: 1"
         Height          =   255
         Left            =   120
         TabIndex        =   172
         Top             =   4320
         Width           =   1935
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Wave Demo"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   169
         Top             =   120
         Width           =   1110
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   18
      Left            =   0
      TabIndex        =   146
      Top             =   0
      Width           =   5175
      Begin VB.ComboBox cmbPSEffect 
         Height          =   315
         ItemData        =   "FoxCBmp3.frx":1FF2
         Left            =   600
         List            =   "FoxCBmp3.frx":1FFC
         Style           =   2  'Dropdown-Liste
         TabIndex        =   152
         Top             =   5040
         Width           =   1215
      End
      Begin VB.PictureBox picPsycho 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   148
         Top             =   480
         Width           =   4860
      End
      Begin VB.HScrollBar scrPsycho 
         Height          =   255
         LargeChange     =   90
         Left            =   120
         Max             =   1280
         TabIndex        =   147
         Top             =   4560
         Width           =   4815
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Psycho"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   151
         Top             =   120
         Width           =   660
      End
      Begin VB.Label labPSSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   150
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labPSValue 
         Caption         =   "Monochrome Value: 128"
         Height          =   255
         Left            =   120
         TabIndex        =   149
         Top             =   4320
         Width           =   2055
      End
   End
   Begin VB.PictureBox picTemp 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   615
      Left            =   4440
      ScaleHeight     =   37
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   45
      TabIndex        =   67
      Top             =   0
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.PictureBox picBack 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Left            =   4560
      ScaleHeight     =   29
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   29
      TabIndex        =   24
      Top             =   5640
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   19
      Left            =   0
      TabIndex        =   153
      Top             =   0
      Width           =   5175
      Begin VB.ComboBox cmbW1Source 
         Height          =   315
         ItemData        =   "FoxCBmp3.frx":2014
         Left            =   3240
         List            =   "FoxCBmp3.frx":201E
         Style           =   2  'Dropdown-Liste
         TabIndex        =   165
         Top             =   5760
         Width           =   1695
      End
      Begin VB.HScrollBar scrW1Shift 
         Height          =   255
         LargeChange     =   200
         Left            =   120
         Max             =   1280
         TabIndex        =   163
         Top             =   5760
         Width           =   2895
      End
      Begin VB.HScrollBar scrW1Size 
         Height          =   255
         LargeChange     =   5
         Left            =   2640
         Max             =   30
         Min             =   1
         TabIndex        =   160
         Top             =   5160
         Value           =   15
         Width           =   2295
      End
      Begin VB.HScrollBar scrW1Movement 
         Height          =   255
         LargeChange     =   16
         Left            =   120
         Max             =   100
         Min             =   1
         TabIndex        =   159
         Top             =   5160
         Value           =   25
         Width           =   2295
      End
      Begin VB.HScrollBar scrWave 
         Height          =   255
         LargeChange     =   90
         Left            =   120
         Max             =   1280
         TabIndex        =   155
         Top             =   4560
         Width           =   4815
      End
      Begin VB.PictureBox picWave 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   154
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label20 
         Caption         =   "Source Picture"
         Height          =   255
         Left            =   3240
         TabIndex        =   166
         Top             =   5520
         Width           =   1695
      End
      Begin VB.Label labW1Shift 
         Caption         =   "Shift: 0"
         Height          =   255
         Left            =   120
         TabIndex        =   164
         Top             =   5520
         Width           =   2055
      End
      Begin VB.Label labW1Size 
         Caption         =   "Size: 15"
         Height          =   255
         Left            =   2640
         TabIndex        =   162
         Top             =   4920
         Width           =   2295
      End
      Begin VB.Label labW1Movement 
         Caption         =   "Movement: 25"
         Height          =   255
         Left            =   120
         TabIndex        =   161
         Top             =   4920
         Width           =   2295
      End
      Begin VB.Label labW1Value 
         Caption         =   "Monochrome Value: 128"
         Height          =   255
         Left            =   120
         TabIndex        =   158
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labW1Speed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   157
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label Label19 
         AutoSize        =   -1  'True
         Caption         =   "Wave"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   156
         Top             =   120
         Width           =   510
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   17
      Left            =   0
      TabIndex        =   140
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picShift 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   142
         Top             =   480
         Width           =   4860
      End
      Begin VB.HScrollBar scrShift 
         Height          =   255
         LargeChange     =   90
         Left            =   120
         Max             =   1280
         TabIndex        =   141
         Top             =   4560
         Width           =   4815
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "Shift"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   145
         Top             =   120
         Width           =   435
      End
      Begin VB.Label labSHSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   144
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labSHValue 
         Caption         =   "Monochrome Value: 128"
         Height          =   255
         Left            =   120
         TabIndex        =   143
         Top             =   4320
         Width           =   2055
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   16
      Left            =   0
      TabIndex        =   133
      Top             =   0
      Width           =   5175
      Begin VB.HScrollBar scrMonochrome 
         Height          =   255
         LargeChange     =   18
         Left            =   120
         Max             =   255
         TabIndex        =   135
         Top             =   4560
         Value           =   128
         Width           =   4815
      End
      Begin VB.PictureBox picMonochrome 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   134
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labMCValue 
         Caption         =   "Monochrome Value: 128"
         Height          =   255
         Left            =   120
         TabIndex        =   139
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labMCSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   138
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         Caption         =   "Monochrome"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   137
         Top             =   120
         Width           =   1245
      End
      Begin VB.Label Label17 
         Caption         =   $"FoxCBmp3.frx":2041
         Height          =   1095
         Left            =   120
         TabIndex        =   136
         Top             =   4920
         Width           =   4455
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   15
      Left            =   0
      TabIndex        =   119
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picChrome 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   121
         Top             =   480
         Width           =   4860
      End
      Begin VB.HScrollBar scrChrome 
         Height          =   255
         Left            =   120
         Max             =   15
         Min             =   2
         TabIndex        =   120
         Top             =   4560
         Value           =   7
         Width           =   4815
      End
      Begin VB.Label Label16 
         Caption         =   $"FoxCBmp3.frx":2100
         Height          =   1095
         Left            =   120
         TabIndex        =   132
         Top             =   4920
         Width           =   4455
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Chrome"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   124
         Top             =   120
         Width           =   735
      End
      Begin VB.Label labCHSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   123
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labCHValue 
         Caption         =   "Chrome level: 2"
         Height          =   255
         Left            =   120
         TabIndex        =   122
         Top             =   4320
         Width           =   2055
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   0
      Left            =   0
      TabIndex        =   29
      Top             =   0
      Width           =   5175
      Begin VB.CommandButton cmdRotDemo 
         Caption         =   "Demo..."
         Height          =   375
         Left            =   4080
         TabIndex        =   43
         Top             =   4920
         Width           =   855
      End
      Begin VB.PictureBox picRotSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   2760
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   34
         Top             =   2280
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.HScrollBar scrRotate 
         Height          =   255
         LargeChange     =   240
         Left            =   120
         Max             =   1800
         Min             =   -1800
         TabIndex        =   31
         Top             =   4560
         Width           =   4815
      End
      Begin VB.PictureBox picRotate 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   30
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label15 
         Caption         =   "NOTE: when you want to flip pictures or turn them 90°, 180° ot 270° you should use the FoxFlip function, it's many times faster."
         Height          =   495
         Left            =   120
         TabIndex        =   131
         Top             =   5640
         Width           =   4695
      End
      Begin VB.Label Label13 
         Caption         =   $"FoxCBmp3.frx":21BF
         Height          =   615
         Left            =   120
         TabIndex        =   130
         Top             =   4920
         Width           =   3855
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Rotate"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   120
         TabIndex        =   35
         Top             =   120
         Width           =   585
      End
      Begin VB.Label labRotValue 
         Caption         =   "Angle: 0°"
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Label labRotSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   33
         Top             =   4320
         Width           =   2055
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   9
      Left            =   0
      TabIndex        =   61
      Top             =   0
      Width           =   5175
      Begin VB.DriveListBox Drive1 
         Height          =   315
         Left            =   120
         TabIndex        =   70
         Top             =   5400
         Width           =   2415
      End
      Begin VB.PictureBox picStatus 
         AutoRedraw      =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H80000002&
         FillStyle       =   0  'Ausgefüllt
         ForeColor       =   &H8000000D&
         Height          =   135
         Left            =   1200
         ScaleHeight     =   5
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   160
         TabIndex        =   69
         Top             =   2490
         Width           =   2460
      End
      Begin VB.PictureBox picTransition 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   2460
         Left            =   1200
         ScaleHeight     =   160
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   160
         TabIndex        =   68
         Top             =   0
         Width           =   2460
      End
      Begin VB.PictureBox picBlender 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   540
         Left            =   3840
         ScaleHeight     =   32
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   32
         TabIndex        =   65
         Top             =   3720
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.DirListBox Dir1 
         Height          =   1890
         Left            =   120
         TabIndex        =   66
         Top             =   3480
         Width           =   2415
      End
      Begin VB.FileListBox fileBlend 
         Height          =   2235
         Left            =   2640
         TabIndex        =   64
         Top             =   3480
         Width           =   2295
      End
      Begin VB.HScrollBar scrBlend 
         Height          =   255
         LargeChange     =   120
         Left            =   120
         Max             =   2000
         Min             =   1
         TabIndex        =   62
         Top             =   3120
         Value           =   500
         Width           =   4815
      End
      Begin VB.Label Label3 
         Caption         =   "Just select a folder and click on some graphic files!"
         Height          =   855
         Left            =   3720
         TabIndex        =   74
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label labBlend 
         Caption         =   "Speed: 500 ms / Blending"
         Height          =   255
         Left            =   120
         TabIndex        =   63
         Top             =   2880
         Width           =   2415
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   4
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   5175
      Begin VB.ListBox lstAMPic 
         Height          =   645
         ItemData        =   "FoxCBmp3.frx":2249
         Left            =   720
         List            =   "FoxCBmp3.frx":2253
         TabIndex        =   27
         Top             =   4680
         Width           =   975
      End
      Begin VB.PictureBox picAMSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   1800
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   11
         Top             =   960
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picAMMask 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   1200
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   10
         Top             =   960
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picAlphaMask 
         AutoRedraw      =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   19
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label1 
         Caption         =   "Picture:"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   4680
         Width           =   615
      End
      Begin VB.Label labAMSpeed 
         Caption         =   "Speed:"
         Height          =   255
         Left            =   2160
         TabIndex        =   26
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "AlphaMask"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   4
         Left            =   120
         TabIndex        =   14
         Top             =   120
         Width           =   1050
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   2
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   5175
      Begin VB.CommandButton cmdBlReset 
         Caption         =   "Reset"
         Height          =   375
         Left            =   1200
         TabIndex        =   60
         Top             =   4320
         Width           =   855
      End
      Begin VB.CommandButton cmdBlBlur 
         Caption         =   "Blur"
         Height          =   375
         Left            =   240
         TabIndex        =   59
         Top             =   4320
         Width           =   855
      End
      Begin VB.PictureBox picBlur 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   58
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Blur"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   2
         Left            =   120
         TabIndex        =   18
         Top             =   120
         Width           =   390
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   8
      Left            =   0
      TabIndex        =   48
      Top             =   0
      Width           =   5175
      Begin VB.HScrollBar scrMosaic 
         Height          =   255
         LargeChange     =   6
         Left            =   120
         Max             =   100
         Min             =   1
         TabIndex        =   53
         Top             =   4560
         Value           =   1
         Width           =   4815
      End
      Begin VB.PictureBox picMosaic 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   50
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labMoSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   52
         Top             =   4320
         Width           =   2175
      End
      Begin VB.Label labMoValue 
         Caption         =   "Level: 1"
         Height          =   255
         Left            =   120
         TabIndex        =   51
         Top             =   4320
         Width           =   1455
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Mosaic"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   8
         Left            =   120
         TabIndex        =   49
         Top             =   120
         Width           =   660
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   5
      Left            =   0
      TabIndex        =   9
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picInvSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   3840
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   46
         Top             =   5280
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picInvert 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   44
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labInvSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   45
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Invert"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   5
         Left            =   120
         TabIndex        =   16
         Top             =   120
         Width           =   510
      End
      Begin VB.Label labInvText 
         Caption         =   $"FoxCBmp3.frx":2265
         Height          =   1335
         Left            =   2040
         TabIndex        =   47
         Top             =   4680
         Width           =   2895
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   3
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picBrightness 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   55
         Top             =   480
         Width           =   4860
      End
      Begin VB.HScrollBar scrBrightness 
         Height          =   255
         LargeChange     =   34
         Left            =   120
         Max             =   255
         Min             =   -255
         TabIndex        =   54
         Top             =   4560
         Value           =   1
         Width           =   4815
      End
      Begin VB.Label labBrValue 
         Caption         =   "Brightness: 0"
         Height          =   255
         Left            =   120
         TabIndex        =   57
         Top             =   4320
         Width           =   1455
      End
      Begin VB.Label labBrSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   56
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Brightness"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   3
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   6
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5175
      Begin VB.CommandButton cmdRotate 
         Caption         =   "Start Demo"
         Height          =   495
         Left            =   240
         TabIndex        =   13
         Top             =   2760
         Width           =   1455
      End
      Begin VB.PictureBox picRotate2 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   960
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   2
         Top             =   1200
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picRotate1 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   360
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   1
         Top             =   1200
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picDst1 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   1815
         Left            =   240
         ScaleHeight     =   117
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   117
         TabIndex        =   4
         Top             =   480
         Width           =   1815
      End
      Begin VB.PictureBox picDst2 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   1815
         Left            =   2160
         ScaleHeight     =   117
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   117
         TabIndex        =   3
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label labRotDemo 
         Caption         =   "Demo stopped."
         Height          =   255
         Left            =   240
         TabIndex        =   41
         Top             =   2400
         Width           =   3375
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Rotate - Normal vs. Anti-Alias"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   6
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   2730
      End
      Begin VB.Label labRotDemoText 
         Caption         =   $"FoxCBmp3.frx":2327
         Height          =   1695
         Left            =   240
         TabIndex        =   42
         Top             =   3480
         Width           =   3735
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   7
      Left            =   0
      TabIndex        =   36
      Top             =   0
      Width           =   5175
      Begin VB.PictureBox picOLColor 
         BackColor       =   &H0000FFFF&
         Height          =   375
         Left            =   240
         ScaleHeight     =   21
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   21
         TabIndex        =   128
         Top             =   4920
         Width           =   375
      End
      Begin VB.HScrollBar scrOLBlue 
         Height          =   135
         Left            =   600
         Max             =   255
         TabIndex        =   127
         Top             =   5160
         Width           =   1335
      End
      Begin VB.HScrollBar scrOLGreen 
         Height          =   135
         Left            =   600
         Max             =   255
         TabIndex        =   126
         Top             =   5040
         Value           =   255
         Width           =   1335
      End
      Begin VB.HScrollBar scrOLRed 
         Height          =   135
         Left            =   600
         Max             =   255
         TabIndex        =   125
         Top             =   4920
         Value           =   255
         Width           =   1335
      End
      Begin VB.PictureBox picOLSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   3960
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   39
         Top             =   5160
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picOutline 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   37
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label12 
         Caption         =   "Line Color:"
         Height          =   255
         Left            =   240
         TabIndex        =   129
         Top             =   4680
         Width           =   1695
      End
      Begin VB.Label labOLSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   40
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "Outline"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   7
         Left            =   120
         TabIndex        =   38
         Top             =   120
         Width           =   675
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   1
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   5175
      Begin VB.HScrollBar scrAlphaBlend 
         Height          =   255
         LargeChange     =   17
         Left            =   120
         Max             =   255
         TabIndex        =   22
         Top             =   4560
         Value           =   128
         Width           =   4860
      End
      Begin VB.PictureBox picABSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   2760
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   21
         Top             =   1920
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.PictureBox picAlphaBlend 
         AutoRedraw      =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   20
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label labABSpeed 
         Caption         =   "Speed: 0 ms"
         Height          =   255
         Left            =   2160
         TabIndex        =   25
         Top             =   4320
         Width           =   2295
      End
      Begin VB.Label labABValue 
         Caption         =   "Alpha Value: 128"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   4320
         Width           =   1980
      End
      Begin VB.Label labCaption 
         AutoSize        =   -1  'True
         Caption         =   "AlphaBlend"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   120
         TabIndex        =   17
         Top             =   120
         Width           =   1095
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   10
      Left            =   0
      TabIndex        =   71
      Top             =   0
      Width           =   5175
      Begin VB.HScrollBar scrFastMask 
         Height          =   255
         LargeChange     =   2
         Left            =   480
         Max             =   10
         Min             =   -10
         TabIndex        =   76
         Top             =   2760
         Value           =   3
         Width           =   3975
      End
      Begin VB.CommandButton cmdFastMask 
         Caption         =   "Start"
         Height          =   375
         Left            =   3240
         TabIndex        =   73
         Top             =   3240
         Width           =   1215
      End
      Begin VB.Label labFastMask 
         Caption         =   "Size: 4x"
         Height          =   255
         Left            =   480
         TabIndex        =   77
         Top             =   2520
         Width           =   3975
      End
      Begin VB.Label Label4 
         Caption         =   $"FoxCBmp3.frx":2484
         Height          =   1335
         Left            =   360
         TabIndex        =   75
         Top             =   1200
         Width           =   4335
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "REALLY fast Masked BitBlt"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   72
         Top             =   120
         Width           =   2520
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   11
      Left            =   0
      TabIndex        =   78
      Top             =   0
      Width           =   5175
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   1
         Left            =   720
         TabIndex        =   88
         Top             =   4680
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   2
         Left            =   960
         TabIndex        =   87
         Top             =   4680
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   3
         Left            =   480
         TabIndex        =   86
         Top             =   4920
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   4
         Left            =   960
         TabIndex        =   85
         Top             =   4920
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   5
         Left            =   480
         TabIndex        =   84
         Top             =   5160
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   6
         Left            =   720
         TabIndex        =   83
         Top             =   5160
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   7
         Left            =   960
         TabIndex        =   82
         Top             =   5160
         Width           =   195
      End
      Begin VB.OptionButton optRLDirection 
         Caption         =   "Direction"
         Height          =   195
         Index           =   0
         Left            =   480
         TabIndex        =   81
         Top             =   4680
         Width           =   195
      End
      Begin VB.PictureBox picRelief 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   80
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label6 
         Caption         =   "Direction:"
         Height          =   255
         Left            =   360
         TabIndex        =   89
         Top             =   4320
         Width           =   855
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Relief"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   79
         Top             =   120
         Width           =   525
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   12
      Left            =   0
      TabIndex        =   90
      Top             =   0
      Width           =   5175
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   7
         Left            =   720
         TabIndex        =   101
         Top             =   4920
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   6
         Left            =   480
         TabIndex        =   100
         Top             =   4920
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   5
         Left            =   240
         TabIndex        =   99
         Top             =   4920
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   4
         Left            =   720
         TabIndex        =   98
         Top             =   4680
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   97
         Top             =   4680
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   2
         Left            =   720
         TabIndex        =   96
         Top             =   4440
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   1
         Left            =   480
         TabIndex        =   95
         Top             =   4440
         Width           =   195
      End
      Begin VB.OptionButton optBMDirection 
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   94
         Top             =   4440
         Width           =   195
      End
      Begin VB.PictureBox picBMSrc 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   495
         Left            =   3120
         ScaleHeight     =   29
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   29
         TabIndex        =   93
         Top             =   4320
         Width           =   495
      End
      Begin VB.PictureBox picBumpMap 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   91
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Bump Mapping"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   92
         Top             =   120
         Width           =   1440
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Caption         =   "Frame1"
      Height          =   6255
      Index           =   13
      Left            =   0
      TabIndex        =   102
      Top             =   0
      Width           =   5175
      Begin VB.HScrollBar scrSaturation 
         Height          =   255
         LargeChange     =   100
         Left            =   1440
         Max             =   1000
         TabIndex        =   107
         Top             =   4560
         Value           =   100
         Width           =   3495
      End
      Begin VB.HScrollBar scrHue 
         Height          =   255
         LargeChange     =   360
         Left            =   1440
         Max             =   3600
         TabIndex        =   104
         Top             =   4200
         Width           =   3495
      End
      Begin VB.PictureBox picHSL 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   3660
         Left            =   120
         ScaleHeight     =   240
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   103
         Top             =   480
         Width           =   4860
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Color Adjustment"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   110
         Top             =   120
         Width           =   1635
      End
      Begin VB.Label Label11 
         Caption         =   "Saturation::"
         Height          =   255
         Left            =   120
         TabIndex        =   109
         Top             =   4560
         Width           =   855
      End
      Begin VB.Label labSaturation 
         Caption         =   "255"
         Height          =   255
         Left            =   960
         TabIndex        =   108
         Top             =   4560
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "Hue:"
         Height          =   255
         Left            =   120
         TabIndex        =   106
         Top             =   4200
         Width           =   855
      End
      Begin VB.Label labHue 
         Caption         =   "255"
         Height          =   255
         Left            =   960
         TabIndex        =   105
         Top             =   4200
         Width           =   495
      End
   End
   Begin VB.Frame fraScreen 
      BorderStyle     =   0  'Kein
      Height          =   6255
      Index           =   14
      Left            =   0
      TabIndex        =   111
      Top             =   0
      Width           =   5175
      Begin VB.CheckBox chkHDPsycho 
         Caption         =   "Psycho"
         Height          =   255
         Left            =   1320
         TabIndex        =   117
         Top             =   5640
         Width           =   855
      End
      Begin VB.PictureBox picHDSrc2 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   240
         Left            =   1680
         Picture         =   "FoxCBmp3.frx":2568
         ScaleHeight     =   12
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   17
         TabIndex        =   115
         Top             =   5880
         Visible         =   0   'False
         Width           =   315
      End
      Begin VB.PictureBox picHDSrc1 
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         Height          =   240
         Left            =   1320
         Picture         =   "FoxCBmp3.frx":281A
         ScaleHeight     =   12
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   16
         TabIndex        =   114
         Top             =   5880
         Visible         =   0   'False
         Width           =   300
      End
      Begin VB.CommandButton cmdHueDemo 
         Caption         =   "Start Demo!"
         Height          =   375
         Left            =   120
         TabIndex        =   113
         Top             =   5640
         Width           =   975
      End
      Begin VB.PictureBox picHueDemo 
         AutoRedraw      =   -1  'True
         Height          =   5220
         Left            =   120
         ScaleHeight     =   344
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   320
         TabIndex        =   112
         Top             =   120
         Width           =   4860
      End
      Begin VB.Label Label10 
         Caption         =   "Look deep in Anna's eyes..."
         Height          =   255
         Left            =   2640
         TabIndex        =   116
         Top             =   5400
         Width           =   2295
      End
      Begin VB.Label labHueDemo 
         Caption         =   "Demo stopped."
         Height          =   255
         Left            =   120
         TabIndex        =   118
         Top             =   5400
         Width           =   2415
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuEffect 
      Caption         =   "Effect"
      Begin VB.Menu mnuMenu 
         Caption         =   "Rotate"
         Index           =   0
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "AlphaBlend"
         Index           =   1
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Blur"
         Index           =   2
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Brightness"
         Index           =   3
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "AlphaMask"
         Index           =   4
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Invert"
         Index           =   5
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Demo Rotate"
         Index           =   6
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Outline"
         Index           =   7
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Mosaic"
         Index           =   8
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "AlphaBlend-Transition"
         Index           =   9
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Extremely fast Mask"
         Index           =   10
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Relief"
         Index           =   11
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Bump Mapping"
         Index           =   12
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Color Adjustment"
         Index           =   13
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Color Adjustment Demo"
         Index           =   14
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Chrome"
         Index           =   15
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Monochrome"
         Index           =   16
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Shift"
         Index           =   17
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Psycho"
         Index           =   18
      End
      Begin VB.Menu mnuMenu 
         Caption         =   "Wave"
         Index           =   19
      End
      Begin VB.Menu mnuMenu 
         Caption         =   ""
         Enabled         =   0   'False
         Index           =   20
         Visible         =   0   'False
      End
      Begin VB.Menu mnuMenu 
         Caption         =   ""
         Enabled         =   0   'False
         Index           =   21
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuFlags 
      Caption         =   "&Flags"
      Begin VB.Menu mnuCls 
         Caption         =   "Clear Background"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Use Mask Color"
         Checked         =   -1  'True
         Index           =   0
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Anti-Aliasing"
         Checked         =   -1  'True
         Index           =   1
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Linear Chrome"
         Index           =   2
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   4
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   5
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   6
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   7
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Invert Source"
         Index           =   8
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Invert Destination"
         Index           =   9
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Invert Mask"
         Index           =   10
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   11
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Greyscale Source"
         Index           =   12
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Greyscale Destination"
         Index           =   13
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   14
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   15
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Turn Left"
         Index           =   16
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   17
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Flip X-Axis"
         Index           =   18
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "Flip Y-Axis"
         Index           =   19
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   20
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   21
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   22
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   23
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   24
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   25
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   26
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   27
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   28
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   29
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFlag 
         Caption         =   "(undefined)"
         Enabled         =   0   'False
         Index           =   30
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&?"
      Visible         =   0   'False
   End
End
Attribute VB_Name = "frmFoxCBmp3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'these variables are needed by the functions for the
'transition effects. IMPORTANT: if you create a FoxBitmap
'be sure to delete it when you don't need it anymore to
'avoid memory leaks.
Dim hPic1 As Long, hPic2 As Long, hBuffer As Long

Dim CurX As Long, CurY As Long 'they hold the current sprite position
                    'created by the FastMask-function.
Dim Action As String 'this value is to control the loops for the demos.
Dim CurScreen As Long 'current Effect, needed by the main update function.
'I created a Frame for each effect and just put the current frame to
'the top. that's the easiest way i know to handle this problem; I don't
'like the "Tabbed Dialog Control" :-)

Private Sub cmbPSEffect_Click()
    Update
End Sub

Private Sub cmbW1Source_Click()
    Update
End Sub

Private Sub cmdBlBlur_Click()
    'blurs the picture in the Blur PictureBox
    FoxBlur picBlur.HDC, picBlur.Image.Handle, picBlur.HDC, picBlur.Image.Handle, 0
    picBlur.Refresh
End Sub

Private Sub cmdBlReset_Click()
    'resets the Blur picture box
    picBlur.Cls
    picBlur.Refresh
End Sub

Private Sub cmdFastMask_Click()
    'opens the Fullscreen-form for the
    'FastMask-demo
    frmFullscreen.Show
End Sub

Private Sub cmdHueDemo_Click()

    
    If Action = "hue" Then
        'the demo runs as long as Action is "hue", so the loop ends now.
        Action = ""
    Else
        'sets Action to "hue", the demo runs as long as this value doesn't change.
        Action = "hue"
        
        'changes the captionof this button
        cmdHueDemo.Caption = "Stop Demo"
        
        'this stuff is for the FPS counter
        FoxTime FOX_TIME_RESET
        FoxCounter FOX_COUNTER_RESET
        FoxTimer 0, FOX_TIME_RESET
        
        labRotDemo.Caption = "Demo running with 0 fps."
        Do While Action = "hue"
            DoEvents
            
            'FPS Counter
            
            'increases the counter
            FoxCounter FOX_COUNTER_COUNT
            
            'each 1000  milliseconds this If-statement is true.
            If FoxTimer(1000, FOX_TIME_RESET) Then
                'Updates the FPS-label and resets the counter.
                labHueDemo.Caption = "Demo running with " & FoxCounter(FOX_COUNTER_RESET) & " fps."
                labHueDemo.Refresh
            End If
            'End FPS Counter
            
            'draws the eyes with a changing Hue level.
            FoxHSL picHueDemo.HDC, 142, 167, picHDSrc1.ScaleWidth, picHDSrc1.ScaleHeight, picHDSrc1.HDC, 0, 0, FoxTime / 30 + 120 * chkHDPsycho, 1, 0, &HFF00FF, 1
            FoxHSL picHueDemo.HDC, 225, 180, picHDSrc2.ScaleWidth, picHDSrc2.ScaleHeight, picHDSrc2.HDC, 0, 0, FoxTime / 30, 1, 0, &HFF00FF, 1
            picHueDemo.Refresh
        Loop
        'when Action is no longer "hue" the loop ends and the PictureBox
        'and the labels are resetted.
        picHueDemo.Cls
        picHueDemo.Refresh
        labHueDemo.Caption = "Demo stopped."
        cmdHueDemo.Caption = "Start Demo"
    End If
End Sub

Private Sub cmdRotate_Click()
    'function works the same way
    'than cmdHueDemo_Click, see above.
    
    If Action = "rotating" Then
        Action = ""
    Else
        Action = "rotating"
        cmdRotate.Caption = "Stop Demo"
        FoxTime FOX_TIME_RESET
        FoxCounter FOX_COUNTER_RESET
        FoxTimer 0, FOX_TIME_RESET
        labRotDemo.Caption = "Demo running with 0 fps."
        Do While Action = "rotating"
            DoEvents
            FoxCounter FOX_COUNTER_COUNT
            If FoxTimer(1000, FOX_TIME_RESET) Then
                labRotDemo.Caption = "Demo running with " & FoxCounter(FOX_COUNTER_RESET) & " fps."
                labRotDemo.Refresh
            End If
            Rotate FoxTime / 500
        Loop
        Rotate 0
        labRotDemo.Caption = "Demo stopped."
        cmdRotate.Caption = "Start Demo"
    End If
End Sub

Private Sub Rotate(Angle As Double)
    'this function is for the rotation demo.
    picDst1.Cls
    picDst2.Cls
    
    FoxRotate picDst1.HDC, picDst1.ScaleWidth \ 2, picDst1.ScaleHeight \ 2, picRotate1.ScaleWidth, picRotate1.ScaleHeight, picRotate1.HDC, 0, 0, -Angle, &HFF00FF, 1
    FoxRotate picDst1.HDC, picDst1.ScaleWidth \ 2, picDst1.ScaleHeight \ 2, picRotate2.ScaleWidth, picRotate2.ScaleHeight, picRotate2.HDC, 0, 0, Angle, &HFF00FF, 1
    
    FoxRotate picDst2.HDC, picDst2.ScaleWidth \ 2, picDst2.ScaleHeight \ 2, picRotate1.ScaleWidth, picRotate1.ScaleHeight, picRotate1.HDC, 0, 0, -Angle, &HFF00FF, 3
    FoxRotate picDst2.HDC, picDst2.ScaleWidth \ 2, picDst2.ScaleHeight \ 2, picRotate2.ScaleWidth, picRotate2.ScaleHeight, picRotate2.HDC, 0, 0, Angle, &HFF00FF, 3
    
    picDst1.Refresh
    picDst2.Refresh
End Sub

Private Sub BlendTo(Picture As StdPicture, ByVal Milliseconds As Long)
    'this function blends the current content
    'of the Transition PictureBox to the new picture.
    
    'the whole blending stuff could also be done by the FoxAlphaBlend function,
    'but this way is even faster because the FoxAlphaBlend-function always rereads
    'the contents of the bitmap, whereas here it is memorized until you delete
    'it.
    
    Static CurTime As Long
    Static DeltaTime As Double
    DeltaTime = 255 / Milliseconds
    
    picBlender.Cls
    
    DrawPicture Picture, picBlender
    picBlender.Refresh
    
    FoxxDeletePicture hPic1
    FoxxDeletePicture hPic2
    'deletes the picture buffers and recreates them with the new pictures
    hPic1 = FoxxCreatePicture(picTransition.HDC, 0, 0, picTransition.ScaleWidth, picTransition.ScaleHeight)
    hPic2 = FoxxCreatePicture(picBlender.HDC, 0, 0, picTransition.ScaleWidth, picTransition.ScaleHeight)
    
    'resets the Timer
    FoxTime FOX_TIME_RESET
    picStatus.Cls
    Do
        DoEvents
        CurTime = FoxTime
        'this loop runs until the specified max time is reached.
        If CurTime > Milliseconds Then Exit Do
        FoxxBlendPictures picTransition.HDC, 0, 0, hPic1, hPic2, hBuffer, CurTime * DeltaTime
        
        'simulates a status bar
        picStatus.Line (0, 0)-(CurTime * picStatus.ScaleWidth / Milliseconds, picStatus.ScaleHeight), , BF
        
        picTransition.Refresh
        picStatus.Refresh
    Loop
    
    FoxxBlendPictures HDC, 0, 0, hPic1, hPic2, hBuffer, 255
    picStatus.Line (0, 0)-(picStatus.ScaleWidth, picStatus.ScaleHeight), , BF
    picTransition.Refresh
    picStatus.Refresh
End Sub

Private Sub LoadBlend()
    On Error Resume Next
    Err = 0
    
    'prepares the File- and the DirListBox
    fileBlend.FileName = "*.bmp;*.jpg;*.gif;*.ani;*.cur;*.ico"
    Dir1.Path = App.Path & "\blend\"
    picBlender.Picture = LoadPicture
    picBlender.Width = picTransition.Width
    picBlender.Height = picTransition.Height
    
    'creates the Backbuffer for the Transition
    'IMPORTANT: make sure to Delete the Buffer when you don't need it
    'anymore to avoid memory leaks!
    hBuffer = FoxxCreatePicture(0, 0, 0, picTransition.ScaleWidth, picTransition.ScaleHeight)
End Sub

Private Sub cmdRotDemo_Click()
    'moves to the RotationDemo-screen
    mnuMenu_Click 6
End Sub

Private Sub Command1_Click()

End Sub

Private Sub cmdWDStart_Click()
    If Action = "wave" Then
        'the demo runs as long as Action is "wave", so the loop ends now.
        Action = ""
    Else
        'sets Action to "wave", the demo runs as long as this value doesn't change.
        Action = "wave"
        
        'changes the captionof this button
        cmdWDStart.Caption = "Stop Demo"
        
        'this stuff is for the FPS counter
        FoxTime FOX_TIME_RESET
        FoxCounter FOX_COUNTER_RESET
        FoxTimer 0, FOX_TIME_RESET
        
        labWDSpeed.Caption = "Demo running with 0 fps."
        Do While Action = "wave"
            DoEvents
            
            'FPS Counter
            
            'increases the counter
            FoxCounter FOX_COUNTER_COUNT
            
            'each 1000  milliseconds this If-statement is true.
            If FoxTimer(1000, FOX_TIME_RESET) Then
                'Updates the FPS-label and resets the counter.
                labWDSpeed.Caption = "Demo running with " & FoxCounter(FOX_COUNTER_RESET) & " fps."
                labWDSpeed.Refresh
            End If
            'End FPS Counter
            FoxWave picWaveDemo.HDC, 0, 120, picWaveDemo.ScaleWidth, picWaveDemo.ScaleHeight - 120, picWDMirror.HDC, 0, 70, scrWDSize, 4, FoxTime / 50, 90
            FoxFastMask picWaveDemo.HDC, 0, 0, picWaveDemo.ScaleWidth, picWaveDemo.ScaleHeight, picWDSource.HDC, 0, 0, picWDMask.HDC, 0, 0, 0
            picWaveDemo.Refresh
        Loop
        'when Action is no longer "wave" the loop ends and the PictureBox
        'and the labels are resetted.
        picWaveDemo.Cls
        picWaveDemo.Refresh
        labWDSpeed.Caption = "Demo stopped."
        cmdWDStart.Caption = "Start Demo"
    End If
End Sub

Private Sub Dir1_Change()
    'updates the FileListBox when the
    'folder is changed
    fileBlend.Path = Dir1
End Sub

Private Sub Drive1_Change()
    'updates the DirListBox when the
    'drive is changed
    Dir1.Path = Drive1
End Sub

Private Sub fileBlend_Click()
    'starts the transition effect, blends to the file selected
    'in the FileListBox.
    On Error Resume Next
    ChDrive Drive1
    ChDir Dir1
    BlendTo LoadPicture(fileBlend.List(fileBlend.ListIndex)), scrBlend
End Sub

Private Sub Form_Load()
    On Error Resume Next
    ChDir App.Path
    'sets the current position for the moveable effects
    'to the center of the picturebox.
    CurX = picBack.ScaleWidth \ 2
    CurY = picBack.ScaleHeight \ 2
    
    'loads all the pictures into the pictureboxes.
    picBack.Picture = LoadPicture("Images/back.jpg")
    picRotate1.Picture = LoadPicture("Images/britney.jpg")
    picRotate2.Picture = LoadPicture("Images/rotate2.bmp")
    picABSrc.Picture = LoadPicture("Images/britney.bmp")
    picRotSrc.Picture = LoadPicture("Images/britney.bmp")
    picOLSrc.Picture = LoadPicture("Images/britney.bmp")
    picInvSrc.Picture = LoadPicture("Images/britney.bmp")
    picBMSrc.Picture = LoadPicture("Images/britney.bmp")
    picHueDemo.Picture = LoadPicture("Images/anna.jpg")
    picChrome.Picture = LoadPicture("Images/laetitia.jpg")
    picMonochrome.Picture = LoadPicture("Images/laetitia.jpg")
    picShift.Picture = LoadPicture("Images/laetitia.jpg")
    picPsycho.Picture = LoadPicture("Images/laetitia.jpg")
    picWave.Picture = LoadPicture("Images/back.jpg")
    picAlphaBlend.Picture = picBack.Picture
    picAlphaMask.Picture = picBack.Picture
    picRotate.Picture = picBack.Picture
    picOutline.Picture = picBack.Picture
    picInvert.Picture = picBack.Picture
    picMosaic.Picture = picBack.Picture
    picBrightness.Picture = picBack.Picture
    picBlur.Picture = picBack.Picture
    picRelief.Picture = picBack.Picture
    picBumpMap.Picture = picBack.Picture
    picHSL.Picture = picBack.Picture
    picWaveDemo.Picture = picBack.Picture
    
    'this is necessary for the transition demo.
    LoadBlend
    
    'selects the first effect by simulating a click
    'on it's menu entry.
    mnuMenu_Click 0
    
    'loads the first mask and data pictures for
    'the AlphaMask effect.
    lstAMPic.ListIndex = 0
    
    cmbPSEffect.ListIndex = 0
    
    cmbW1Source.ListIndex = 0
    
    'selects the default directions for BumpMap
    'and Relief.
    optBMDirection(0).Value = True
    optRLDirection(0).Value = True
    
    'Preparing the Wave Demo
    picWDMask.Picture = LoadPicture("images/WaveMask.bmp")
    picWDSource.Picture = picBack.Picture
    BitBlt picWDSource.HDC, 0, 0, picWaveDemo.ScaleWidth, picWaveDemo.ScaleHeight, picWDMask.HDC, 0, 0, vbMergePaint
    Set picWDSource.Picture = picWDSource.Image
    FoxFlip picWDMirror.HDC, 0, 0, picWaveDemo.ScaleWidth, picWaveDemo.ScaleHeight, picWaveDemo.HDC, 0, 0, 0, FOX_FLIP_Y
    FoxBrightness picWDMirror.HDC, picWDMirror.Image.Handle, picWDMirror.HDC, picWDMirror.Image.Handle, -50
    Set picWDMirror.Picture = picWDMirror.Image
    
    'shows the toolboxes and moves them to the right
    'side of this window.
    frmFlags.Show 0, Me
    frmEffect.Move Left + Width, Top
    frmFlags.Move Left + Width, Top + frmEffect.Height
    frmEffect.Show 0, Me
End Sub

Private Sub Form_Resize()
    'moves the Screen-frames to fully fill the form
    On Error Resume Next
    For I = fraScreen.LBound To fraScreen.UBound
        fraScreen(I).Move 0, 0, ScaleWidth, ScaleHeight
    Next I
End Sub

Private Sub Form_Unload(Cancel As Integer)
    FoxxDeletePicture hPic1 'this is important to avoid memory leaks
    FoxxDeletePicture hPic2 'this is important to avoid memory leaks
    FoxxDeletePicture hBuffer 'this is important to avoid memory leaks
    Unload frmEffect 'unloads the
    Unload frmFlags  'toolboxes
    End 'forces the program to end, because it would
        'not if a loop is still running
End Sub

Private Sub lstAMPic_Click()
    'loads the selected pictures into the picture boxes
    'for the AlphaMask effect
    Select Case lstAMPic.ListIndex
    Case 0
        picAMSrc.Picture = LoadPicture("Images\FlameSrc.bmp")
        picAMMask.Picture = LoadPicture("Images\FlameMsk.bmp")
    Case 1
        picAMSrc.Picture = LoadPicture("Images\TextSrc.bmp")
        picAMMask.Picture = LoadPicture("Images\TextMsk.bmp")
    End Select
    Update 'main Update-function
End Sub

Private Sub mnuCls_Click()
    'checks/unchecks the entry and updates the
    'CheckBox in the Flags-toolbox.
    mnuCls.Checked = Not mnuCls.Checked
    frmFlags.chkCls.Value = -mnuCls.Checked
End Sub

Private Sub mnuExit_Click()
    Unload Me 'Exits the program
End Sub

Private Sub mnuFlag_Click(Index As Integer)
    'checks/unchecks the flag and updates the
    'CheckBox in the Flags-toolbox.
    mnuFlag(Index).Checked = Not mnuFlag(Index).Checked
    frmFlags.chkFlag(Index).Value = -mnuFlag(Index).Checked
End Sub

Public Sub mnuMenu_Click(Index As Integer)
    Action = ""
    
    'saves the current effect number, so the update
    'function knows which picturebox to update.
    CurScreen = Index
    
    'puts a check next to the current menu entry
    'and underlines the selected button in the
    'toolbox.
    For I = fraScreen.LBound To fraScreen.UBound
        mnuMenu(I).Checked = I = Index
        fraScreen(I).Visible = I = Index
        frmEffect.cmdEffect(I).FontUnderline = I = Index
        'x = I = Index might look somehow crazy,
        'x is true when I is the current Index,
        'otherwise it's false. that's shorter
        'than an if statement.
    Next I
    
    'selects the available flags to update the
    'flags list.
    Select Case Index
        Case 0: frmFlags.AllowFlags &HC0103
        Case 1: frmFlags.AllowFlags &HC3301
        Case 3: frmFlags.AllowFlags &HC1101
        Case 4: frmFlags.AllowFlags &HC3701
        Case 5: frmFlags.AllowFlags &HC0001
        Case 7: frmFlags.AllowFlags &HC0001
        Case 8: frmFlags.AllowFlags &HC1101
        Case 12: frmFlags.AllowFlags &HC1101
        Case 13: frmFlags.AllowFlags &HC1101
        Case 15: frmFlags.AllowFlags &HC0105
        Case 16: frmFlags.AllowFlags &HC0100
        Case 17: frmFlags.AllowFlags &HC1101
        Case 18: frmFlags.AllowFlags &HC1101
        Case 19: frmFlags.AllowFlags &HC1101
        Case Else: frmFlags.AllowFlags 0
    End Select
    
    'runs the main update function.
    Update
End Sub

Private Sub optBMDirection_Click(Index As Integer)
    'I really can't explain these two functions,
    'I just figured them out when I played
    'with the effects... well, it works,
    'that's all that matters :-)
    Dim ShiftX As Long, ShiftY As Long
    Select Case Index
        Case 0, 1, 2: ShiftY = 1
        Case 5, 6, 7: ShiftY = -1
    End Select
    Select Case Index
        Case 0, 3, 5: ShiftX = 1
        Case 2, 4, 7: ShiftX = -1
    End Select
    picBMSrc.Cls
    FoxAlphaBlend picBMSrc.HDC, 0, 0, picBMSrc.ScaleWidth, picBMSrc.ScaleHeight, picBMSrc.HDC, ShiftX, ShiftY, 128, 0, FOX_DST_GREYSCALE + FOX_SRC_GREYSCALE + FOX_DST_INVERT
    picBMSrc.Refresh
    Update
End Sub

Private Sub optRLDirection_Click(Index As Integer)
    'see above
    Dim ShiftX As Long, ShiftY As Long
    Select Case Index
        Case 0, 1, 2: ShiftY = 1
        Case 5, 6, 7: ShiftY = -1
    End Select
    Select Case Index
        Case 0, 3, 5: ShiftX = 1
        Case 2, 4, 7: ShiftX = -1
    End Select
    picRelief.Cls
    FoxAlphaBlend picRelief.HDC, 0, 0, picRelief.ScaleWidth, picRelief.ScaleHeight, picRelief.HDC, ShiftX, ShiftY, 128, 0, FOX_DST_GREYSCALE + FOX_SRC_GREYSCALE + FOX_DST_INVERT
    picRelief.Refresh
End Sub

Private Sub picAlphaBlend_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    Update
End Sub

Private Sub picAlphaMask_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    Update
End Sub

Private Sub picBumpMap_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    Update
End Sub

Private Sub picInvert_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    Update
End Sub

Private Sub picMosaic_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    'scrMosaic_change
End Sub

Private Sub picOutline_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'don't move the sprite if the 2nd mouse button is pushed.
    If Button = 2 Then Exit Sub
    CurX = X 'Updates the current position for
    CurY = Y 'the Update function.
    Update
End Sub

Private Sub scrAlphaBlend_Change()
    Update
    'displays the current scrollbar-value in the label
    labABValue = "Alpha Value: " & scrAlphaBlend.Value
    
    'the values 0, 64, 128, 192 and 255 are much faster
    'than the others in the C++ - dll, so they are
    'marked when selected.
    Select Case scrAlphaBlend
        Case 0, 64, 128, 192, 255
        labABValue.ForeColor = &HFF
        labABValue = labABValue & " (fast)"
        Case Else
        labABValue.ForeColor = &H0
    End Select
    labABValue.Refresh
End Sub

Private Sub scrAlphaBlend_Scroll()
    'updates the picturebox while you move the slider.
    scrAlphaBlend_Change
End Sub

Private Sub scrBlend_Change()
    'displays the current scrollbar-value in the label
    labBlend = "Speed: " & scrBlend & " ms / Blending"
End Sub

Private Sub scrBlend_Scroll()
    'updates the picturebox while you move the slider.
    scrBlend_Change
End Sub

Private Sub scrBrightness_Change()
    Update
    'displays the current scrollbar-value in the label
    labBrValue = "Level: " & scrBrightness
    labBrValue.Refresh
End Sub

Private Sub scrBrightness_Scroll()
    'updates the picturebox while you move the slider.
    scrBrightness_Change
End Sub

Private Sub scrChrome_Change()
    Update
    'displays the current scrollbar-value in the label
    labCHValue = "Chrome level: " & scrChrome
    labCHValue.Refresh
End Sub

Private Sub scrChrome_Scroll()
    'updates the picturebox while you move the slider.
    scrChrome_Change
End Sub

Private Sub scrFastMask_Change()
    'displays the current scrollbar-value in the label
    If scrFastMask >= 0 Then
        labFastMask = "Size: " & scrFastMask + 1 & "x"
    Else
        labFastMask = "Size: 1/" & 1 - scrFastMask & "x"
    End If
End Sub

Private Sub scrFastMask_Scroll()
    'updates the picturebox while you move the slider.
    scrFastMask_Change
End Sub

Private Sub scrHue_Change()
    Update
    'displays the current scrollbar-value in the label
    labHue = scrHue / 10 & "°"
    labHue.Refresh
End Sub

Private Sub scrHue_Scroll()
    'updates the picturebox while you move the slider.
    scrHue_Change
End Sub

Private Sub scrMonochrome_Change()
    Update
    labMCValue = "Monochrome Value: " & scrMonochrome
    labMCValue.Refresh
End Sub

Private Sub scrMonochrome_Scroll()
    scrMonochrome_Change
End Sub

Private Sub scrMosaic_Change()
    Update
    'displays the current scrollbar-value in the label
    labMoValue = "Level: " & scrMosaic
    labMoValue.Refresh
End Sub

Private Sub scrMosaic_Scroll()
    'updates the picturebox while you move the slider.
    scrMosaic_Change
End Sub

Private Sub scrOLBlue_Change()
    Update
    'Updates the Color in the preview box
    picOLColor.BackColor = RGB(scrOLRed, scrOLGreen, scrOLBlue)
    picOLColor.Refresh
End Sub

Private Sub scrOLBlue_Scroll()
    'updates the picturebox while you move the slider.
    scrOLBlue_Change
End Sub

Private Sub scrOLGreen_Change()
    Update
    'Updates the Color in the preview box
    picOLColor.BackColor = RGB(scrOLRed, scrOLGreen, scrOLBlue)
    picOLColor.Refresh
End Sub

Private Sub scrOLGreen_Scroll()
    'updates the picturebox while you move the slider.
    scrOLGreen_Change
End Sub

Private Sub scrOLRed_Change()
    Update
    'Updates the Color in the preview box
    picOLColor.BackColor = RGB(scrOLRed, scrOLGreen, scrOLBlue)
    picOLColor.Refresh
End Sub

Private Sub scrOLRed_Scroll()
    'updates the picturebox while you move the slider.
    scrOLRed_Change
End Sub

Private Sub scrPsycho_Change()
    Update
    labPSValue = "Shift: " & scrPsycho
    labPSValue.Refresh
End Sub

Private Sub scrPsycho_Scroll()
    scrPsycho_Change
End Sub

Private Sub scrRotate_Change()
    Update
    'displays the current scrollbar-value in the label
    labRotValue = "Angle: " & scrRotate / 10 & "°"
    labRotValue.Refresh
End Sub

Private Sub scrRotate_Scroll()
    'updates the picturebox while you move the slider.
    scrRotate_Change
End Sub

Private Sub scrSaturation_Change()
    Update
    'displays the current scrollbar-value in the label
    labSaturation = scrSaturation & "%"
    labSaturation.Refresh
End Sub

Private Sub scrSaturation_Scroll()
    'updates the picturebox while you move the slider.
    scrSaturation_Change
End Sub

Private Sub DrawPicture(Picture As StdPicture, Box As PictureBox)
    'this function is for the Transition effect, it fits
    'the picture into the PictureBox.
    Box.Cls
    If Picture Then
        picTemp.Picture = Picture
        
        'this function draws a preview by sizing the picture so
        'it fits and moving it to the center.
        FoxDrawPreview Box.HDC, 0, 0, Box.ScaleWidth, Box.ScaleHeight, picTemp.HDC, 0, 0, picTemp.ScaleWidth, picTemp.ScaleHeight, 0
    Else
        'if no picture is selected clear the PictureBox
        picTemp.Picture = LoadPicture
    End If
    Box.Refresh
End Sub

Public Sub Update()
    'main update function. when you select an effect the current
    'number is stored in CurScreen so this function knows
    'which PictureBox to update.
    Select Case CurScreen
    
    Case 0 'Rotate
        If frmFlags.GetCls Then picRotate.Cls
        FoxTime FOX_TIME_RESET
        FoxRotate picRotate.HDC, picRotate.ScaleWidth / 2, picRotate.ScaleHeight / 2, picRotSrc.ScaleWidth, picRotSrc.ScaleHeight, picRotSrc.HDC, 0, 0, scrRotate.Value / 10, &HFF00FF, frmFlags.Flags
        labRotSpeed = "Speed: " & FoxTime & " ms / Frame"
        labRotSpeed.Refresh
        picRotate.Refresh
        
    Case 1: 'AlphaBlend
        If frmFlags.GetCls Then picAlphaBlend.Cls
        FoxTime FOX_TIME_RESET
        FoxAlphaBlend picAlphaBlend.HDC, CurX - picABSrc.ScaleWidth \ 2, CurY - picABSrc.ScaleHeight \ 2, picABSrc.ScaleWidth, picABSrc.ScaleHeight, picABSrc.HDC, 0, 0, scrAlphaBlend, &HFF00FF, frmFlags.Flags
        labABSpeed = "Speed: " & FoxTime & " ms / Frame"
        picAlphaBlend.Refresh
        labABSpeed.Refresh
    
    Case 3: 'Brightness
        If frmFlags.GetCls Then picBrightness.Cls
        FoxTime FOX_TIME_RESET
        FoxBrightness picBrightness.HDC, picBrightness.Image.Handle, picBrightness.HDC, picBrightness.Picture.Handle, scrBrightness.Value, 0, frmFlags.Flags
        labBrSpeed = "Speed: " & FoxTime & " ms / Frame"
        labBrSpeed.Refresh
        picBrightness.Refresh
    
    Case 4 'AlphaMask
        If frmFlags.GetCls Then picAlphaMask.Cls
        FoxTime FOX_TIME_RESET
        FoxAlphaMask picAlphaMask.HDC, CurX - picAMSrc.ScaleWidth \ 2, CurY - picAMSrc.ScaleHeight \ 2, picAMSrc.ScaleWidth, picAMSrc.ScaleHeight, picAMSrc.HDC, 0, 0, picAMMask.HDC, 0, 0, &HFF00FF, frmFlags.Flags
        labAMSpeed = "Speed: " & FoxTime & " ms / Frame"
        labAMSpeed.Refresh
        picAlphaMask.Refresh
        
    Case 5 'Invert
        If frmFlags.GetCls Then picInvert.Cls
        FoxTime FOX_TIME_RESET
        FoxInvert picInvert.HDC, CurX - picInvSrc.ScaleWidth \ 2, CurY - picInvSrc.ScaleHeight \ 2, picInvSrc.ScaleWidth, picInvSrc.ScaleHeight, picInvSrc.HDC, 0, 0, &HFF00FF, frmFlags.Flags
        labInvSpeed = "Speed: " & FoxTime & " ms / Frame"
        picInvert.Refresh
        labInvSpeed.Refresh
    
    Case 7: 'Outline
        If frmFlags.GetCls Then picOutline.Cls
        FoxTime FOX_TIME_RESET
        FoxOutline picOutline.HDC, CurX - picOLSrc.ScaleWidth \ 2, CurY - picOLSrc.ScaleHeight \ 2, picOLSrc.ScaleWidth, picOLSrc.ScaleHeight, picOLSrc.HDC, 0, 0, RGB(scrOLBlue, scrOLGreen, scrOLRed), &HFF00FF, frmFlags.Flags
        labOLSpeed = "Speed: " & FoxTime & " ms / Frame"
        picOutline.Refresh
        labOLSpeed.Refresh
    
    Case 8 'Mosaic
        If frmFlags.GetCls Then picMosaic.Cls
        FoxTime FOX_TIME_RESET
        FoxMosaic picMosaic.HDC, 0, 0, picMosaic.ScaleWidth, picMosaic.ScaleHeight, picMosaic.HDC, 0, 0, scrMosaic.Value, 0, frmFlags.Flags
        labMoSpeed = "Speed: " & FoxTime & " ms / Frame"
        labMoSpeed.Refresh
        picMosaic.Refresh
        
    Case 12 'Bump Mapping
        picBumpMap.Cls
        FoxBumpMap picBumpMap.HDC, CurX, CurY, picBMSrc.ScaleWidth - 2, picBMSrc.ScaleHeight - 2, picBMSrc.HDC, 1, 1, &H7F7F7F, 1
        picBumpMap.Refresh

    Case 13 'Color Adjustment
        picHSL.Cls
        FoxAlphaBlend picHSL.HDC, 0, 0, picRotSrc.ScaleWidth, picRotSrc.ScaleHeight, picRotSrc.HDC, 0, 0, 255, &HFF00FF, FOX_USE_MASK
        FoxHSL picHSL.HDC, 0, 0, picHSL.ScaleWidth, picHSL.ScaleHeight, picHSL.HDC, 0, 0, scrHue.Value / 10, scrSaturation.Value / 100, 0, 0, frmFlags.Flags
        picHSL.Refresh
    
    Case 15 'Chrome
        picChrome.Cls
        FoxTime FOX_TIME_RESET
        'FoxChrome picChrome.HDC, 0, 0, picChrome.ScaleWidth, picChrome.ScaleHeight, picChrome.HDC, 0, 0, scrChrome, 0, frmFlags.Flags
        FoxChrome picChrome.HDC, 0, 0, picChrome.ScaleWidth, picChrome.ScaleHeight, picChrome.HDC, 0, 0, scrChrome, 0, frmFlags.Flags
        labCHSpeed = "Speed: " & FoxTime & " ms / Frame"
        labCHSpeed.Refresh
        picChrome.Refresh
    
    Case 16 'Monochrome
        picMonochrome.Cls
        FoxTime FOX_TIME_RESET
        'FoxChrome picChrome.HDC, 0, 0, picChrome.ScaleWidth, picChrome.ScaleHeight, picChrome.HDC, 0, 0, scrChrome, 0, frmFlags.Flags
        '    FoxChrome picChrome.HDC    , 0, 0, picChrome.ScaleWidth    , picChrome.ScaleHeight    , picChrome.HDC    , 0, 0, scrChrome    , 0, frmFlags.Flags
        FoxMonochrome picMonochrome.HDC, 0, 0, picMonochrome.ScaleWidth, picMonochrome.ScaleHeight, picMonochrome.HDC, 0, 0, scrMonochrome, 0, frmFlags.Flags
        'FoxShift picMonochrome.HDC, 0, 0, picMonochrome.ScaleWidth, picMonochrome.ScaleHeight, picMonochrome.HDC, 0, 0, 1, scrMonochrome Mod 256, 0, 0
        'FoxPsycho picMonochrome.HDC, 0, 0, picMonochrome.ScaleWidth, picMonochrome.ScaleHeight, picMonochrome.HDC, 0, 0, 1, scrMonochrome Mod 256, 1, 0, 0
        labMCSpeed = "Speed: " & FoxTime & " ms / Frame"
        labMCSpeed.Refresh
        picMonochrome.Refresh
    
    Case 17 'Shift
        picShift.Cls
        FoxTime FOX_TIME_RESET
        FoxShift picShift.HDC, 0, 0, picShift.ScaleWidth, picShift.ScaleHeight, picShift.HDC, 0, 0, 1, scrShift Mod 256, 0, frmFlags.Flags
        labSHSpeed = "Speed: " & FoxTime & " ms / Frame"
        labSHSpeed.Refresh
        picShift.Refresh
    
    Case 18 'Psycho
        picPsycho.Cls
        FoxTime FOX_TIME_RESET
        FoxPsycho picPsycho.HDC, 0, 0, picPsycho.ScaleWidth, picPsycho.ScaleHeight, picPsycho.HDC, 0, 0, 1, scrPsycho Mod 256, cmbPSEffect.ListIndex, 0, frmFlags.Flags
        labPSSpeed = "Speed: " & FoxTime & " ms / Frame"
        labPSSpeed.Refresh
        picPsycho.Refresh
        
    Case 19 'Wave
        picWave.Cls
        FoxTime FOX_TIME_RESET
        If cmbW1Source.ListIndex = 0 Then
            FoxWave picWave.HDC, 0, 0, picWave.ScaleWidth, picWave.ScaleHeight, picWave.HDC, 0, 0, scrW1Size, scrW1Movement, scrW1Shift, (scrWave Mod 360) * 1.74532925199433E-02, 0, frmFlags.Flags
        Else
            FoxWave picWave.HDC, 50, 50, picRotSrc.ScaleWidth, picRotSrc.ScaleHeight, picRotSrc.HDC, 0, 0, scrW1Size, scrW1Movement, scrW1Shift, (scrWave Mod 360) * 1.74532925199433E-02, &HFF00FF, frmFlags.Flags
        End If
        labW1Speed = "Speed: " & FoxTime & " ms / Frame"
        labW1Speed.Refresh
        picWave.Refresh
    
    End Select
End Sub

Private Sub scrShift_Change()
    Update
    labSHValue = "Shift: " & scrShift
    labSHValue.Refresh
End Sub

Private Sub scrShift_Scroll()
    scrShift_Change
End Sub

Private Sub scrW1Movement_Change()
    Update
    labW1Movement = "Movement: " & scrW1Movement
    labW1Movement.Refresh
End Sub

Private Sub scrW1Movement_Scroll()
    scrW1Movement_Change
End Sub

Private Sub scrW1Shift_Change()
    Update
    labW1Shift = "Shift: " & scrW1Shift
    labW1Shift.Refresh
End Sub

Private Sub scrW1Shift_Scroll()
    scrW1Shift_Change
End Sub

Private Sub scrW1Size_Change()
    Update
    labW1Size = "Size: " & scrW1Size
    labW1Size.Refresh
End Sub

Private Sub scrW1Size_Scroll()
    scrW1Size_Change
End Sub

Private Sub scrWave_Change()
    Update
    labW1Value = "Angle: " & scrWave Mod 360 & "°"
    labW1Value.Refresh
End Sub

Private Sub scrWave_Scroll()
    scrWave_Change
End Sub

Private Sub scrWDSize_Change()
    Update
    labWDSize = "Wave Size: " & scrWDSize
    labWDSize.Refresh
End Sub

Private Sub scrWDSize_Scroll()
    scrWDSize_Change
End Sub

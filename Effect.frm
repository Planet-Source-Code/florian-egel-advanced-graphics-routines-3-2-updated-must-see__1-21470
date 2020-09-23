VERSION 5.00
Begin VB.Form frmEffect 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Effect"
   ClientHeight    =   3255
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2355
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3255
   ScaleWidth      =   2355
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton cmdEffect 
      Enabled         =   0   'False
      Height          =   315
      Index           =   21
      Left            =   1170
      TabIndex        =   22
      TabStop         =   0   'False
      Top             =   2970
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Wave Demo"
      Height          =   315
      Index           =   20
      Left            =   -30
      TabIndex        =   21
      TabStop         =   0   'False
      Top             =   2970
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Wave"
      Height          =   315
      Index           =   19
      Left            =   1170
      TabIndex        =   20
      TabStop         =   0   'False
      Top             =   2670
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Psycho"
      Height          =   315
      Index           =   18
      Left            =   -30
      TabIndex        =   19
      TabStop         =   0   'False
      Top             =   2670
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Shift"
      Height          =   315
      Index           =   17
      Left            =   1170
      TabIndex        =   18
      TabStop         =   0   'False
      Top             =   2370
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Monochrome"
      Height          =   315
      Index           =   16
      Left            =   -30
      TabIndex        =   17
      TabStop         =   0   'False
      Top             =   2370
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Height          =   375
      Left            =   2400
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   16
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Chrome"
      Height          =   315
      Index           =   15
      Left            =   1170
      TabIndex        =   15
      TabStop         =   0   'False
      Top             =   2070
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Color Demo"
      Height          =   315
      Index           =   14
      Left            =   -30
      TabIndex        =   14
      TabStop         =   0   'False
      Top             =   2070
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Color adjus."
      Height          =   315
      Index           =   13
      Left            =   1170
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   1770
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Bump Map"
      Height          =   315
      Index           =   12
      Left            =   -30
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   1770
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Relief"
      Height          =   315
      Index           =   11
      Left            =   1170
      TabIndex        =   11
      TabStop         =   0   'False
      Top             =   1470
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Fast Mask"
      Height          =   315
      Index           =   10
      Left            =   -30
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   1470
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Transition"
      Height          =   315
      Index           =   9
      Left            =   1170
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   1170
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Mosaic"
      Height          =   315
      Index           =   8
      Left            =   -30
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   1170
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Outline"
      Height          =   315
      Index           =   7
      Left            =   1170
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   870
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Demo Rotate"
      Height          =   315
      Index           =   6
      Left            =   -30
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   870
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Invert"
      Height          =   315
      Index           =   5
      Left            =   1170
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   570
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Alpha Mask"
      Height          =   315
      Index           =   4
      Left            =   -30
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   570
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Brightness"
      Height          =   315
      Index           =   3
      Left            =   1170
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   270
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Blur"
      Height          =   315
      Index           =   2
      Left            =   -30
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   270
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Alpha Blend"
      Height          =   315
      Index           =   1
      Left            =   1170
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   -30
      Width           =   1215
   End
   Begin VB.CommandButton cmdEffect 
      Caption         =   "Rotate"
      Height          =   315
      Index           =   0
      Left            =   -30
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   -30
      Width           =   1215
   End
End
Attribute VB_Name = "frmEffect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'''''''''''''''''''''''''''''''''''''''''''
'''' frmEffect.frm ''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''

'this is the Effects toolbox, where you can
'select the current effect.

Private Sub cmdEffect_Click(Index As Integer)
    'clicking one of the buttons is the same
    'as clicking a menu entry in the main form,
    'so this event runs the menu event.
    frmFoxCBmp3.mnuMenu_Click Index
End Sub

Private Sub cmdEffect_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    'this is just to make the whole thing
    'look better, to avoid the focus border
    'of the button. note that the TabStop
    'value of the buttons is false, so the
    'buttons can only get focus by clicking.
    'picture1 has no other function.
    Picture1.SetFocus
End Sub

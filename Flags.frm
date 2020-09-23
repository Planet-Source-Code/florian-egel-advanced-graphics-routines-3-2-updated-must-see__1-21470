VERSION 5.00
Begin VB.Form frmFlags 
   BorderStyle     =   4  'Festes Werkzeugfenster
   Caption         =   "Flags"
   ClientHeight    =   7710
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2355
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7710
   ScaleWidth      =   2355
   ShowInTaskbar   =   0   'False
   Begin VB.CheckBox chkCls 
      Caption         =   "Clear Background"
      Height          =   240
      Left            =   0
      TabIndex        =   31
      Top             =   0
      Value           =   1  'Aktiviert
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   30
      Left            =   0
      TabIndex        =   30
      Top             =   7440
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   29
      Left            =   0
      TabIndex        =   29
      Top             =   7200
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   28
      Left            =   0
      TabIndex        =   28
      Top             =   6960
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   27
      Left            =   0
      TabIndex        =   27
      Top             =   6720
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   26
      Left            =   0
      TabIndex        =   26
      Top             =   6480
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   25
      Left            =   0
      TabIndex        =   25
      Top             =   6240
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   24
      Left            =   0
      TabIndex        =   24
      Top             =   6000
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   23
      Left            =   0
      TabIndex        =   23
      Top             =   5760
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   22
      Left            =   0
      TabIndex        =   22
      Top             =   5520
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   21
      Left            =   0
      TabIndex        =   21
      Top             =   5280
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   20
      Left            =   0
      TabIndex        =   20
      Top             =   5040
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Flip Y-Axis"
      Height          =   240
      Index           =   19
      Left            =   0
      TabIndex        =   19
      Top             =   4800
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Flip X-Axis"
      Height          =   240
      Index           =   18
      Left            =   0
      TabIndex        =   18
      Top             =   4560
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   17
      Left            =   0
      TabIndex        =   17
      Top             =   4320
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Turn Left"
      Height          =   240
      Index           =   16
      Left            =   0
      TabIndex        =   16
      Top             =   4080
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   15
      Left            =   0
      TabIndex        =   15
      Top             =   3840
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   14
      Left            =   0
      TabIndex        =   14
      Top             =   3600
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Greyscale Destination"
      Height          =   240
      Index           =   13
      Left            =   0
      TabIndex        =   13
      Top             =   3360
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Greyscale Source"
      Height          =   240
      Index           =   12
      Left            =   0
      TabIndex        =   12
      Top             =   3120
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   11
      Left            =   0
      TabIndex        =   11
      Top             =   2880
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Invert Mask"
      Height          =   240
      Index           =   10
      Left            =   0
      TabIndex        =   10
      Top             =   2640
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Invert Destination"
      Height          =   240
      Index           =   9
      Left            =   0
      TabIndex        =   9
      Top             =   2400
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Invert Source"
      Height          =   240
      Index           =   8
      Left            =   0
      TabIndex        =   8
      Top             =   2160
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   7
      Left            =   0
      TabIndex        =   7
      Top             =   1920
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   6
      Left            =   0
      TabIndex        =   6
      Top             =   1680
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   5
      Left            =   0
      TabIndex        =   5
      Top             =   1440
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   4
      Left            =   0
      TabIndex        =   4
      Top             =   1200
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "(undefined)"
      Height          =   240
      Index           =   3
      Left            =   0
      TabIndex        =   3
      Top             =   960
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Linear Chrome"
      Height          =   240
      Index           =   2
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Anti-Aliasing"
      Height          =   240
      Index           =   1
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Value           =   1  'Aktiviert
      Width           =   2355
   End
   Begin VB.CheckBox chkFlag 
      Caption         =   "Use Mask Color"
      Height          =   240
      Index           =   0
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Value           =   1  'Aktiviert
      Width           =   2355
   End
End
Attribute VB_Name = "frmFlags"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
''''''''''''''''''''''''''''''''''''''''''
'''' frmFlags.frm ''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''

'this is the Flags toolbox, that shows the
'available Flags.

'this value stores the current selected flags.
'that way is faster than always calculate
'this value again.
Private m_Flags As Long

Private Sub chkCls_Click()
    'runs the main Update-function when
    'this flag is changed.
    frmFoxCBmp3.Update
End Sub

Private Sub chkFlag_Click(Index As Integer)
    'calculates the new Flags value and stores
    'it in the member variable.
    m_Flags = GetFlags
    
    'updates the menu in the main form.
    frmFoxCBmp3.mnuFlag(Index).Checked = chkFlag(Index)
    
    'runs the main Update function when
    'any flag is changed.
    frmFoxCBmp3.Update
End Sub

Public Function GetCls() As Boolean
    'returns the value of the "Clear Background"-flag.
    GetCls = chkCls
End Function

Private Function GetFlags() As Long
    'calculates the flags value from the
    'single flags.
    Dim Flags As Long
    For I = 0 To 30
        If chkFlag(I).Enabled And chkFlag(I) Then
            Flags = Flags + 2 ^ I
        End If
    Next I
    GetFlags = Flags
End Function

Public Property Get Flags() As Long
    'returns the currently selected flags.
    Flags = m_Flags
End Property

Public Sub AllowFlags(ByVal Flags As Long)
    'with this function you can select
    'which flags are shown and which not.
    Dim CurNum As Long
    CurNum = 1
    For I = 0 To 30
        If Flags And 2 ^ I Then
            'shows the flag in the main form's menu
            'and in this toolbox
            frmFoxCBmp3.mnuFlag(I).Enabled = True
            frmFoxCBmp3.mnuFlag(I).Visible = True
            chkFlag(I).Enabled = True
            chkFlag(I).Visible = True
            'moves the flags so there are no
            'blank spaces between them.
            chkFlag(I).Top = CurNum * 240
            CurNum = CurNum + 1
        Else
            'hides the unavailable flags
            frmFoxCBmp3.mnuFlag(I).Enabled = False
            frmFoxCBmp3.mnuFlag(I).Visible = False
            chkFlag(I).Enabled = False
            chkFlag(I).Visible = False
        End If
    Next I
    
    'resizes this toolbox so the flag checkboxes
    'fit exactly in
    Height = Height - ScaleHeight + CurNum * 240
    
    'recalculates the flags value, because disabled
    'flags are not counted.
    m_Flags = GetFlags
End Sub

Attribute VB_Name = "basFoxCBmp3"
Enum FoxTimeFlags
    FOX_TIME_RESET = &H1
End Enum

Enum FoxCounterFlags
    FOX_COUNTER_RESET = &H1
    FOX_COUNTER_COUNT = &H2
End Enum

'All functions can be controlled by these flags, where
'some functions ignore specific flags.
Enum FoxEffectFlags
    FOX_USE_MASK = &H1
    FOX_ANTI_ALIAS = &H2
    FOX_CHROME_LINEAR = &H4
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

Public Declare Function FoxDrawPreview Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal srcWidth As Long, ByVal srcHeight As Long, Optional ByVal Flags As Long) As Long

'Timer and Counter functions. to learn
'about the usage just read through the code,
'they are always used for FPS-counters
Public Declare Function FoxTime Lib "FoxCBmp3.dl" (Optional ByVal Flags As FoxTimeFlags) As Long
Public Declare Function FoxCounter Lib "FoxCBmp3.dl" (Optional ByVal Flags As FoxCounterFlags) As Long
Public Declare Function FoxTimer Lib "FoxCBmp3.dl" (Optional ByVal Time As Long, Optional ByVal Flags As FoxTimeFlags) As Long

'Filters & Effects
Public Declare Function FoxMosaic Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Level As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxBrightness Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal Handle As Long, ByVal hSrcDC As Long, ByVal SrcHandle As Long, ByVal Brightness As Long, Optional ByVal TransColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxBlur Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal Handle As Long, ByVal hSrcDC As Long, ByVal SrcHandle As Long, Blur As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxInvert Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxGreyScale Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxAlphaBlend Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal alpha As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxAlphaMask Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal hMaskDC As Long, ByVal xMask As Long, ByVal yMask As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxRotate Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Angle As Double, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxOutline Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal LineColor As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxFlip Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxBumpMap Lib "FoxCBmp3.dl" (ByVal DstDC As Long, ByVal DstX As Long, ByVal DstY As Long, ByVal DstW As Long, ByVal DstH As Long, ByVal SrcDC As Long, ByVal SrcX As Long, ByVal SrcY As Long, Optional ByVal MskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxHSL Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Hue As Single, ByVal Saturation As Single, ByVal Lightness As Single, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxHSLRGB Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Hue As Single, ByVal Saturation As Single, ByVal LightnessR As Single, ByVal LightnessG As Single, ByVal LightnessB As Single, ByVal ScaleR As Single, ByVal ScaleG As Single, ByVal ScaleB As Single, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxChrome Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Level As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxMonochrome Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Level As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxShift Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Level As Byte, ByVal Shift As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxPsycho Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Level As Byte, ByVal Shift As Byte, ByVal Effekt As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxWave Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hScrDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal Size As Long, ByVal Movement As Long, ByVal Shift As Single, ByVal Angle As Double, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long

'FastMask is the fasted possible way to mask a picture, it uses combinations
'of BitBlt with And and Paint. with FoxCreateMask and FoxCreateData
'you can create the source pictures out of a normal picture with a specific
'background color, so you don't have to save the mask along with the picture.
Public Declare Function FoxCreateFastMask Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxCreateFastData Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As FoxEffectFlags) As Long
Public Declare Function FoxFastMask Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal hMaskDC As Long, ByVal xMask As Long, ByVal yMask As Long, Optional ByVal Flags As FoxEffectFlags) As Long


'SPECIAL FUNCTIONS
'the following 7 functions are highly optimized for speed,
'but they might be instable in some cases.

'IMPORTANT: make sure that you ALWAYS delete the Object that
'you created!
Public Declare Function FoxxCreatePicture Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long
Public Declare Function FoxxDeletePicture Lib "FoxCBmp3.dl" (ByVal Bitmap As Long) As Long
Public Declare Function FoxxBlendPicture Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal Bitmap As Long, ByVal alpha As Byte, Optional ByVal MaskColor As Long, Optional ByVal Flags As Long) As Long
Public Declare Function FoxxBlendPictures Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal Pic1 As Long, ByVal Pic2 As Long, ByVal Buffer As Long, ByVal alpha As Byte) As Long

Public Declare Function FoxxCreateFastMask Lib "FoxCBmp3.dl" (ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nWidth As Long, ByVal nHeight As Long, Optional ByVal DstWidth As Long, Optional ByVal DstHeight As Long, Optional ByVal MaskColor As Long, Optional ByVal Flags As Long) As Long
Public Declare Function FoxxDeleteMask Lib "FoxCBmp3.dl" (ByVal FoxPicture As Long) As Long
Public Declare Function FoxxFastMask Lib "FoxCBmp3.dl" (ByVal HDC As Long, ByVal X As Long, ByVal Y As Long, ByVal FoxPicture As Long, Optional ByVal Flags As Long) As Long





'these two functions are used to capture the screen for the FastMask
'effect.

'BitBlt is faster than PaintPicture.
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long

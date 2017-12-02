.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/CircularDisplayMask;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;III)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "zOrder"    # I
    .param p4, "screenOffset"    # I
    .param p5, "maskThickness"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    .line 49
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    .line 56
    iput-boolean v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p4

    if-eq v1, v2, :cond_0

    .line 64
    sget-object v1, Lcom/android/server/wm/CircularDisplayMask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen dimensions of displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "are not equal, circularMask will not be drawn."

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    .line 69
    :cond_0
    const/4 v7, 0x0

    .line 76
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "CircularDisplayMask"

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    .line 76
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 80
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 82
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 83
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 87
    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    iput p4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    .line 91
    iput p5, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    .line 60
    return-void

    .line 84
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private static areaUnderChord(DD)D
    .locals 16
    .param p0, "radius"    # D
    .param p2, "chordLength"    # D

    .prologue
    .line 119
    mul-double v10, p0, p0

    mul-double v12, p2, p2

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 120
    .local v8, "isocelesHeight":D
    mul-double v10, v8, p2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v4, v10, v12

    .line 121
    .local v4, "areaUnderIsoceles":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, p0

    div-double v10, p2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    .line 122
    .local v6, "halfAngle":D
    mul-double v10, v6, p0

    mul-double v2, v10, p0

    .line 124
    .local v2, "areaUnderArc":D
    move-wide/from16 v0, p2

    invoke-static {v0, v1, v8, v9}, Lcom/android/server/wm/CircularDisplayMask;->triangleArea(DD)D

    move-result-wide v10

    sub-double v10, v2, v10

    return-wide v10
.end method

.method private static calcPixelShading(DDDDD)D
    .locals 32
    .param p0, "cx"    # D
    .param p2, "cy"    # D
    .param p4, "px"    # D
    .param p6, "py"    # D
    .param p8, "radius"    # D

    .prologue
    .line 132
    sub-double p4, p4, p0

    .line 133
    sub-double p6, p6, p2

    .line 136
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    .line 137
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide p6

    .line 140
    cmpl-double v4, p6, p4

    if-lez v4, :cond_0

    .line 143
    move-wide/from16 v22, p4

    .line 144
    .local v22, "temp":D
    move-wide/from16 v16, p6

    .line 145
    .end local p4    # "px":D
    .local v16, "px":D
    move-wide/from16 p6, p4

    move-wide/from16 p4, v16

    .line 148
    .end local v16    # "px":D
    .end local v22    # "temp":D
    .restart local p4    # "px":D
    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v14, p4, v4

    .line 149
    .local v14, "left":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v18, p4, v4

    .line 150
    .local v18, "right":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v10, p6, v4

    .line 151
    .local v10, "bottom":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v24, p6, v4

    .line 153
    .local v24, "top":D
    invoke-static {v14, v15, v10, v11}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenterSquared(DD)D

    move-result-wide v4

    mul-double v30, p8, p8

    cmpl-double v4, v4, v30

    if-lez v4, :cond_1

    .line 154
    const-wide/16 v4, 0x0

    return-wide v4

    .line 157
    :cond_1
    move-wide/from16 v0, v18

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenterSquared(DD)D

    move-result-wide v4

    mul-double v30, p8, p8

    cmpg-double v4, v4, v30

    if-gez v4, :cond_2

    .line 158
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    return-wide v4

    .line 162
    :cond_2
    move-wide/from16 v0, v24

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenterSquared(DD)D

    move-result-wide v4

    mul-double v30, p8, p8

    cmpl-double v4, v4, v30

    if-lez v4, :cond_3

    .line 163
    move-wide/from16 v0, p8

    invoke-static {v10, v11, v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->horizontalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v28, v4, v14

    .line 164
    .local v28, "triangleWidth":D
    move-wide/from16 v0, p8

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->verticalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v26, v4, v10

    .line 165
    .local v26, "triangleHeight":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenter(DD)D

    move-result-wide v12

    .line 167
    .local v12, "chordLength":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->triangleArea(DD)D

    move-result-wide v4

    .line 168
    move-wide/from16 v0, p8

    invoke-static {v0, v1, v12, v13}, Lcom/android/server/wm/CircularDisplayMask;->areaUnderChord(DD)D

    move-result-wide v30

    .line 167
    add-double v4, v4, v30

    return-wide v4

    .line 173
    .end local v12    # "chordLength":D
    .end local v26    # "triangleHeight":D
    .end local v28    # "triangleWidth":D
    :cond_3
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenterSquared(DD)D

    move-result-wide v4

    mul-double v30, p8, p8

    cmpg-double v4, v4, v30

    if-gez v4, :cond_4

    .line 174
    move-wide/from16 v0, v24

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->horizontalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v28, v18, v4

    .line 175
    .restart local v28    # "triangleWidth":D
    move-wide/from16 v0, v18

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->verticalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v26, v24, v4

    .line 176
    .restart local v26    # "triangleHeight":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenter(DD)D

    move-result-wide v12

    .line 178
    .restart local v12    # "chordLength":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->triangleArea(DD)D

    move-result-wide v4

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v4, v30, v4

    .line 179
    move-wide/from16 v0, p8

    invoke-static {v0, v1, v12, v13}, Lcom/android/server/wm/CircularDisplayMask;->areaUnderChord(DD)D

    move-result-wide v30

    .line 178
    add-double v4, v4, v30

    return-wide v4

    .line 183
    .end local v12    # "chordLength":D
    .end local v26    # "triangleHeight":D
    .end local v28    # "triangleWidth":D
    :cond_4
    move-wide/from16 v0, v24

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->horizontalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v6, v4, v14

    .line 184
    .local v6, "trapezoidWidth1":D
    move-wide/from16 v0, p8

    invoke-static {v10, v11, v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->horizontalLineIntersectsCircle(DD)D

    move-result-wide v4

    sub-double v8, v4, v14

    .line 185
    .local v8, "trapezoidWidth2":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v30, v8, v6

    move-wide/from16 v0, v30

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenter(DD)D

    move-result-wide v12

    .line 186
    .restart local v12    # "chordLength":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/CircularDisplayMask;->trapezoidArea(DDD)D

    move-result-wide v4

    .line 187
    move-wide/from16 v0, p8

    invoke-static {v0, v1, v12, v13}, Lcom/android/server/wm/CircularDisplayMask;->areaUnderChord(DD)D

    move-result-wide v30

    .line 186
    add-double v20, v4, v30

    .line 191
    .local v20, "shading":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v24, v4

    if-ltz v4, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v4, v10, v4

    if-gtz v4, :cond_5

    cmpl-double v4, p8, v18

    if-lez v4, :cond_5

    .line 192
    move-wide/from16 v0, v18

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/CircularDisplayMask;->verticalLineIntersectsCircle(DD)D

    move-result-wide v4

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v30

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/wm/CircularDisplayMask;->areaUnderChord(DD)D

    move-result-wide v4

    sub-double v20, v20, v4

    .line 195
    :cond_5
    return-wide v20
.end method

.method private static distanceFromCenter(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/CircularDisplayMask;->distanceFromCenterSquared(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static distanceFromCenterSquared(DD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 95
    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private drawIfNeeded()V
    .locals 27

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    if-eqz v8, :cond_1

    .line 200
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 204
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v15, v10, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    .local v15, "dirty":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 207
    .local v14, "c":Landroid/graphics/Canvas;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, v15}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 211
    .end local v14    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v14, :cond_2

    .line 212
    return-void

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    packed-switch v8, :pswitch_data_0

    .line 230
    :goto_1
    const/high16 v8, -0x1000000

    invoke-virtual {v14, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v19, v8, v9

    .line 236
    .local v19, "maskWidth":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    move/from16 v0, v19

    if-le v0, v8, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 244
    .local v18, "maskHeight":I
    :goto_2
    move/from16 v0, v19

    int-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v4, v8, v10

    .line 245
    .local v4, "cx":D
    move/from16 v0, v18

    int-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v6, v8, v10

    .line 246
    .local v6, "cy":D
    move/from16 v0, v19

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v12, v8, v10

    .line 247
    .local v12, "radius":D
    mul-int v8, v19, v18

    new-array v0, v8, [I

    move-object/from16 v20, v0

    .line 249
    .local v20, "pixels":[I
    const/16 v22, 0x0

    .local v22, "py":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 250
    const/16 v21, 0x0

    .local v21, "px":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 251
    move/from16 v0, v21

    int-to-double v8, v0

    move/from16 v0, v22

    int-to-double v10, v0

    invoke-static/range {v4 .. v13}, Lcom/android/server/wm/CircularDisplayMask;->calcPixelShading(DDDDD)D

    move-result-wide v24

    .line 252
    .local v24, "shading":D
    mul-int v8, v19, v22

    add-int v8, v8, v21

    .line 253
    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double v10, v10, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    rsub-int v9, v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v9, v10, v11, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 252
    aput v9, v20, v8

    .line 250
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 218
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v12    # "radius":D
    .end local v18    # "maskHeight":I
    .end local v19    # "maskWidth":I
    .end local v20    # "pixels":[I
    .end local v21    # "px":I
    .end local v22    # "py":I
    .end local v24    # "shading":D
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto/16 :goto_1

    .line 222
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto/16 :goto_1

    .line 226
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v9, v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto/16 :goto_1

    .line 241
    .restart local v19    # "maskWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int v9, v9, v19

    and-int/lit8 v9, v9, -0x2

    sub-int v18, v8, v9

    .restart local v18    # "maskHeight":I
    goto/16 :goto_2

    .line 249
    .restart local v4    # "cx":D
    .restart local v6    # "cy":D
    .restart local v12    # "radius":D
    .restart local v20    # "pixels":[I
    .restart local v21    # "px":I
    .restart local v22    # "py":I
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 258
    .end local v21    # "px":I
    :cond_5
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 257
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 261
    .local v23, "transparency":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    int-to-float v8, v8

    .line 262
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int v9, v9, v18

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 263
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    .line 260
    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, v14}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 198
    return-void

    .line 208
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v12    # "radius":D
    .end local v18    # "maskHeight":I
    .end local v19    # "maskWidth":I
    .end local v20    # "pixels":[I
    .end local v22    # "py":I
    .end local v23    # "transparency":Landroid/graphics/Bitmap;
    .restart local v14    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    .line 209
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v16

    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static horizontalLineIntersectsCircle(DD)D
    .locals 4
    .param p0, "y"    # D
    .param p2, "radius"    # D

    .prologue
    .line 107
    mul-double v0, p2, p2

    mul-double v2, p0, p0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static trapezoidArea(DDD)D
    .locals 4
    .param p0, "width"    # D
    .param p2, "height1"    # D
    .param p4, "height2"    # D

    .prologue
    .line 115
    add-double v0, p2, p4

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static triangleArea(DD)D
    .locals 4
    .param p0, "width"    # D
    .param p2, "height"    # D

    .prologue
    .line 111
    mul-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static verticalLineIntersectsCircle(DD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "radius"    # D

    .prologue
    .line 103
    mul-double v0, p2, p2

    mul-double v2, p0, p0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 284
    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    if-ne v0, p3, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    .line 288
    iput p2, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    .line 290
    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    .line 291
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    .line 283
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    .line 275
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 270
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method

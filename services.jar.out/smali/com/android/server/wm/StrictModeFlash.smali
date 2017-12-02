.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/StrictModeFlash;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    .prologue
    const/4 v9, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 42
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 45
    const/4 v7, 0x0

    .line 47
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "StrictModeFlash"

    .line 48
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    .line 47
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 50
    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 52
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 53
    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 57
    iput-boolean v9, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 44
    return-void

    .line 54
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

.method private drawIfNeeded()V
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/high16 v9, -0x10000

    const/4 v8, 0x0

    .line 61
    iget-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v6, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 65
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 66
    .local v3, "dw":I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 68
    .local v1, "dh":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v2, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 71
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_1

    .line 76
    return-void

    .line 80
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 81
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 83
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 84
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v3, -0x14

    invoke-direct {v6, v7, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 87
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 89
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v8, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 90
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 92
    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 60
    return-void

    .line 72
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 73
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 114
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 109
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 97
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method

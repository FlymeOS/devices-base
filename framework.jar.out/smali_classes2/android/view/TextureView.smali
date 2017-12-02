.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$1;,
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHadSurface:Z

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:J

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mUpdateLayer:Z

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mUpdateSurface:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 175
    return-void
.end method

.method private applyTransformMatrix()V
    .locals 2

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 510
    :cond_0
    return-void
.end method

.method private applyUpdate()V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 458
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->prepare(IIZ)Z

    .line 459
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->updateSurfaceTexture()V

    .line 461
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 445
    :cond_1
    return-void

    :cond_2
    monitor-exit v1

    .line 454
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private destroyHardwareLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->detachSurfaceTexture()V

    .line 238
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 239
    iput-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 235
    :cond_0
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private releaseSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    .line 246
    const/4 v0, 0x1

    .line 248
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 252
    .end local v0    # "shouldRelease":Z
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 256
    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 259
    :cond_1
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 244
    :cond_2
    return-void

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private updateLayer()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 434
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 432
    return-void

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateLayerAndInvalidate()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 440
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 442
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 438
    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public buildLayer()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 232
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 230
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 330
    iget v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v3, -0x600001

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 337
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 339
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v1

    .line 340
    .local v1, "layer":Landroid/view/HardwareLayer;
    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 342
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 344
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;)V

    .line 328
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v1    # "layer":Landroid/view/HardwareLayer;
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 567
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 566
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 569
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 596
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 598
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 604
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 612
    :cond_1
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 373
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_4

    .line 374
    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    if-nez v3, :cond_1

    .line 375
    :cond_0
    return-object v4

    .line 378
    :cond_1
    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v3}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/view/HardwareLayer;

    move-result-object v3

    iput-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    .line 379
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_6

    move v0, v1

    .line 380
    .local v0, "createNewSurface":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 382
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 383
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v3}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 385
    :cond_2
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 386
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 387
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 389
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 390
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 392
    :cond_3
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 395
    .end local v0    # "createNewSurface":Z
    :cond_4
    iget-boolean v3, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v3, :cond_5

    .line 399
    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 403
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 404
    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 406
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 407
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 410
    :cond_5
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    return-object v1

    :cond_6
    move v0, v2

    .line 379
    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x2

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 505
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 507
    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 671
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    .line 673
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 674
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 677
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    .line 679
    return-object v4

    :cond_2
    monitor-exit v1

    .line 682
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 684
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 207
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string/jumbo v0, "TextureView"

    const-string/jumbo v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 204
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 222
    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    .line 223
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 220
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 357
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 363
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 365
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 366
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 361
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 417
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 421
    if-nez p2, :cond_2

    .line 422
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 425
    :cond_0
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 317
    const-string/jumbo v1, "TextureView doesn\'t support displaying a background drawable"

    .line 316
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    return-void

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 309
    const-string/jumbo v1, "TextureView doesn\'t support displaying a foreground drawable"

    .line 308
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 284
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_0

    .line 285
    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 286
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 283
    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 279
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 278
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_0

    .line 196
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 197
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 194
    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_1

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 748
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 749
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 751
    :cond_3
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 752
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 760
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_4

    .line 761
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 763
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 764
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 735
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 786
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 785
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 484
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 486
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 483
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 699
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    .line 700
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 703
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 698
    :cond_0
    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

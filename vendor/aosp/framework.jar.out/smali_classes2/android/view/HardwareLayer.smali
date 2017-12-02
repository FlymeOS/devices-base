.class final Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# instance fields
.field private mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method private constructor <init>(Landroid/view/ThreadedRenderer;J)V
    .locals 4
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p2, "deferredUpdater"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Either hardware renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string/jumbo v2, " or deferredUpdater: "

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string/jumbo v2, " is invalid"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 46
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 40
    return-void
.end method

.method static adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;
    .locals 1
    .param p0, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p1, "layer"    # J

    .prologue
    .line 145
    new-instance v0, Landroid/view/HardwareLayer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/HardwareLayer;-><init>(Landroid/view/ThreadedRenderer;J)V

    return-object v0
.end method

.method private static native nPrepare(JIIZ)Z
.end method

.method private static native nSetLayerPaint(JJ)V
.end method

.method private static native nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;Z)V
.end method

.method private static native nSetTransform(JJ)V
.end method

.method private static native nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0, p1}, Landroid/view/ThreadedRenderer;->copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->onLayerDestroyed(Landroid/view/HardwareLayer;)V

    .line 78
    iput-object v1, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 79
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 80
    iput-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 72
    return-void
.end method

.method public detachSurfaceTexture()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ThreadedRenderer;->detachSurfaceTexture(J)V

    .line 126
    return-void
.end method

.method public getDeferredLayerUpdater()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerHandle()J
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepare(IIZ)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/HardwareLayer;->nPrepare(JIIZ)Z

    move-result v0

    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/HardwareLayer;->nSetLayerPaint(JJ)V

    .line 57
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 55
    return-void

    .line 56
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/view/HardwareLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;Z)V

    .line 136
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 134
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->nSetTransform(JJ)V

    .line 120
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 118
    return-void
.end method

.method public updateSurfaceTexture()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/view/HardwareLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/HardwareLayer;->nUpdateSurfaceTexture(J)V

    .line 141
    iget-object v0, p0, Landroid/view/HardwareLayer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 139
    return-void
.end method

.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;
    }
.end annotation


# instance fields
.field private final mCreatorLooper:Landroid/os/Looper;

.field private mFrameAvailableListener:J

.field private mIsSingleBuffered:Z

.field private mOnFrameAvailableHandler:Landroid/os/Handler;

.field private mProducer:J

.field private mSurfaceTexture:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 413
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "texName"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 135
    iput-boolean p2, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "singleBufferMode"    # Z

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 163
    iput-boolean p1, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 161
    return-void
.end method

.method private native nativeAttachToGLContext(I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDetachFromGLContext()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(ZIZLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReleaseTexImage()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()V
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/SurfaceTexture;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 377
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_0

    .line 378
    iget-object v0, v1, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 379
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 3
    .param p1, "texName"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    .line 289
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error during attachToGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    return-void
.end method

.method public detachFromGLContext()V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    .line 269
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 363
    return-void

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 366
    throw v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 2
    .param p1, "mtx"    # [F

    .prologue
    .line 312
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 309
    return-void
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method public isSingleBuffered()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 350
    return-void
.end method

.method public releaseTexImage()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    .line 252
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 234
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 178
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 198
    if-eqz p1, :cond_2

    .line 202
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 204
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture$1;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/SurfaceTexture$1;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 197
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_1
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .end local v2    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 211
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_2
    iput-object v3, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method public updateTexImage()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    .line 243
    return-void
.end method

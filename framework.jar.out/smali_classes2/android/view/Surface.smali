.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$1;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SCALING_MODE_FREEZE:I = 0x0

.field public static final SCALING_MODE_NO_SCALE_CROP:I = 0x3

.field public static final SCALING_MODE_SCALE_CROP:I = 0x2

.field public static final SCALING_MODE_SCALE_TO_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHwuiContext:Landroid/view/Surface$HwuiContext;

.field private mIsSingleBuffered:Z

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:J

.field private mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static synthetic -get0(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -wrap0(JJ)J
    .locals 2
    .param p0, "rootNode"    # J
    .param p2, "surface"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiCreate(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "renderer"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDestroy(J)V

    return-void
.end method

.method static synthetic -wrap2(J)V
    .locals 0
    .param p0, "renderer"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDraw(J)V

    return-void
.end method

.method static synthetic -wrap3(JJ)V
    .locals 0
    .param p0, "renderer"    # J
    .param p2, "surface"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiSetSurface(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    .line 76
    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 158
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeObject"    # J

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 185
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 184
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isSingleBuffered()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 177
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 172
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkNotReleasedLocked()V
    .locals 4

    .prologue
    .line 524
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    return-void
.end method

.method private static native nHwuiCreate(JJ)J
.end method

.method private static native nHwuiDestroy(J)V
.end method

.method private static native nHwuiDraw(J)V
.end method

.method private static native nHwuiSetSurface(JJ)V
.end method

.method private static native nativeAllocateBuffers(J)V
.end method

.method private static native nativeCreateFromSurfaceControl(J)J
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeForceScopedDisconnect(J)I
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetNextFrameNumber(J)J
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetBuffersTransform(JJ)V
.end method

.method private static native nativeSetScalingMode(JI)I
.end method

.method private static native nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "rotation"    # I

    .prologue
    .line 594
    packed-switch p0, :pswitch_data_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :pswitch_0
    const-string/jumbo v0, "ROTATION_0"

    return-object v0

    .line 599
    :pswitch_1
    const-string/jumbo v0, "ROATATION_90"

    return-object v0

    .line 602
    :pswitch_2
    const-string/jumbo v0, "ROATATION_180"

    return-object v0

    .line 605
    :pswitch_3
    const-string/jumbo v0, "ROATATION_270"

    return-object v0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNativeObjectLocked(J)V
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 509
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 510
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 516
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    .line 517
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    .line 508
    :cond_1
    return-void

    .line 512
    :cond_2
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    .line 334
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-eq p1, v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 339
    const-string/jumbo v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    const-string/jumbo v2, ") != mLockedObject (0x"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const-string/jumbo v2, ")"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    :try_start_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    .line 350
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    .line 333
    return-void

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    .line 350
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    .line 348
    throw v0
.end method


# virtual methods
.method public allocateBuffers()V
    .locals 4

    .prologue
    .line 534
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 536
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeAllocateBuffers(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 533
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .locals 10
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .prologue
    const-wide/16 v8, 0x0

    .line 414
    if-nez p1, :cond_0

    .line 415
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "other must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_0
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 419
    .local v2, "surfaceControlPtr":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 420
    new-instance v4, Ljava/lang/NullPointerException;

    .line 421
    const-string/jumbo v5, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    .line 420
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 423
    :cond_1
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v0

    .line 425
    .local v0, "newNativeObject":J
    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 426
    :try_start_0
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 427
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    .line 429
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 413
    return-void

    .line 425
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 226
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
    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 191
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 197
    throw v0
.end method

.method forceScopedDisconnect()V
    .locals 6

    .prologue
    .line 555
    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 556
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 557
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeForceScopedDisconnect(J)I

    move-result v0

    .line 558
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 559
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to disconnect Surface instance (bad object?)"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v0    # "err":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "err":I
    :cond_0
    monitor-exit v2

    .line 554
    return-void
.end method

.method public getGenerationId()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNextFrameNumber()J
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetNextFrameNumber(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConsumerRunningBehind()Z
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 277
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSingleBuffered()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    return v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    .line 237
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 239
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsValid(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 6
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 303
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Surface was already locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 310
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 311
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 6

    .prologue
    .line 373
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 375
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Landroid/view/Surface$HwuiContext;

    invoke-direct {v0, p0}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 379
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    .line 380
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    .line 378
    invoke-virtual {v0, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 466
    if-nez p1, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 479
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 465
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 208
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 210
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    .line 211
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 207
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .param p1, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 398
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 399
    .local v0, "appScale":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 400
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 396
    .end local v0    # "appScale":F
    :cond_0
    return-void
.end method

.method setScalingMode(I)V
    .locals 6
    .param p1, "scalingMode"    # I

    .prologue
    .line 545
    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 546
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 547
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5, p1}, Landroid/view/Surface;->nativeSetScalingMode(JI)I

    move-result v0

    .line 548
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 549
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid scaling mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .end local v0    # "err":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "err":I
    :cond_0
    monitor-exit v2

    .line 544
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface(name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")/@0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 8
    .param p1, "other"    # Landroid/view/Surface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "other must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_0
    if-eq p1, p0, :cond_2

    .line 446
    iget-object v3, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    :try_start_0
    iget-wide v0, p1, Landroid/view/Surface;->mNativeObject:J

    .line 448
    .local v0, "newPtr":J
    const-wide/16 v4, 0x0

    invoke-direct {p1, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 451
    iget-object v3, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 452
    :try_start_1
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 453
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    .line 455
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 440
    .end local v0    # "newPtr":J
    :cond_2
    return-void

    .line 446
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 451
    .restart local v0    # "newPtr":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 322
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 325
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 321
    return-void

    .line 328
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 485
    if-nez p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    iget-boolean v2, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 495
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 484
    :cond_2
    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

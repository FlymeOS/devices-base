.class public Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRALLOC_USAGE_HW_COMPOSER:I = 0x800

.field private static final GRALLOC_USAGE_HW_RENDER:I = 0x200

.field private static final GRALLOC_USAGE_HW_TEXTURE:I = 0x100

.field private static final GRALLOC_USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field private static final GRALLOC_USAGE_RENDERSCRIPT:I = 0x100000

.field private static final GRALLOC_USAGE_SW_READ_OFTEN:I = 0x3

.field private static final ILLEGAL_VALUE:I = -0x1

.field public static final MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field public static final NATIVE_WINDOW_SCALING_MODE_SCALE_TO_WINDOW:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraId:I

.field private mClosed:Z

.field private mConfiguredSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

.field private final mResultHandler:Landroid/os/Handler;

.field private final mResultThread:Landroid/os/HandlerThread;

.field private final mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private final mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 1
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 1
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "errorCode"    # I
    .param p3, "errorArg"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 69
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    .line 71
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ResultThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 123
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V

    .line 122
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    .line 298
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    .line 299
    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    .line 300
    const-string/jumbo v0, "CameraDevice-%d-LE"

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 303
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    .line 304
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 305
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V

    .line 307
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 309
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    .line 308
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 310
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->start()V

    .line 297
    return-void
.end method

.method static connectSurface(Landroid/view/Surface;)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeConnectSurface(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 663
    return-void
.end method

.method static containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z
    .locals 4
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    .line 750
    .local v2, "id":J
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 755
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 751
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const/4 v1, 0x0

    return v1
.end method

.method public static detectSurfaceDataspace(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    move-result v0

    return v0
.end method

.method public static detectSurfaceType(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    move-result v0

    return v0
.end method

.method static detectSurfaceUsageFlags(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    .line 643
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method static disconnectSurface(Landroid/view/Surface;)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 670
    if-nez p0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDisconnectSurface(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 669
    return-void
.end method

.method static findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 8
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "supportedSizes"    # [Landroid/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 557
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 558
    :cond_0
    return-object v2

    .line 560
    :cond_1
    const/4 v0, 0x0

    .line 561
    .local v0, "bestSize":Landroid/util/Size;
    const/4 v2, 0x0

    array-length v3, p1

    .end local v0    # "bestSize":Landroid/util/Size;
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, p1, v2

    .line 562
    .local v1, "s":Landroid/util/Size;
    invoke-virtual {v1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    return-object p0

    .line 564
    :cond_2
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/16 v5, 0x780

    if-gt v4, v5, :cond_4

    if-eqz v0, :cond_3

    .line 565
    invoke-static {p0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    move-result-wide v4

    .line 566
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    move-result-wide v6

    .line 565
    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 567
    :cond_3
    move-object v0, v1

    .line 561
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    .end local v1    # "s":Landroid/util/Size;
    :cond_5
    return-object v0
.end method

.method static findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J
    .locals 8
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 550
    .local v0, "d0":J
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 551
    .local v2, "d1":J
    mul-long v4, v0, v0

    mul-long v6, v2, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 2
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 94
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    return-object v0
.end method

.method private getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 11
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "errorCode"    # I
    .param p3, "errorArg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 99
    const/4 v9, -0x1

    .line 100
    .local v9, "errorStreamId":I
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    move-object v0, p3

    .line 101
    check-cast v0, Landroid/view/Surface;

    .line 102
    .local v0, "errorTarget":Landroid/view/Surface;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v10

    .line 103
    .local v10, "indexOfTarget":I
    if-gez v10, :cond_1

    .line 104
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Buffer drop error reported for unknown Surface"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "errorTarget":Landroid/view/Surface;
    .end local v10    # "indexOfTarget":I
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 110
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 111
    const-wide/16 v6, -0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v8, v2

    move v9, v2

    .line 110
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    .end local v9    # "errorStreamId":I
    return-object v1

    .line 106
    .restart local v0    # "errorTarget":Landroid/view/Surface;
    .restart local v9    # "errorStreamId":I
    .restart local v10    # "indexOfTarget":I
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    goto :goto_0

    .line 113
    .end local v0    # "errorTarget":Landroid/view/Surface;
    .end local v10    # "indexOfTarget":I
    :cond_2
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getSubsequeceId()I

    move-result v3

    .line 114
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v6

    .line 115
    const/4 v8, 0x1

    move v5, v4

    .line 113
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    return-object v1
.end method

.method static getSurfaceId(Landroid/view/Surface;)J
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetSurfaceId(Landroid/view/Surface;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw v1
.end method

.method static getSurfaceIds(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    .line 715
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "Null argument surfaces"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 717
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 719
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 720
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v2

    .line 721
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 722
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 723
    const-string/jumbo v6, "Configured surface had null native GraphicBufferProducer pointer!"

    .line 722
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v2    # "id":J
    :cond_2
    return-object v4
.end method

.method static getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    .line 733
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "Null argument surfaces"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 735
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 737
    .local v2, "s":Landroid/view/Surface;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0

    .line 738
    .local v0, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 739
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 740
    const-string/jumbo v6, "Configured surface had null native GraphicBufferProducer pointer!"

    .line 739
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 742
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    .end local v0    # "id":J
    .end local v2    # "s":Landroid/view/Surface;
    :cond_2
    return-object v4
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 585
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 587
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method static getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;
    .locals 4
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 770
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 773
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 3
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v1

    .line 595
    .local v1, "usageFlags":I
    const/high16 v2, 0x110000

    .line 598
    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 599
    and-int/lit16 v2, v1, 0x903

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 600
    .local v0, "flexibleConsumer":Z
    :cond_0
    return v0
.end method

.method public static isPreviewConsumer(Landroid/view/Surface;)Z
    .locals 6
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    .line 604
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v3

    .line 605
    .local v3, "usageFlags":I
    const v4, 0x110003

    .line 609
    and-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 610
    and-int/lit16 v4, v3, 0xb00

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 611
    .local v1, "previewConsumer":Z
    :goto_0
    const/4 v2, 0x0

    .line 613
    .local v2, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 618
    return v1

    .line 610
    .end local v1    # "previewConsumer":Z
    .end local v2    # "surfaceFormat":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    .line 609
    .end local v1    # "previewConsumer":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    .line 614
    .restart local v2    # "surfaceFormat":I
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Surface was abandoned"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isVideoEncoderConsumer(Landroid/view/Surface;)Z
    .locals 6
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    .line 622
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    move-result v2

    .line 623
    .local v2, "usageFlags":I
    const v4, 0x100903

    .line 626
    and-int/2addr v4, v2

    if-nez v4, :cond_1

    .line 625
    const/high16 v4, 0x10000

    .line 627
    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 629
    .local v3, "videoEncoderConsumer":Z
    :goto_0
    const/4 v1, 0x0

    .line 631
    .local v1, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    return v3

    .line 627
    .end local v1    # "surfaceFormat":I
    .end local v3    # "videoEncoderConsumer":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    .line 626
    .end local v3    # "videoEncoderConsumer":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    .line 632
    .restart local v1    # "surfaceFormat":I
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Surface was abandoned"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static native nativeConnectSurface(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I
.end method

.method private static native nativeDisconnectSurface(Landroid/view/Surface;)I
.end method

.method static native nativeGetJpegFooterSize()I
.end method

.method private static native nativeGetSurfaceId(Landroid/view/Surface;)J
.end method

.method private static native nativeProduceFrame(Landroid/view/Surface;[BIII)I
.end method

.method private static native nativeSetNextTimestamp(Landroid/view/Surface;J)I
.end method

.method private static native nativeSetScalingMode(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceDimens(Landroid/view/Surface;II)I
.end method

.method private static native nativeSetSurfaceFormat(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceOrientation(Landroid/view/Surface;II)I
.end method

.method static needsConversion(Landroid/view/Surface;)Z
    .locals 3
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 278
    .local v0, "nativeType":I
    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    const v2, 0x32315659

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static produceFrame(Landroid/view/Surface;[BIII)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelBuffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v0, "width must be positive."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 681
    const-string/jumbo v0, "height must be positive."

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 683
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeProduceFrame(Landroid/view/Surface;[BIII)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 677
    return-void
.end method

.method static setNextTimestamp(Landroid/view/Surface;J)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetNextTimestamp(Landroid/view/Surface;J)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 777
    return-void
.end method

.method static setScalingMode(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetScalingMode(Landroid/view/Surface;I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 783
    return-void
.end method

.method static setSurfaceDimens(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string/jumbo v0, "width must be positive."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 698
    const-string/jumbo v0, "height must be positive."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 700
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceDimens(Landroid/view/Surface;II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 695
    return-void
.end method

.method static setSurfaceFormat(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceFormat(Landroid/view/Surface;I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 688
    return-void
.end method

.method static setSurfaceOrientation(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "facing"    # I
    .param p2, "sensorOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceOrientation(Landroid/view/Surface;II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    .line 759
    return-void
.end method


# virtual methods
.method public cancelRequest(I)J
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 486
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 516
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->quit()V

    .line 517
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 518
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 521
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :goto_1
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    .line 515
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    new-array v3, v8, [Ljava/lang/Object;

    .line 524
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 523
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 530
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    new-array v3, v8, [Ljava/lang/Object;

    .line 531
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 530
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public configureOutputs(Landroid/util/SparseArray;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "outputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v9, "sizedSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    if-eqz p1, :cond_7

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 329
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 331
    .local v6, "output":Landroid/view/Surface;
    if-nez v6, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "configureOutputs - null outputs are not allowed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    return v14

    .line 335
    :cond_0
    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v14

    if-nez v14, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "configureOutputs - invalid output surfaces are not allowed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    return v14

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 340
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 339
    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 344
    .local v11, "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_start_0
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    .line 345
    .local v8, "s":Landroid/util/Size;
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    move-result v13

    .line 347
    .local v13, "surfaceType":I
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v4

    .line 349
    .local v4, "flexibleConsumer":Z
    invoke-virtual {v11, v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    .line 350
    .local v10, "sizes":[Landroid/util/Size;
    if-nez v10, :cond_2

    .line 352
    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    .line 353
    const/4 v14, 0x5

    if-gt v13, v14, :cond_3

    .line 358
    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    .line 364
    :cond_2
    :goto_1
    invoke-static {v10, v8}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 365
    if-eqz v4, :cond_4

    invoke-static {v8, v10}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 366
    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_2
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v6, v14, v15}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 329
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    :cond_3
    const/16 v14, 0x21

    if-ne v13, v14, :cond_2

    .line 360
    const/16 v14, 0x100

    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    goto :goto_1

    .line 368
    :cond_4
    if-nez v10, :cond_5

    const-string/jumbo v7, "format is invalid."

    .line 370
    .local v7, "reason":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Surface with size (w=%d, h=%d) and format 0x%x is not valid, %s"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 371
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 372
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v16, v18

    const/16 v17, 0x3

    aput-object v7, v16, v17

    .line 370
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    return v14

    .line 369
    .end local v7    # "reason":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "size not in valid set: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 376
    .end local v7    # "reason":Ljava/lang/String;
    :cond_6
    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 380
    .end local v4    # "flexibleConsumer":Z
    .end local v8    # "s":Landroid/util/Size;
    .end local v10    # "sizes":[Landroid/util/Size;
    .end local v13    # "surfaceType":I
    :catch_0
    move-exception v3

    .line 381
    .local v3, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Surface bufferqueue is abandoned, cannot configure as output: "

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    return v14

    .line 388
    .end local v2    # "count":I
    .end local v3    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v5    # "i":I
    .end local v6    # "output":Landroid/view/Surface;
    .end local v11    # "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_7
    const/4 v12, 0x0

    .line 389
    .local v12, "success":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-virtual {v14}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setConfiguring()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v14, v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configure(Ljava/util/Collection;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-virtual {v14}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    move-result v12

    .line 394
    .end local v12    # "success":Z
    :cond_8
    if-eqz v12, :cond_9

    .line 395
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    .line 399
    const/4 v14, 0x0

    return v14

    .line 397
    :cond_9
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    return v14
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 540
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 538
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got error while trying to finalize, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 543
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catchall_0
    move-exception v1

    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 543
    throw v1
.end method

.method public flush()J
    .locals 3

    .prologue
    .line 502
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    move-result-wide v0

    .line 503
    .local v0, "lastFrame":J
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    .line 504
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    return v0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    .prologue
    .line 474
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 475
    .local v0, "requestList":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v1

    return-object v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 8
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    .prologue
    const/4 v5, 0x0

    .line 413
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 414
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - Empty/null requests are not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 416
    const-string/jumbo v7, "submitRequestList - Empty/null requests are not allowed"

    .line 415
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 422
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    if-nez v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v1, p1, v5

    .line 431
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 432
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - Each request must have at least one Surface target"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 435
    const-string/jumbo v7, "submitRequestList - Each request must have at least one Surface target"

    .line 434
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 423
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Landroid/util/SparseArray;)Ljava/util/List;
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 424
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 426
    const-string/jumbo v7, "submitRequestList - configured surface is abandoned."

    .line 425
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 439
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "surface$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 440
    .local v2, "surface":Landroid/view/Surface;
    if-nez v2, :cond_5

    .line 441
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - Null Surface targets are not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 443
    const-string/jumbo v7, "submitRequestList - Null Surface targets are not allowed"

    .line 442
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 444
    :cond_5
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    .line 445
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    .line 448
    const-string/jumbo v7, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    .line 447
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 450
    :cond_6
    invoke-static {v2, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 451
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "submitRequestList - cannot use a surface that wasn\'t configured"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v5, Landroid/os/ServiceSpecificException;

    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 453
    const-string/jumbo v7, "submitRequestList - cannot use a surface that wasn\'t configured"

    .line 452
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 430
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 459
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "surface$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    .line 460
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v5, p1, p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->submitCaptureRequests([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v5

    return-object v5
.end method

.method public waitUntilIdle()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 492
    return-void
.end method

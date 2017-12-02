.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OPEN_CAMERA_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraDeviceUserShim"


# instance fields
.field private final mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

.field private final mConfigureLock:Ljava/lang/Object;

.field private mConfiguring:Z

.field private final mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

.field private mSurfaceIdCounter:I

.field private final mSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "legacyCamera"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "cameraInit"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    .param p5, "cameraCallbacks"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    .line 84
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .line 85
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    .line 87
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 88
    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    .line 89
    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 91
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    .line 83
    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 12
    .param p0, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p1, "cameraId"    # I

    .prologue
    .line 354
    new-instance v4, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-direct {v4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    .line 356
    .local v4, "init":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    new-instance v5, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {v5, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    .line 359
    .local v5, "threadCallbacks":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    const/16 v0, 0x1388

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    move-result v8

    .line 360
    .local v8, "initErrors":I
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    move-result-object v9

    .line 363
    .local v9, "legacyCamera":Landroid/hardware/Camera;
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnServiceError(I)V

    .line 366
    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    .line 368
    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 369
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 371
    const/4 v10, 0x0

    .line 373
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 380
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 381
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {v2, p1, v9, v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    .line 383
    .local v2, "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    return-object v0

    .line 374
    .end local v2    # "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v6

    .line 375
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to get initial parameters: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static translateErrorsFromCamera1(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 95
    sget v0, Landroid/system/OsConstants;->EACCES:I

    neg-int v0, v0

    if-ne p0, v0, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginConfigure()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    const-string/jumbo v0, "Cannot begin configure, device has been closed."

    .line 474
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 478
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 479
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 480
    const-string/jumbo v0, "Cannot begin configure, configuration change already in progress."

    .line 481
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 484
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 468
    return-void
.end method

.method public cancelRequest(I)J
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 451
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string/jumbo v0, "Cannot cancel request, device has been closed."

    .line 453
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 457
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 459
    const-string/jumbo v0, "Cannot cancel request, configuration change in progress."

    .line 460
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 464
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 5
    .param p1, "templateId"    # I

    .prologue
    .line 595
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    const-string/jumbo v1, "Cannot create default request, device has been closed."

    .line 597
    .local v1, "err":Ljava/lang/String;
    const-string/jumbo v3, "CameraDeviceUserShim"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 604
    .end local v1    # "err":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 611
    .local v2, "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    return-object v2

    .line 605
    .end local v2    # "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "createDefaultRequest - invalid templateId specified"

    .line 607
    .restart local v1    # "err":Ljava/lang/String;
    const-string/jumbo v3, "CameraDeviceUserShim"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public createInputStream(III)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 578
    const-string/jumbo v0, "Creating input stream is not supported on legacy devices"

    .line 579
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 5
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .prologue
    .line 546
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const-string/jumbo v0, "Cannot create stream, device has been closed."

    .line 548
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 552
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 553
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_1

    .line 554
    const-string/jumbo v0, "Cannot create stream, beginConfigure hasn\'t been called yet."

    .line 555
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 558
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    move-result v2

    if-eqz v2, :cond_2

    .line 559
    const-string/jumbo v0, "Cannot create stream, stream rotation is not supported."

    .line 560
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 563
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    .line 564
    .local v1, "id":I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 565
    return v1
.end method

.method public deleteStream(I)V
    .locals 5
    .param p1, "streamId"    # I

    .prologue
    .line 519
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const-string/jumbo v0, "Cannot delete stream, device has been closed."

    .line 521
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 525
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_1

    .line 527
    const-string/jumbo v0, "Cannot delete stream, no configuration change in progress."

    .line 528
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 531
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 532
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot delete stream, stream id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " doesn\'t exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 537
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 515
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v0, "CameraDeviceUserShim"

    const-string/jumbo v1, "Cannot disconnect, device has already been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    .line 400
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    .line 387
    return-void

    .line 398
    :catchall_0
    move-exception v0

    .line 399
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    .line 400
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    .line 398
    throw v0
.end method

.method public endConfigure(Z)V
    .locals 5
    .param p1, "isConstrainedHighSpeed"    # Z

    .prologue
    .line 493
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    const-string/jumbo v0, "Cannot end configure, device has been closed."

    .line 495
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 499
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 500
    .local v1, "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 501
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_1

    .line 502
    const-string/jumbo v0, "Cannot end configure, no configuration change in progress."

    .line 503
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0    # "err":Ljava/lang/String;
    .end local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 506
    .restart local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    .line 507
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 509
    .end local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 511
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Landroid/util/SparseArray;)I

    .line 489
    return-void
.end method

.method public flush()J
    .locals 4

    .prologue
    .line 650
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    const-string/jumbo v0, "Cannot flush, device has been closed."

    .line 652
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 656
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 657
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 658
    const-string/jumbo v0, "Cannot flush, configuration change in progress."

    .line 659
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 663
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    move-result-wide v2

    return-wide v2
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    .prologue
    .line 620
    const-string/jumbo v0, "CameraDeviceUserShim"

    const-string/jumbo v1, "getCameraInfo unimplemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 3

    .prologue
    .line 585
    const-string/jumbo v0, "Getting input surface is not supported on legacy devices"

    .line 586
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public prepare(I)V
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 670
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-string/jumbo v0, "Cannot prepare stream, device has been closed."

    .line 672
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 677
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    .line 666
    return-void
.end method

.method public prepare2(II)V
    .locals 0
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I

    .prologue
    .line 682
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->prepare(I)V

    .line 680
    return-void
.end method

.method public setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 3
    .param p1, "steamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .prologue
    .line 571
    const-string/jumbo v0, "Set deferred configuration is not supported on legacy devices"

    .line 572
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    .prologue
    .line 409
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string/jumbo v0, "Cannot submit request, device has been closed."

    .line 411
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 415
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 417
    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    .line 418
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 422
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v1

    return-object v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    .prologue
    .line 430
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const-string/jumbo v0, "Cannot submit request list, device has been closed."

    .line 432
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 436
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 438
    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    .line 439
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 443
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v1

    return-object v1
.end method

.method public tearDown(I)V
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 689
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const-string/jumbo v0, "Cannot tear down stream, device has been closed."

    .line 691
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 685
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public waitUntilIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const-string/jumbo v0, "Cannot wait until idle, device has been closed."

    .line 631
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 635
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    .line 637
    const-string/jumbo v0, "Cannot wait until idle, configuration change in progress."

    .line 638
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    .line 642
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    .line 625
    return-void
.end method

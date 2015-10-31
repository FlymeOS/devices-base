.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 4
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 287
    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    .line 301
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->setVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 209
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 309
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public removeListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 313
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 1

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 1

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "reqProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

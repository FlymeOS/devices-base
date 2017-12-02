.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# static fields
.field private static final INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mInitialFrozenRotation:I

.field private mIsShutdown:Z

.field private final mLock:Ljava/lang/Object;

.field private mOwningUid:I

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mToken:Landroid/os/Binder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    .line 61
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    .line 64
    const-string/jumbo v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 67
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    .line 56
    return-void
.end method

.method private isConnectedLocked()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    .prologue
    .line 330
    const-string/jumbo v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 329
    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 331
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 332
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, -0x1

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 333
    const/16 v3, 0x10

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 334
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v4, 0x10012

    or-int/2addr v3, v4

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 337
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 344
    :try_start_0
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v3, p1, v0, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    .line 345
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-void

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Error while registering UiTestAutomationService."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private restoreRotationStateLocked()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    iget v2, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 377
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private storeRotationStateLocked()V
    .locals 2

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private throwIfCalledByNotTrustedUidLocked()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 411
    .local v0, "callingUid":I
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Calling from not trusted UID!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method private throwIfShutdownLocked()V
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    return-void
.end method

.method private unregisterUiTestAutomationServiceLocked()V
    .locals 4

    .prologue
    .line 353
    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 352
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 357
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 358
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Error while unregistering UiTestAutomationService"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 4

    .prologue
    .line 208
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 210
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 211
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 215
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    return-void

    .line 208
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 216
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v5, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 169
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 170
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 171
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 173
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 174
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 176
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v4, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 177
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 178
    const/4 v4, 0x0

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return v4

    .line 168
    .end local v0    # "callingUserId":I
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 180
    .restart local v0    # "callingUserId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "identity":J
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v1}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return v4

    .line 181
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw v4
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 88
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already connected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 93
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 82
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 101
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 102
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already disconnected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 105
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 106
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    .line 107
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 98
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 275
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 276
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 279
    new-instance v0, Landroid/app/UiAutomationConnection$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 310
    .local v0, "streamReader":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 272
    return-void

    .line 273
    .end local v0    # "streamReader":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 5

    .prologue
    .line 223
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 225
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 226
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 230
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    .line 231
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    return-object v2

    .line 223
    .end local v0    # "identity":J
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 233
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 7
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 188
    iget-object v5, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 189
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 190
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 191
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 193
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 194
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 196
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v4, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 197
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    return-object v6

    .line 188
    .end local v0    # "callingUserId":I
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 200
    .restart local v0    # "callingUserId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "identity":J
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v1}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-object v4

    .line 201
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    throw v4
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 243
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 244
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 248
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    return-void

    .line 241
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 249
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    throw v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 113
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 114
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 115
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 116
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 118
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 120
    .local v2, "mode":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return v3

    .line 113
    .end local v0    # "identity":J
    .end local v2    # "mode":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 119
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "mode":I
    goto :goto_0

    .line 123
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw v3
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 259
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 260
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return-void

    .line 257
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 265
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    throw v2
.end method

.method public setRotation(I)Z
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 130
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 131
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 132
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 133
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 137
    .local v0, "identity":J
    const/4 v3, -0x2

    if-ne p1, v3, :cond_0

    .line 138
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :goto_0
    const/4 v3, 0x1

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    return v3

    .line 130
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 140
    .restart local v0    # "identity":J
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 146
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    const/4 v3, 0x0

    return v3

    .line 145
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw v3
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 319
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    .line 321
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 314
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 153
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 155
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 156
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    .local v0, "identity":J
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    return-object v2

    .line 153
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 161
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw v2
.end method

.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$SessionParams;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PERMISSIONS"

.field public static final ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"

.field public static final EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"

.field public static final EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_FAILURE_ABORTED:I = 0x3

.field public static final STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final STATUS_FAILURE_INVALID:I = 0x4

.field public static final STATUS_FAILURE_STORAGE:I = 0x6

.field public static final STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "installer"    # Landroid/content/pm/IPackageInstaller;
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    .line 270
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mPm:Landroid/content/pm/PackageManager;

    .line 272
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 273
    iput-object p4, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    .line 274
    iput p5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 269
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 565
    return-void
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 579
    return-void
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 5
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 300
    throw v1
.end method

.method public getAllSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMySessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 320
    throw v1
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .prologue
    .line 574
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 573
    return-void
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 591
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    .line 592
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 593
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 592
    invoke-direct {v0, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .local v0, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 590
    return-void

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 605
    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    return-void

    .line 420
    :catch_0
    move-exception v6

    .line 421
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .prologue
    .line 613
    iget-object v4, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 614
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 616
    .local v0, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 618
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 613
    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 619
    .restart local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    .line 612
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x0

    .local v1, "val":Ljava/lang/String;
    goto :goto_0

    .line 353
    .end local v1    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.class Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 3391
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3393
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3394
    const/4 v2, 0x1

    .line 3395
    .local v2, "success":Z
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3397
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 3403
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_0

    .line 3405
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3392
    :cond_0
    :goto_1
    return-void

    .line 3398
    :catch_0
    move-exception v1

    .line 3399
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :try_start_2
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t clear application caches: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3400
    const/4 v2, 0x0

    goto :goto_0

    .line 3395
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3406
    :catch_1
    move-exception v0

    .line 3407
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "RemoveException when invoking call back"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

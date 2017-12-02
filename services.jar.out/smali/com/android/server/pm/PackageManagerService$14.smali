.class Lcom/android/server/pm/PackageManagerService$14;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 16608
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 16610
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16612
    const/4 v2, 0x0

    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    .line 16613
    const-string/jumbo v7, "clearApplicationUserData"

    .line 16612
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    .line 16614
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16615
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .local v3, "succeeded":Z
    :try_start_2
    monitor-exit v6

    .line 16617
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16618
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    throw v5

    .line 16614
    .end local v3    # "succeeded":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 16618
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_1
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    throw v5

    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catch_2
    move-exception v6

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    if-eq v5, v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v4

    .line 16619
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :cond_4
    if-eqz v3, :cond_5

    .line 16622
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 16621
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 16623
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_5

    .line 16624
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 16627
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v4, :cond_6

    .line 16629
    :try_start_7
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 16609
    :cond_6
    :goto_3
    return-void

    .line 16630
    :catch_3
    move-exception v1

    .line 16631
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 16618
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catchall_2
    move-exception v4

    goto :goto_1
.end method

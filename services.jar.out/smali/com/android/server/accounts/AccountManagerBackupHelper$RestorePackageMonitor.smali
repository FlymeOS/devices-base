.class final Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 276
    return-void

    .line 278
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    .line 279
    return-void

    .line 281
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 284
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    .line 285
    .local v2, "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->-get0(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 289
    :cond_3
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 288
    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 273
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 293
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 295
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 297
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set0(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit v4

    .line 272
    return-void
.end method

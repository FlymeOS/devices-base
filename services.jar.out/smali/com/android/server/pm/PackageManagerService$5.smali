.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$pi"    # Landroid/content/IntentSender;

    .prologue
    .line 3420
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3423
    const/4 v8, 0x1

    .line 3424
    .local v8, "success":Z
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3426
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$volumeUuid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$freeStorageSize:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 3432
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 3435
    if-eqz v8, :cond_1

    const/4 v2, 0x1

    .line 3436
    .local v2, "code":I
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3437
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3436
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3421
    .end local v2    # "code":I
    :cond_0
    :goto_2
    return-void

    .line 3427
    :catch_0
    move-exception v6

    .line 3428
    .local v6, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :try_start_2
    const-string/jumbo v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t clear application caches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3429
    const/4 v8, 0x0

    goto :goto_0

    .line 3424
    .end local v6    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3435
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "code":I
    goto :goto_1

    .line 3438
    :catch_1
    move-exception v7

    .line 3439
    .local v7, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

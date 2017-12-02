.class final Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelRestoreCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set2(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;

    .line 308
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->unregister()V

    .line 310
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set1(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 305
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

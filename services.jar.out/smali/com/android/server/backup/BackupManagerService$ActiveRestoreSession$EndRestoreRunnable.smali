.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p2, "manager"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 10402
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10403
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    .line 10404
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10402
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 10409
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v1

    .line 10410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->-set0(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 10411
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 10416
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    .line 10407
    return-void

    .line 10409
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

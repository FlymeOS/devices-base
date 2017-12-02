.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFinishedRunnable"
.end annotation


# instance fields
.field final mAgent:Landroid/app/IBackupAgent;

.field final mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "token"    # I

    .prologue
    .line 6547
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6548
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 6549
    iput p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    .line 6547
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6555
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6553
    :goto_0
    return-void

    .line 6556
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

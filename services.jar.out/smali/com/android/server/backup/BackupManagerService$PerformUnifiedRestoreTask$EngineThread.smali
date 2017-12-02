.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .param p2, "engine"    # Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
    .param p3, "engineSocket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x1

    .line 8754
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8755
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    .line 8756
    invoke-virtual {p2, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 8760
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    .line 8754
    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    .prologue
    .line 8786
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8787
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->handleTimeout()V

    .line 8785
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 8764
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 8774
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8776
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8778
    :catchall_0
    move-exception v0

    .line 8781
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8778
    throw v0

    .line 8781
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8772
    return-void
.end method

.method public waitForResult()I
    .locals 1

    .prologue
    .line 8768
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method

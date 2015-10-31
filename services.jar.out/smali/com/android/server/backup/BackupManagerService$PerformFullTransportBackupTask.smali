.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 3805
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3806
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3807
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 3808
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3809
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3810
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 3811
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, p3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 3813
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 3815
    .local v5, "pkg":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3817
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const-string v6, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3813
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3826
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_2

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 3835
    :cond_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3836
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 3837
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3840
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4022
    if-eqz p1, :cond_1

    .line 4023
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 4024
    aget-object v1, p1, v3

    .line 4025
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v5, p1, v3

    .line 4027
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v4

    if-eqz v2, :cond_1

    .line 4033
    aget-object v1, p1, v4

    .line 4034
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v5, p1, v4

    .line 4036
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4042
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    .line 4028
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 4029
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4037
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 4038
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 24

    .prologue
    .line 3849
    const/4 v9, 0x0

    .line 3852
    .local v9, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    .line 3857
    .local v18, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 3860
    :cond_0
    const-string v19, "PFTBT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "full backup requested but e="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " p="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; ignoring"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 3997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    .line 4019
    :cond_2
    :goto_0
    return-void

    .line 4006
    :catchall_0
    move-exception v19

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v19

    .line 4011
    :catchall_1
    move-exception v19

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v19

    .line 3867
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v17

    .line 3868
    .local v17, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v17, :cond_5

    .line 3869
    const-string v19, "PFTBT"

    const-string v20, "Transport not present; full data backup not performed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 3997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    goto/16 :goto_0

    .line 4006
    :catchall_2
    move-exception v19

    :try_start_8
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v19

    .line 4011
    :catchall_3
    move-exception v19

    :try_start_9
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v19

    .line 3874
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3875
    .local v4, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v4, :cond_12

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 3878
    .local v7, "currentPackage":Landroid/content/pm/PackageInfo;
    const-string v19, "PFTBT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Initiating full-data transport backup of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    const/16 v19, 0xb18

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3884
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 3887
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v1}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v15

    .line 3889
    .local v15, "result":I
    if-nez v15, :cond_9

    .line 3892
    const/16 v19, 0x0

    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3893
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v20, v18, v19

    .line 3896
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 3897
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3898
    .local v16, "runnerLatch":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v19, 0x1

    aget-object v19, v9, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v5, v0, v1, v7, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 3902
    .local v5, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v19, 0x1

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3903
    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-object v20, v9, v19

    .line 3907
    new-instance v19, Ljava/lang/Thread;

    const-string v20, "package-backup-bridge"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    .line 3911
    new-instance v12, Ljava/io/FileInputStream;

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3913
    .local v12, "in":Ljava/io/FileInputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v19, 0x1

    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3915
    .local v14, "out":Ljava/io/FileOutputStream;
    const/16 v19, 0x2000

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 3916
    .local v6, "buffer":[B
    const/4 v13, 0x0

    .line 3918
    .local v13, "nRead":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_b

    .line 3920
    const-string v19, "PFTBT"

    const-string v20, "Full backup task told to stop"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_d

    .line 3935
    const/16 v15, -0x3e8

    .line 3936
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 3952
    :cond_8
    :goto_3
    if-eqz v15, :cond_9

    .line 3953
    const-string v19, "PFTBT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " backing up "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    .end local v5    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v6    # "buffer":[B
    .end local v12    # "in":Ljava/io/FileInputStream;
    .end local v13    # "nRead":I
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "runnerLatch":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 3961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 3965
    :cond_a
    const/16 v19, -0x3ea

    move/from16 v0, v19

    if-ne v15, v0, :cond_e

    .line 3967
    const-string v19, "PFTBT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Transport rejected backup of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", skipping"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const/16 v19, 0xb19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "transport rejected"

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3986
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3987
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3988
    const/4 v7, 0x0

    .line 3875
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 3924
    .restart local v5    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v6    # "buffer":[B
    .restart local v12    # "in":Ljava/io/FileInputStream;
    .restart local v13    # "nRead":I
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "runnerLatch":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_b
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    .line 3925
    if-lez v13, :cond_c

    .line 3926
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v6, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3927
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v15

    .line 3929
    :cond_c
    if-lez v13, :cond_7

    if-eqz v15, :cond_6

    goto/16 :goto_2

    .line 3942
    :cond_d
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v10

    .line 3943
    .local v10, "finishResult":I
    if-nez v15, :cond_8

    .line 3944
    move v15, v10

    goto/16 :goto_3

    .line 3974
    .end local v5    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v6    # "buffer":[B
    .end local v10    # "finishResult":I
    .end local v12    # "in":Ljava/io/FileInputStream;
    .end local v13    # "nRead":I
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "runnerLatch":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_e
    if-eqz v15, :cond_10

    .line 3976
    const-string v19, "PFTBT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Transport failed; aborting backup: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    const/16 v19, 0xb1a

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 3997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    goto/16 :goto_0

    .line 4006
    :catchall_4
    move-exception v19

    :try_start_d
    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v19

    .line 4011
    :catchall_5
    move-exception v19

    :try_start_e
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v19

    .line 3982
    :cond_10
    const/16 v19, 0xb1b

    :try_start_f
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto/16 :goto_4

    .line 3994
    .end local v4    # "N":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v11    # "i":I
    .end local v15    # "result":I
    .end local v17    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v8

    .line 3995
    .local v8, "e":Ljava/lang/Exception;
    :try_start_10
    const-string v19, "PFTBT"

    const-string v20, "Exception trying full transport backup"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 3997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    goto/16 :goto_0

    .line 3992
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "N":I
    .restart local v11    # "i":I
    .restart local v17    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_12
    :try_start_13
    const-string v19, "PFTBT"

    const-string v20, "Full backup completed."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 3997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    goto/16 :goto_0

    .line 4006
    :catchall_6
    move-exception v19

    :try_start_16
    monitor-exit v20
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    throw v19

    .line 4011
    :catchall_7
    move-exception v19

    :try_start_17
    monitor-exit v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    throw v19

    .line 4006
    .end local v4    # "N":I
    .end local v11    # "i":I
    .end local v17    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catchall_8
    move-exception v19

    :try_start_18
    monitor-exit v20
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v19

    .line 4011
    :catchall_9
    move-exception v19

    :try_start_19
    monitor-exit v20
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v19

    .line 3997
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_a
    move-exception v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 3998
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4004
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4005
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4006
    monitor-exit v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4009
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 4011
    monitor-exit v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    :cond_15
    throw v19

    .line 4006
    :catchall_b
    move-exception v19

    :try_start_1c
    monitor-exit v20
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    throw v19

    .line 4011
    :catchall_c
    move-exception v19

    :try_start_1d
    monitor-exit v20
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v19
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 3843
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3844
    return-void
.end method

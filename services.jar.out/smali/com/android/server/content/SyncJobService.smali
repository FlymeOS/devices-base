.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private jobParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    .line 29
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "Messenger not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SyncManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public callJobFinished(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 114
    .local v0, "params":Landroid/app/job/JobParameters;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0, p2}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 116
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 111
    return-void

    .line 118
    :cond_0
    :try_start_1
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Job params not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "params":Landroid/app/job/JobParameters;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 43
    const-string/jumbo v1, "messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    .line 44
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 45
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 46
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 49
    const/4 v1, 0x2

    return v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 66
    const-string/jumbo v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 67
    .local v0, "isLoggable":Z
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v3, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 71
    .local v1, "m":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    .line 72
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 73
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-nez v2, :cond_0

    .line 74
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got invalid job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    return v3

    .line 67
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 77
    .restart local v1    # "m":Landroid/os/Message;
    .restart local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    if-eqz v0, :cond_1

    .line 78
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got start job message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 82
    const/4 v3, 0x1

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    const-string/jumbo v1, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStopJob called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 99
    return v3

    .line 92
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 103
    .restart local v0    # "m":Landroid/os/Message;
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 105
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 108
    return v3

    :cond_2
    move v1, v3

    .line 103
    goto :goto_0

    :cond_3
    move v2, v3

    .line 105
    goto :goto_1
.end method

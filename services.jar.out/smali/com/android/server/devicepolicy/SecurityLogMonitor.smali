.class Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field private static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400

.field private static final DEBUG:Z = false

.field private static final POLLING_INTERVAL_MILLISECONDS:J

.field private static final RATE_LIMIT_INTERVAL_MILLISECONDS:J

.field private static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field private mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAllowedRetrivalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    .line 50
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 49
    return-void
.end method

.method private notifyDeviceOwnerIfNeeded()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "shouldNotifyDO":Z
    const/4 v0, 0x0

    .line 197
    .local v0, "allowToRetrieveNow":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 200
    .local v1, "logSize":I
    const/16 v3, 0x400

    if-lt v1, v3, :cond_2

    .line 202
    const/4 v0, 0x1

    .line 210
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-nez v3, :cond_4

    move v2, v0

    .line 211
    .end local v2    # "shouldNotifyDO":Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    if-eqz v2, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v4, "android.app.action.SECURITY_LOGS_AVAILABLE"

    .line 218
    const/4 v5, 0x0

    .line 217
    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    :cond_1
    return-void

    .line 203
    .restart local v2    # "shouldNotifyDO":Z
    :cond_2
    if-lez v1, :cond_0

    .line 204
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 207
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 212
    .end local v1    # "logSize":I
    .end local v2    # "shouldNotifyDO":Z
    :catchall_0
    move-exception v3

    .line 213
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 212
    throw v3
.end method


# virtual methods
.method retrieveLogs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 132
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    .line 131
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    .line 133
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 134
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    return-object v0

    .line 137
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :cond_0
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    .line 140
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    throw v1
.end method

.method public run()V
    .locals 9

    .prologue
    .line 146
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    const-wide/16 v2, -0x1

    .line 151
    .local v2, "lastLogTimestampNanos":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 153
    :try_start_0
    sget-wide v6, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 155
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    .line 158
    invoke-static {v4}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    .line 165
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x2800

    if-le v5, v6, :cond_0

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 173
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit16 v7, v7, -0x1400

    .line 174
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 172
    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v5}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    .line 180
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SecurityLogMonitor"

    const-string/jumbo v6, "Failed to read security log"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    :try_start_3
    invoke-static {v6, v7, v4}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "SecurityLogMonitor"

    const-string/jumbo v6, "Thread interrupted, exiting."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    return-void

    .line 176
    :catchall_0
    move-exception v5

    .line 177
    :try_start_4
    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method start()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    .line 93
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 94
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    throw v0
.end method

.method stop()V
    .locals 6

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 114
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Interrupted while waiting for thread to stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 118
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    throw v1
.end method

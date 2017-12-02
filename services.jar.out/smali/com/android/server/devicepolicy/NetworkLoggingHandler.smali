.class final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "NetworkLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;
    }
.end annotation


# static fields
.field private static final BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J

.field private static final BATCH_FINALIZATION_TIMEOUT_MS:J

.field static final LOG_NETWORK_EVENT_MSG:I = 0x1

.field private static final MAX_EVENTS_PER_BATCH:I = 0x4b0

.field static final NETWORK_EVENT_KEY:Ljava/lang/String; = "network_event"

.field private static final NETWORK_LOGGING_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "NetworkLogging.batchTimeout"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCurrentFullBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mFullBatch:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkEvents:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndNotifyDeviceOwnerIfNotEmpty()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-class v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->BATCH_FINALIZATION_TIMEOUT_MS:J

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 48
    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 82
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    return-void
.end method

.method private declared-synchronized finalizeBatchAndNotifyDeviceOwnerIfNotEmpty()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mFullBatch:Ljava/util/ArrayList;

    .line 119
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 124
    const-string/jumbo v1, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mFullBatch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending network logging batch broadcast to device owner, batchToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J

    .line 125
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v2, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 115
    return-void

    .line 131
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J

    .line 131
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 100
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "NetworkLoggingHandler received an unknown of message."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "network_event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/admin/NetworkEvent;

    .line 91
    .local v0, "networkEvent":Landroid/app/admin/NetworkEvent;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x4b0

    if-lt v1, v2, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndNotifyDeviceOwnerIfNotEmpty()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized retrieveFullLogBatch(J)Ljava/util/List;
    .locals 3
    .param p1, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentFullBatchToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 143
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mFullBatch:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scheduleBatchFinalization()V
    .locals 9

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v4, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->BATCH_FINALIZATION_TIMEOUT_MS:J

    add-long v2, v0, v4

    .line 108
    .local v2, "when":J
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 109
    sget-wide v4, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J

    const-string/jumbo v6, "NetworkLogging.batchTimeout"

    .line 110
    iget-object v7, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 108
    const/4 v1, 0x2

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 111
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduled a new batch finalization alarm "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->BATCH_FINALIZATION_TIMEOUT_MS:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v4, "ms from now."

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

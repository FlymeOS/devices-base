.class public Lcom/android/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final NO_PREFERRED_UID:I = -0x1

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;

.field private static final defaultMaxActiveJobsPerService:I


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mPreferredUid:I

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobPackageTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/job/JobServiceContext;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/job/JobServiceContext;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    sput v0, Lcom/android/server/job/JobServiceContext;->defaultMaxActiveJobsPerService:I

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string/jumbo v3, "VERB_BINDING"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string/jumbo v3, "VERB_STARTING"

    aput-object v3, v0, v1

    const-string/jumbo v1, "VERB_EXECUTING"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string/jumbo v1, "VERB_STOPPING"

    aput-object v1, v0, v2

    const-string/jumbo v1, "VERB_FINISHED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 76
    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p5, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 150
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 151
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 152
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 153
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 147
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 141
    return-void
.end method

.method private removeOpTimeOut()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 6

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    .line 650
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 651
    const-wide/32 v2, 0x927c0

    .line 657
    .local v2, "timeoutMillis":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 647
    return-void

    .line 651
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_0
    const-wide/16 v2, 0x1f40

    .restart local v2    # "timeoutMillis":J
    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v0, v2, :cond_1

    .line 356
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 358
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    .prologue
    const/4 v1, 0x1

    .line 289
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 280
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelExecutingJob(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method clearPreferredUid()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 257
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v11, 0x0

    .line 166
    iget-object v10, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v0, "JobServiceContext"

    const-string/jumbo v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 169
    return v11

    .line 172
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 174
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 176
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const/4 v4, 0x1

    .line 178
    .local v4, "isDeadlineExpired":Z
    :goto_0
    const/4 v5, 0x0

    .line 179
    .local v5, "triggeredUris":[Landroid/net/Uri;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v5, v0, [Landroid/net/Uri;

    .line 181
    .local v5, "triggeredUris":[Landroid/net/Uri;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    .end local v5    # "triggeredUris":[Landroid/net/Uri;
    :cond_1
    const/4 v6, 0x0

    .line 184
    .local v6, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 186
    .local v6, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    .end local v6    # "triggeredAuthorities":[Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z[Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 193
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 195
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 197
    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 196
    const/4 v2, 0x5

    .line 195
    invoke-virtual {v0, v9, p0, v2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    .line 198
    .local v7, "binding":Z
    if-nez v7, :cond_5

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 205
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 206
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 207
    return v11

    .line 177
    .end local v4    # "isDeadlineExpired":Z
    .end local v7    # "binding":Z
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isDeadlineExpired":Z
    goto :goto_0

    .line 176
    .end local v4    # "isDeadlineExpired":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isDeadlineExpired":Z
    goto :goto_0

    .line 210
    .restart local v7    # "binding":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    const/4 v0, 0x1

    monitor-exit v10

    return v0

    .line 166
    .end local v4    # "isDeadlineExpired":Z
    .end local v7    # "binding":Z
    .end local v9    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 211
    .restart local v4    # "isDeadlineExpired":Z
    .restart local v7    # "binding":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getPreferredUid()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 230
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 227
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 230
    .restart local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v1, v0}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0
.end method

.method getRunningJobUnsafeLocked()Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method getTimeoutElapsed()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method public jobFinished(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 271
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v3

    .line 311
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 317
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 319
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 320
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v3, Landroid/os/WorkSource;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 322
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 323
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 329
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    .line 330
    const-string/jumbo v3, "JobServiceContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bound new job "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " but live wakelock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 331
    const-string/jumbo v6, " tag="

    .line 330
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 331
    iget-object v6, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 334
    :cond_0
    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 336
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 303
    return-void

    .line 305
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 312
    .restart local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void

    .line 323
    .restart local v0    # "pm":Landroid/os/PowerManager;
    .restart local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void
.end method

.method preemptExecutingJob()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 250
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

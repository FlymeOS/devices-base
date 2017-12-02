.class public Lcom/android/server/job/controllers/DeviceIdleJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/DeviceIdleJobsController$1;,
        Lcom/android/server/job/controllers/DeviceIdleJobsController$2;
    }
.end annotation


# static fields
.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceIdleJobsController"

.field private static sController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceIdleMode:Z

.field private mDeviceIdleWhitelistAppIds:[I

.field private final mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

.field private final mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field final mUpdateFunctor:Lcom/android/server/job/JobStore$JobStatusFunctor;


# direct methods
.method static synthetic -get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->sCreationLock:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jobSchedulerService"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mUpdateFunctor:Lcom/android/server/job/JobStore$JobStatusFunctor;

    .line 79
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    .line 101
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 103
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 102
    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 104
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    .line 109
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .locals 4
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 69
    sget-object v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->sController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->sController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->sController:Lcom/android/server/job/controllers/DeviceIdleJobsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 161
    .local v1, "whitelisted":Z
    iget-boolean v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 162
    .local v0, "enableTask":Z
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->setDeviceNotDozingConstraintSatisfied(ZZ)Z

    .line 159
    return-void

    .line 161
    .end local v0    # "enableTask":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    .prologue
    .line 178
    const-string/jumbo v0, "DeviceIdleJobsController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;ILjava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 177
    return-void
.end method

.method isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 153
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 152
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .prologue
    .line 173
    return-void
.end method

.method updateIdleMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateWhitelist()V

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eq v1, p1, :cond_1

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 124
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mUpdateFunctor:Lcom/android/server/job/JobStore$JobStatusFunctor;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 127
    if-eqz v0, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/job/StateChangedListener;->onDeviceIdleStateChanged(Z)V

    .line 112
    :cond_2
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateWhitelist()V
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

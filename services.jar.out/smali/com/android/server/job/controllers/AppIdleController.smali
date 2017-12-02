.class public Lcom/android/server/job/controllers/AppIdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;,
        Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;,
        Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AppIdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/AppIdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mAppIdleParoleOn:Z

.field private mInitializedParoleOn:Z

.field private final mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

.field private final mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/job/controllers/AppIdleController;)Lcom/android/server/job/JobSchedulerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/job/controllers/AppIdleController;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    .line 104
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    .line 106
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 101
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;
    .locals 4
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 92
    sget-object v1, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    .line 94
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/AppIdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    .prologue
    .line 131
    const-string/jumbo v0, "AppIdle: parole on = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/AppIdleController$1;-><init>(Lcom/android/server/job/controllers/AppIdleController;ILjava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 130
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    iget-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mInitializedParoleOn:Z

    if-nez v4, :cond_0

    .line 112
    iput-boolean v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mInitializedParoleOn:Z

    .line 113
    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v4}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 116
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    .line 122
    .local v0, "appIdle":Z
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    .line 110
    return-void

    .end local v0    # "appIdle":Z
    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    .restart local v0    # "appIdle":Z
    :cond_2
    move v2, v3

    .line 122
    goto :goto_1
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .prologue
    .line 126
    return-void
.end method

.method setAppIdleParoleOn(Z)V
    .locals 4
    .param p1, "isAppIdleParoleOn"    # Z

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .line 159
    return-void

    .line 161
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    .line 162
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;-><init>(Lcom/android/server/job/controllers/AppIdleController;)V

    .line 163
    .local v1, "update":Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 164
    iget-boolean v2, v1, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->mChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 165
    const/4 v0, 0x1

    :cond_1
    monitor-exit v3

    .line 168
    if-eqz v0, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 154
    :cond_2
    return-void

    .line 157
    .end local v1    # "update":Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

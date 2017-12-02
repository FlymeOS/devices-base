.class public Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$1;,
        Lcom/android/server/job/controllers/ConnectivityController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Conn"

.field private static mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mTrackedJobs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 72
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v5, v4

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 69
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .locals 4
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 60
    sget-object v1, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 102
    .local v2, "ignoreBlocked":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 104
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 105
    .local v1, "connected":Z
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isMetered()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const/4 v5, 0x0

    .line 106
    .local v5, "unmetered":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    const/4 v4, 0x0

    .line 109
    .local v4, "notRoaming":Z
    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    move-result v0

    .line 110
    .local v0, "changed":Z
    invoke-virtual {p1, v5}, Lcom/android/server/job/controllers/JobStatus;->setUnmeteredConstraintSatisfied(Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 111
    invoke-virtual {p1, v4}, Lcom/android/server/job/controllers/JobStatus;->setNotRoamingConstraintSatisfied(Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 112
    return v0

    .line 101
    .end local v0    # "changed":Z
    .end local v1    # "connected":Z
    .end local v2    # "ignoreBlocked":Z
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "notRoaming":Z
    .end local v5    # "unmetered":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "ignoreBlocked":Z
    goto :goto_0

    .line 105
    .restart local v1    # "connected":Z
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "unmetered":Z
    goto :goto_1

    .line 106
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "notRoaming":Z
    goto :goto_2
.end method

.method private updateTrackedJobs(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 122
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "changed":Z
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 126
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 127
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    .line 131
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v4

    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    .prologue
    .line 190
    const-string/jumbo v2, "Connectivity."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v2, "Tracking "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 193
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 196
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string/jumbo v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 199
    const-string/jumbo v2, " from "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 201
    const-string/jumbo v2, ": C="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 202
    const-string/jumbo v2, ": UM="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 203
    const-string/jumbo v2, ": NR="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    return-void
.end method

.method public declared-synchronized onNetworkActive()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 144
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

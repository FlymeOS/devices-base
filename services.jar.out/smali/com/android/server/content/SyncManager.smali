.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;,
        Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;,
        Lcom/android/server/content/SyncManager$1;,
        Lcom/android/server/content/SyncManager$2;,
        Lcom/android/server/content/SyncManager$3;,
        Lcom/android/server/content/SyncManager$4;,
        Lcom/android/server/content/SyncManager$5;,
        Lcom/android/server/content/SyncManager$6;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID:I = 0x1

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private volatile mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private volatile mJobServiceReady:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private mSyncJobService:Lcom/android/server/content/SyncJobService;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/content/SyncManager;)Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mSyncJobService:Lcom/android/server/content/SyncJobService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->clearAllBackoffs()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/content/SyncManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/content/SyncManager;I)J
    .locals 2
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 147
    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 146
    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 210
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    .line 230
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 279
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    new-instance v0, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 366
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 396
    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mJobServiceReady:Z

    .line 502
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 504
    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 505
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 506
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 515
    new-instance v1, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 514
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 530
    new-instance v0, Landroid/content/SyncAdaptersCache;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 532
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 534
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v1, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 543
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 534
    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 545
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    .line 547
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    if-nez p2, :cond_0

    .line 551
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 553
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 561
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 562
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 565
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 569
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 568
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 571
    if-nez p2, :cond_4

    .line 573
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 577
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 578
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 579
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 580
    const-class v0, Landroid/accounts/AccountManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 581
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 583
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    new-instance v1, Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 593
    const-string/jumbo v0, "batterystats"

    .line 592
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 599
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 600
    const-string/jumbo v1, "SyncManagerHandleSyncAlarm"

    .line 599
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 601
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 609
    const-string/jumbo v1, "SyncLoopWakeLock"

    .line 608
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 610
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 612
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 613
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v0, :cond_2

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 616
    .local v11, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/server/content/SyncManager$12;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0, v11}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 626
    .local v10, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    monitor-enter v1

    .line 628
    :try_start_0
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 629
    const/4 v2, 0x0

    .line 627
    invoke-virtual {v11, v0, v2, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 634
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 635
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 641
    .end local v10    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    if-nez p2, :cond_3

    .line 643
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 645
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 646
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 643
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 653
    :cond_3
    new-instance v12, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/content/SyncJobService;

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    .local v12, "startServiceIntent":Landroid/content/Intent;
    const-string/jumbo v0, "messenger"

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 655
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v1, p0, v12}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 668
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 499
    return-void

    .line 575
    .end local v12    # "startServiceIntent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto/16 :goto_0

    .line 626
    .restart local v10    # "provisionedObserver":Landroid/database/ContentObserver;
    .restart local v11    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 1043
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1044
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1043
    invoke-virtual {v1, p1, p2, v2}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    return v4

    .line 1051
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1052
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/high16 v3, 0x100000

    .line 1051
    invoke-virtual {v1, p2, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    return v4

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private cleanupJobs()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method private clearAllBackoffs()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 388
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 386
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const-wide/16 v2, -0x1

    .line 1226
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v6

    .line 1227
    .local v6, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1229
    return-void

    .line 1231
    :cond_0
    const-string/jumbo v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Clearing backoffs for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1238
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1225
    return-void
.end method

.method private computeSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 1005
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 337
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_1

    .line 338
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 337
    if-eqz v2, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 343
    :cond_0
    return v0

    .line 336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doDatabaseCleanup()V
    .locals 6

    .prologue
    .line 356
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 358
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v3, :cond_0

    .line 359
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    .line 360
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 362
    .local v0, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    goto :goto_0

    .line 355
    .end local v0    # "accountsForUser":[Landroid/accounts/Account;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .prologue
    .line 1942
    const-string/jumbo v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1943
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1944
    const-string/jumbo v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1945
    const-string/jumbo v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1947
    :cond_0
    const-string/jumbo v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1948
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1949
    const-string/jumbo v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1950
    const-string/jumbo v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1952
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x0

    .line 2196
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v7}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 2197
    .local v3, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    aget-object v7, v3, v8

    if-eqz v7, :cond_6

    .line 2198
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2199
    const-string/jumbo v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    const-string/jumbo v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2201
    aget-object v7, v3, v8

    iget v5, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2206
    .local v5, "today":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v12, :cond_0

    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 2207
    aget-object v2, v3, v4

    .line 2208
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    .line 2217
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    .line 2218
    .local v6, "weekDay":I
    :cond_1
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_6

    .line 2219
    const/4 v0, 0x0

    .line 2220
    .local v0, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    .line 2221
    .end local v0    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 2222
    aget-object v2, v3, v4

    .line 2223
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    .line 2224
    array-length v4, v3

    .line 2239
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    .line 2240
    const-string/jumbo v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 2209
    .end local v6    # "weekDay":I
    .restart local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    .line 2210
    .local v1, "delta":I
    if-gt v1, v12, :cond_0

    .line 2212
    const-string/jumbo v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2206
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2227
    .end local v1    # "delta":I
    .restart local v6    # "weekDay":I
    :cond_4
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    .line 2228
    .restart local v1    # "delta":I
    if-gt v1, v12, :cond_2

    .line 2229
    add-int/lit8 v4, v4, 0x1

    .line 2231
    if-nez v0, :cond_5

    .line 2232
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v0, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2234
    :cond_5
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2235
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2236
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2237
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_2

    .line 2195
    .end local v1    # "delta":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "i":I
    .end local v5    # "today":I
    .end local v6    # "weekDay":I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 58
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v28

    .line 1963
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v28, :cond_15

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v54

    if-lez v54, :cond_15

    .line 1964
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 1965
    .local v11, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v50, 0x0

    .line 1966
    .local v50, "totalElapsedTime":J
    const-wide/16 v52, 0x0

    .line 1967
    .local v52, "totalTimes":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1969
    .local v4, "N":I
    const/16 v34, 0x0

    .line 1970
    .local v34, "maxAuthority":I
    const/16 v33, 0x0

    .line 1971
    .local v33, "maxAccount":I
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1973
    .local v26, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v54, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 1976
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_4

    .line 1977
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1978
    .local v12, "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "/"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 1979
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 1978
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 1980
    const-string/jumbo v55, " u"

    .line 1978
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 1980
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v55, v0

    .line 1978
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1986
    .local v6, "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v32

    .line 1987
    .local v32, "length":I
    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_0

    .line 1988
    move/from16 v34, v32

    .line 1990
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v32

    .line 1991
    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_1

    .line 1992
    move/from16 v33, v32

    .line 1995
    :cond_1
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v20, v0

    .line 1996
    .local v20, "elapsedTime":J
    add-long v50, v50, v20

    .line 1997
    const-wide/16 v54, 0x1

    add-long v52, v52, v54

    .line 1998
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 1999
    .local v13, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    if-nez v13, :cond_2

    .line 2000
    new-instance v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    const/16 v54, 0x0

    move-object/from16 v0, v54

    invoke-direct {v13, v12, v0}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)V

    .line 2001
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    :cond_2
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v54, v0

    add-long v54, v54, v20

    move-wide/from16 v0, v54

    iput-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2004
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    iput v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2005
    iget-object v7, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2006
    .local v7, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2007
    .local v8, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v8, :cond_3

    .line 2008
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    const/16 v54, 0x0

    move-object/from16 v0, v54

    invoke-direct {v8, v6, v0}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;)V

    .line 2009
    .restart local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    :cond_3
    iget-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v54, v0

    add-long v54, v54, v20

    move-wide/from16 v0, v54

    iput-wide v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2012
    iget v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    iput v0, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_0

    .line 1982
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v8    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v20    # "elapsedTime":J
    .end local v32    # "length":I
    :cond_4
    const-string/jumbo v12, "Unknown"

    .line 1983
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto :goto_1

    .line 2016
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_5
    const-wide/16 v54, 0x0

    cmp-long v54, v50, v54

    if-lez v54, :cond_7

    .line 2017
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2018
    const-string/jumbo v54, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2020
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    const-wide/16 v56, 0x3e8

    div-long v56, v50, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2018
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2023
    new-instance v43, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v54

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2024
    .local v43, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$15;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2036
    add-int/lit8 v54, v33, 0x3

    move/from16 v0, v34

    move/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 2037
    .local v35, "maxLength":I
    add-int/lit8 v54, v35, 0x4

    add-int/lit8 v54, v54, 0x2

    add-int/lit8 v54, v54, 0xa

    add-int/lit8 v37, v54, 0xb

    .line 2038
    .local v37, "padLength":I
    move/from16 v0, v37

    new-array v15, v0, [C

    .line 2039
    .local v15, "chars":[C
    const/16 v54, 0x2d

    move/from16 v0, v54

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 2040
    new-instance v39, Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([C)V

    .line 2043
    .local v39, "separator":Ljava/lang/String;
    const-string/jumbo v54, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    add-int/lit8 v56, v35, 0x2

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2045
    .local v9, "authorityFormat":Ljava/lang/String;
    const-string/jumbo v54, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2047
    .local v5, "accountFormat":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "authoritySyncStats$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2049
    .restart local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2055
    .local v36, "name":Ljava/lang/String;
    iget-wide v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v20, v0

    .line 2056
    .restart local v20    # "elapsedTime":J
    iget v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v48, v0

    .line 2057
    .local v48, "times":I
    const-string/jumbo v54, "%ds/%d%%"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2058
    const-wide/16 v56, 0x3e8

    div-long v56, v20, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2059
    const-wide/16 v56, 0x64

    mul-long v56, v56, v20

    div-long v56, v56, v50

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2057
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 2060
    .local v47, "timeStr":Ljava/lang/String;
    const-string/jumbo v54, "%d/%d%%"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2061
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2062
    mul-int/lit8 v56, v48, 0x64

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    div-long v56, v56, v52

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2060
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 2063
    .local v49, "timesStr":Ljava/lang/String;
    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    aput-object v36, v54, v55

    const/16 v55, 0x1

    aput-object v49, v54, v55

    const/16 v55, 0x2

    aput-object v47, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2066
    new-instance v42, Ljava/util/ArrayList;

    .line 2067
    iget-object v0, v13, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v54, v0

    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v54

    .line 2066
    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2068
    .local v42, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v54, Lcom/android/server/content/SyncManager$16;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$16;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2079
    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "stats$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_6

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2080
    .local v44, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v20, v0

    .line 2081
    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v48, v0

    .line 2082
    const-string/jumbo v54, "%ds/%d%%"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2083
    const-wide/16 v56, 0x3e8

    div-long v56, v20, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2084
    const-wide/16 v56, 0x64

    mul-long v56, v56, v20

    div-long v56, v56, v50

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2082
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 2085
    const-string/jumbo v54, "%d/%d%%"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2086
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2087
    mul-int/lit8 v56, v48, 0x64

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    div-long v56, v56, v52

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2085
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 2088
    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v55, v54, v56

    const/16 v55, 0x1

    aput-object v49, v54, v55

    const/16 v55, 0x2

    aput-object v47, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_3

    .line 2090
    .end local v44    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2094
    .end local v5    # "accountFormat":Ljava/lang/String;
    .end local v9    # "authorityFormat":Ljava/lang/String;
    .end local v13    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v14    # "authoritySyncStats$iterator":Ljava/util/Iterator;
    .end local v15    # "chars":[C
    .end local v20    # "elapsedTime":J
    .end local v35    # "maxLength":I
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "padLength":I
    .end local v39    # "separator":Ljava/lang/String;
    .end local v42    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v43    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v45    # "stats$iterator":Ljava/util/Iterator;
    .end local v47    # "timeStr":Ljava/lang/String;
    .end local v48    # "times":I
    .end local v49    # "timesStr":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2095
    const-string/jumbo v54, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "  %-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "s  %-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "s %s\n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2097
    .local v24, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v31

    .line 2098
    .local v31, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    .line 2099
    .local v38, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    if-ge v0, v4, :cond_11

    .line 2100
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2102
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v54, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2105
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_b

    .line 2106
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2107
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "/"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2108
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 2107
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2109
    const-string/jumbo v55, " u"

    .line 2107
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2109
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v55, v0

    .line 2107
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2114
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v20, v0

    .line 2115
    .restart local v20    # "elapsedTime":J
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    .line 2116
    .local v46, "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v22, v0

    .line 2117
    .local v22, "eventTime":J
    move-object/from16 v0, v46

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2119
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "/"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2120
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 2122
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_c

    .line 2123
    const-string/jumbo v18, ""

    .line 2136
    .local v18, "diffString":Ljava/lang/String;
    :goto_6
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    const-string/jumbo v54, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v55, 0x5

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2139
    add-int/lit8 v56, v25, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2140
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2141
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v57, v0

    aget-object v56, v56, v57

    const/16 v57, 0x2

    aput-object v56, v55, v57

    .line 2142
    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v56, v0

    const/high16 v57, 0x447a0000    # 1000.0f

    div-float v56, v56, v57

    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v56

    const/16 v57, 0x3

    aput-object v56, v55, v57

    .line 2143
    const/16 v56, 0x4

    aput-object v18, v55, v56

    .line 2138
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2144
    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    aput-object v6, v54, v55

    const/16 v55, 0x1

    aput-object v12, v54, v55

    .line 2145
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    move/from16 v55, v0

    move-object/from16 v0, v38

    move/from16 v1, v55

    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x2

    aput-object v55, v54, v56

    .line 2144
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2147
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v54, v0

    const/16 v55, 0x1

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_8

    .line 2148
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-eqz v54, :cond_f

    .line 2150
    :cond_8
    :goto_7
    const-string/jumbo v54, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v55, 0x3

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2151
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2152
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2153
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x2

    aput-object v56, v55, v57

    .line 2150
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2155
    :cond_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v54, v0

    if-eqz v54, :cond_a

    .line 2156
    const-string/jumbo v54, "success"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_10

    .line 2099
    :cond_a
    :goto_8
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 2111
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v18    # "diffString":Ljava/lang/String;
    .end local v20    # "elapsedTime":J
    .end local v22    # "eventTime":J
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_b
    const-string/jumbo v12, "Unknown"

    .line 2112
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto/16 :goto_5

    .line 2125
    .restart local v20    # "elapsedTime":J
    .restart local v22    # "eventTime":J
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v30    # "lastEventTime":Ljava/lang/Long;
    .restart local v46    # "time":Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    sub-long v54, v54, v22

    const-wide/16 v56, 0x3e8

    div-long v16, v54, v56

    .line 2126
    .local v16, "diff":J
    const-wide/16 v54, 0x3c

    cmp-long v54, v16, v54

    if-gez v54, :cond_d

    .line 2127
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 2128
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_d
    const-wide/16 v54, 0xe10

    cmp-long v54, v16, v54

    if-gez v54, :cond_e

    .line 2129
    const-string/jumbo v54, "%02d:%02d"

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const-wide/16 v56, 0x3c

    div-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    const-wide/16 v56, 0x3c

    rem-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 2131
    .end local v18    # "diffString":Ljava/lang/String;
    :cond_e
    const-wide/16 v54, 0xe10

    rem-long v40, v16, v54

    .line 2132
    .local v40, "sec":J
    const-string/jumbo v54, "%02d:%02d:%02d"

    const/16 v55, 0x3

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2133
    const-wide/16 v56, 0xe10

    div-long v56, v16, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    const-wide/16 v56, 0x3c

    div-long v56, v40, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    const-wide/16 v56, 0x3c

    rem-long v56, v40, v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x2

    aput-object v56, v55, v57

    .line 2132
    invoke-static/range {v54 .. v55}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "diffString":Ljava/lang/String;
    goto/16 :goto_6

    .line 2149
    .end local v16    # "diff":J
    .end local v40    # "sec":J
    :cond_f
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-eqz v54, :cond_9

    goto/16 :goto_7

    .line 2157
    :cond_10
    const-string/jumbo v54, "    mesg=%s\n"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aput-object v56, v55, v57

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_8

    .line 2160
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v18    # "diffString":Ljava/lang/String;
    .end local v20    # "elapsedTime":J
    .end local v22    # "eventTime":J
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2161
    const-string/jumbo v54, "Recent Sync History Extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    const/16 v25, 0x0

    :goto_9
    move/from16 v0, v25

    if-ge v0, v4, :cond_15

    .line 2163
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2164
    .restart local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    .line 2165
    .local v19, "extras":Landroid/os/Bundle;
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v54

    if-nez v54, :cond_13

    .line 2162
    :cond_12
    :goto_a
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 2169
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v54, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2172
    .restart local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_14

    .line 2173
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2174
    .restart local v12    # "authorityName":Ljava/lang/String;
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "/"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2175
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 2174
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2176
    const-string/jumbo v55, " u"

    .line 2174
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 2176
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v55, v0

    .line 2174
    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2181
    .restart local v6    # "accountKey":Ljava/lang/String;
    :goto_b
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    .line 2182
    .restart local v46    # "time":Landroid/text/format/Time;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v22, v0

    .line 2183
    .restart local v22    # "eventTime":J
    move-object/from16 v0, v46

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2185
    const-string/jumbo v54, "  #%-3d: %s %8s "

    const/16 v55, 0x3

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    .line 2186
    add-int/lit8 v56, v25, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x0

    aput-object v56, v55, v57

    .line 2187
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x1

    aput-object v56, v55, v57

    .line 2188
    sget-object v56, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v57, v0

    aget-object v56, v56, v57

    const/16 v57, 0x2

    aput-object v56, v55, v57

    .line 2185
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2190
    const/16 v54, 0x3

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    aput-object v6, v54, v55

    const/16 v55, 0x1

    aput-object v12, v54, v55

    const/16 v55, 0x2

    aput-object v19, v54, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_a

    .line 2178
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v22    # "eventTime":J
    .end local v46    # "time":Landroid/text/format/Time;
    :cond_14
    const-string/jumbo v12, "Unknown"

    .line 2179
    .restart local v12    # "authorityName":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    .restart local v6    # "accountKey":Ljava/lang/String;
    goto :goto_b

    .line 1960
    .end local v4    # "N":I
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v12    # "authorityName":Ljava/lang/String;
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v24    # "format":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v26    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v27    # "item$iterator":Ljava/util/Iterator;
    .end local v31    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v33    # "maxAccount":I
    .end local v34    # "maxAuthority":I
    .end local v38    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "totalElapsedTime":J
    .end local v52    # "totalTimes":J
    :cond_15
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 2248
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2249
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v4

    .line 2250
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_1

    .line 2251
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2252
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sync adapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2255
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v5

    .line 2254
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2256
    .local v0, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2258
    .end local v0    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2259
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 2247
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .prologue
    .line 1937
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1938
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1936
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 1767
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1768
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1769
    const-string/jumbo v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllPendingSyncs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 268
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v5}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v4, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "job$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 271
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 272
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_0

    .line 273
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v0    # "job":Landroid/app/job/JobInfo;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-object v4
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 431
    const-string/jumbo v1, "connectivity"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3460
    :catch_0
    move-exception v0

    .line 3462
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 717
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 718
    .local v0, "isSyncable":I
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 721
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 726
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 725
    invoke-virtual {v5, v6, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 727
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_1

    return v8

    .line 721
    .end local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return v0

    .line 729
    .restart local v3    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_1
    const/4 v1, 0x0

    .line 731
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 732
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 731
    invoke-interface {v5, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 733
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    return v8

    .line 734
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 736
    .local v2, "re":Landroid/os/RemoteException;
    return v8

    .line 738
    .end local v2    # "re":Landroid/os/RemoteException;
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 739
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 738
    if-eqz v5, :cond_3

    .line 740
    return v0

    .line 742
    :cond_3
    return v8
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 492
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private getTotalBytesTransferredByUid(I)J
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1182
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .locals 3

    .prologue
    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x186a0

    add-int v0, v2, v1

    .line 262
    .local v0, "newJobId":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    return v0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 18
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1245
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v12

    .line 1246
    .local v12, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    .line 1247
    .local v6, "newDelayInMs":J
    if-eqz v12, :cond_2

    .line 1250
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_1

    .line 1251
    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    const-string/jumbo v3, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1253
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 1252
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1253
    const-string/jumbo v13, " seconds."

    .line 1252
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    return-void

    .line 1258
    :cond_1
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v14, 0x2

    mul-long v6, v2, v14

    .line 1260
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_3

    .line 1262
    const-wide/16 v2, 0x7530

    .line 1263
    const-wide/32 v14, 0x80e8

    .line 1262
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14, v15}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v6

    .line 1267
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1268
    const-string/jumbo v3, "sync_max_retry_delay_in_seconds"

    .line 1269
    const-wide/16 v14, 0xe10

    .line 1267
    invoke-static {v2, v3, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1270
    .local v8, "maxSyncRetryTimeInSeconds":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-lez v2, :cond_4

    .line 1271
    const-wide/16 v2, 0x3e8

    mul-long v6, v8, v2

    .line 1274
    :cond_4
    add-long v4, v10, v6

    .line 1275
    .local v4, "backoff":J
    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1276
    const-string/jumbo v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Backoff until: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, ", delayTime: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1279
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1241
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v8, 0x1

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1319
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1320
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 1322
    return v8

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 1325
    return v8

    .line 1327
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 696
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .locals 6
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v5, 0x1

    .line 244
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "job$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 245
    .local v2, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 246
    return v5

    .line 249
    .end local v2    # "job":Landroid/app/job/JobInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "asc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 250
    .local v0, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v4, p1, :cond_2

    .line 251
    return v5

    .line 254
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 3352
    const-string/jumbo v0, "expedited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    return v1

    .line 3355
    :cond_0
    const-string/jumbo v0, "ignore_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3356
    return v1

    .line 3358
    :cond_1
    const-string/jumbo v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3359
    return v1

    .line 3361
    :cond_2
    const-string/jumbo v0, "do_not_retry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3362
    return v1

    .line 3364
    :cond_3
    const-string/jumbo v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3365
    return v1

    .line 3367
    :cond_4
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3368
    return v1

    .line 3370
    :cond_5
    const-string/jumbo v0, "deletions_override"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3371
    return v1

    .line 3373
    :cond_6
    const-string/jumbo v0, "discard_deletions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3374
    return v1

    .line 3376
    :cond_7
    const-string/jumbo v0, "expected_upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3377
    return v1

    .line 3379
    :cond_8
    const-string/jumbo v0, "expected_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3380
    return v1

    .line 3382
    :cond_9
    const-string/jumbo v0, "sync_priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3383
    return v1

    .line 3385
    :cond_a
    const-string/jumbo v0, "allow_metered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3386
    return v1

    .line 3388
    :cond_b
    const-string/jumbo v0, "initialize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3389
    return v1

    .line 3391
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 3310
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sync$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3311
    .local v0, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v0, p1, :cond_0

    .line 3312
    const/4 v2, 0x1

    return v2

    .line 3315
    .end local v0    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private jitterize(JJ)J
    .locals 7
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .prologue
    .line 703
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 704
    .local v0, "random":Ljava/util/Random;
    sub-long v2, p3, p1

    .line 705
    .local v2, "spread":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 706
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_0
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, p1

    return-wide v4
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 5
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v4, 0x0

    .line 1507
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1508
    .local v0, "isLoggable":Z
    if-eqz v0, :cond_0

    .line 1509
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1519
    :cond_1
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "do_not_retry"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1520
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_5

    .line 1528
    :cond_2
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1529
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_6

    .line 1537
    :cond_3
    iget-boolean v1, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_8

    .line 1540
    if-eqz v0, :cond_4

    .line 1541
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_4
    :goto_0
    return-void

    .line 1524
    :cond_5
    if-eqz v0, :cond_4

    .line 1525
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1531
    :cond_6
    iget-object v1, p2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1532
    if-eqz v0, :cond_7

    .line 1533
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1544
    :cond_8
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1546
    if-eqz v0, :cond_9

    .line 1547
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1551
    :cond_a
    iget-boolean v1, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_c

    .line 1552
    if-eqz v0, :cond_b

    .line 1553
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_b
    const-wide/16 v2, 0x2710

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    .line 1557
    :cond_c
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1559
    if-eqz v0, :cond_d

    .line 1560
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_0

    .line 1566
    :cond_e
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1602
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1605
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 1606
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v2

    .line 1607
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 1608
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_0

    .line 1609
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v3

    iget v4, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 1601
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method private onUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1590
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1593
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1592
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 1589
    return-void
.end method

.method private onUserUnlocked(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1573
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1577
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v4, v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1578
    .local v8, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v8}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1581
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 1582
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-virtual {v0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 1583
    .local v7, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    array-length v10, v7

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v1, v7, v9

    .line 1584
    .local v1, "account":Landroid/accounts/Account;
    const/4 v3, -0x8

    .line 1585
    const/4 v6, -0x1

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    .line 1584
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 1583
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1571
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 1157
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    iget v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v2

    .line 1162
    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1166
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1167
    const/16 v2, 0x8

    .line 1166
    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1169
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1156
    return-void
.end method

.method private postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .prologue
    .line 1174
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1175
    .local v0, "payload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1172
    return-void
.end method

.method private readDataConnectionState()Z
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 393
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1061
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v2

    .line 1062
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 1063
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v3

    iget v4, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 1059
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v3

    .line 1288
    .local v3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    .line 1289
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1290
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1291
    add-int/lit8 v0, v0, 0x1

    .line 1292
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v4

    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 1293
    const-wide/16 v4, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    .line 1296
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    const-string/jumbo v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1297
    const-string/jumbo v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rescheduled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " syncs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_2
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJ)V
    .locals 55
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J

    .prologue
    .line 809
    const-string/jumbo v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v41

    .line 810
    .local v41, "isLoggable":Z
    if-nez p5, :cond_0

    .line 811
    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "extras":Landroid/os/Bundle;
    invoke-direct/range {p5 .. p5}, Landroid/os/Bundle;-><init>()V

    .line 813
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v41, :cond_1

    .line 814
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "one-time sync for: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1
    const/16 v33, 0x0

    .line 819
    .local v33, "accounts":[Landroid/accounts/AccountAndUser;
    if-eqz p1, :cond_6

    .line 820
    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_4

    .line 821
    const/4 v6, 0x1

    new-array v0, v6, [Landroid/accounts/AccountAndUser;

    move-object/from16 v33, v0

    .end local v33    # "accounts":[Landroid/accounts/AccountAndUser;
    new-instance v6, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v6, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    const/4 v7, 0x0

    aput-object v6, v33, v7

    .line 834
    :cond_2
    :goto_0
    invoke-static/range {v33 .. v33}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 835
    if-eqz v41, :cond_3

    .line 836
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "scheduleSync: no accounts configured, dropping"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_3
    return-void

    .line 823
    .restart local v33    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    const/4 v6, 0x0

    array-length v9, v7

    .end local v33    # "accounts":[Landroid/accounts/AccountAndUser;
    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v45, v7, v6

    .line 824
    .local v45, "runningAccount":Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v45

    iget-object v10, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 825
    const-class v10, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-static {v10, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Landroid/accounts/AccountAndUser;

    .line 823
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 831
    .end local v45    # "runningAccount":Landroid/accounts/AccountAndUser;
    .restart local v33    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object/from16 v33, v0

    .local v33, "accounts":[Landroid/accounts/AccountAndUser;
    goto :goto_0

    .line 841
    .end local v33    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_7
    const-string/jumbo v6, "upload"

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 842
    .local v51, "uploadOnly":Z
    const-string/jumbo v6, "force"

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 843
    .local v43, "manualSync":Z
    if-eqz v43, :cond_8

    .line 844
    const-string/jumbo v6, "ignore_backoff"

    const/4 v7, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 845
    const-string/jumbo v6, "ignore_settings"

    const/4 v7, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 848
    :cond_8
    const-string/jumbo v6, "ignore_settings"

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 851
    .local v38, "ignoreSettings":Z
    if-eqz v51, :cond_a

    .line 852
    const/16 v19, 0x1

    .line 863
    .local v19, "source":I
    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v53, v0

    move/from16 v52, v6

    :goto_3
    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_1d

    aget-object v8, v33, v52

    .line 865
    .local v8, "account":Landroid/accounts/AccountAndUser;
    if-ltz p2, :cond_d

    iget v6, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v6, :cond_d

    .line 866
    iget v6, v8, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v0, p2

    if-eq v0, v6, :cond_d

    .line 863
    :cond_9
    add-int/lit8 v6, v52, 0x1

    move/from16 v52, v6

    goto :goto_3

    .line 853
    .end local v8    # "account":Landroid/accounts/AccountAndUser;
    .end local v19    # "source":I
    :cond_a
    if-eqz v43, :cond_b

    .line 854
    const/16 v19, 0x3

    .restart local v19    # "source":I
    goto :goto_2

    .line 855
    .end local v19    # "source":I
    :cond_b
    if-nez p4, :cond_c

    .line 856
    const/16 v19, 0x2

    .restart local v19    # "source":I
    goto :goto_2

    .line 860
    .end local v19    # "source":I
    :cond_c
    const/16 v19, 0x0

    .restart local v19    # "source":I
    goto :goto_2

    .line 871
    .restart local v8    # "account":Landroid/accounts/AccountAndUser;
    :cond_d
    new-instance v50, Ljava/util/HashSet;

    invoke-direct/range {v50 .. v50}, Ljava/util/HashSet;-><init>()V

    .line 873
    .local v50, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v7, v8, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v6, v7}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v6

    .line 872
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "syncAdapter$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 874
    .local v46, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v46

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 880
    .end local v46    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_e
    if-eqz p4, :cond_f

    .line 881
    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v35

    .line 882
    .local v35, "hasSyncAdapter":Z
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashSet;->clear()V

    .line 883
    if-eqz v35, :cond_f

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v35    # "hasSyncAdapter":Z
    :cond_f
    invoke-interface/range {v50 .. v50}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "authority$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 887
    .local v11, "authority":Ljava/lang/String;
    iget-object v6, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v7, v8, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v11}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v42

    .line 889
    .local v42, "isSyncable":I
    if-eqz v42, :cond_10

    .line 894
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 895
    iget-object v7, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 894
    invoke-static {v11, v7}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 895
    iget v9, v8, Landroid/accounts/AccountAndUser;->userId:I

    .line 894
    invoke-virtual {v6, v7, v9}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v48

    .line 896
    .local v48, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v48, :cond_10

    .line 900
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move/from16 v16, v0

    .line 902
    .local v16, "owningUid":I
    const/4 v6, 0x3

    move/from16 v0, v42

    if-ne v0, v6, :cond_12

    .line 903
    if-eqz v41, :cond_11

    .line 904
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "    Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_11
    new-instance v12, Landroid/os/Bundle;

    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 908
    .local v12, "finalExtras":Landroid/os/Bundle;
    move-object/from16 v0, v48

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v44

    .line 910
    .local v44, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v0, v44

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    move-object/from16 v18, v0

    iget-object v0, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    .line 915
    new-instance v23, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;

    move-object/from16 v7, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v13, p6

    move-wide/from16 v14, p7

    invoke-direct/range {v6 .. v15}, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJ)V

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 913
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    move/from16 v3, p2

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto/16 :goto_5

    .line 926
    .end local v12    # "finalExtras":Landroid/os/Bundle;
    .end local v44    # "packageName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v48

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v22

    .line 927
    .local v22, "allowParallelSyncs":Z
    move-object/from16 v0, v48

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v40

    .line 928
    .local v40, "isAlwaysSyncable":Z
    if-gez v42, :cond_13

    if-eqz v40, :cond_13

    .line 929
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 930
    iget-object v7, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v9, v8, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v10, 0x1

    .line 929
    invoke-virtual {v6, v7, v9, v11, v10}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    .line 931
    const/16 v42, 0x1

    .line 934
    :cond_13
    const/4 v6, -0x2

    move/from16 v0, p6

    if-eq v0, v6, :cond_14

    move/from16 v0, p6

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    .line 938
    :cond_14
    move-object/from16 v0, v48

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v6

    if-nez v6, :cond_15

    if-nez v51, :cond_10

    .line 943
    :cond_15
    if-ltz v42, :cond_16

    if-nez v38, :cond_16

    .line 945
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v7, v8, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 946
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 947
    iget v9, v8, Landroid/accounts/AccountAndUser;->userId:I

    .line 946
    invoke-virtual {v6, v7, v9, v11}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v49

    .line 948
    .local v49, "syncAllowed":Z
    :goto_6
    if-nez v49, :cond_18

    .line 949
    if-eqz v41, :cond_10

    .line 950
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scheduleSync: sync of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 951
    const-string/jumbo v9, " is not allowed, dropping request"

    .line 950
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 943
    .end local v49    # "syncAllowed":Z
    :cond_16
    const/16 v49, 0x1

    goto :goto_6

    .line 945
    :cond_17
    const/16 v49, 0x0

    goto :goto_6

    .line 956
    .restart local v49    # "syncAllowed":Z
    :cond_18
    new-instance v39, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 957
    iget-object v6, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v7, v8, Landroid/accounts/AccountAndUser;->userId:I

    .line 956
    move-object/from16 v0, v39

    invoke-direct {v0, v6, v11, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 959
    .local v39, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v36

    .line 961
    .local v36, "delayUntil":J
    move-object/from16 v0, v48

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 963
    .local v17, "owningPackage":Ljava/lang/String;
    const/4 v6, -0x1

    move/from16 v0, v42

    if-ne v0, v6, :cond_1a

    .line 965
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 966
    .local v21, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v6, "initialize"

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 967
    if-eqz v41, :cond_19

    .line 968
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule initialisation Sync:, delay until "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v36

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 970
    const-string/jumbo v9, ", run by "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 970
    const/4 v9, 0x0

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 971
    const-string/jumbo v9, ", flexMillis "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 971
    const/4 v9, 0x0

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 972
    const-string/jumbo v9, ", source "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 973
    const-string/jumbo v9, ", account "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 974
    const-string/jumbo v9, ", authority "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 975
    const-string/jumbo v9, ", extras "

    .line 968
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_19
    new-instance v13, Lcom/android/server/content/SyncOperation;

    iget-object v14, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v15, v8, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v18, p3

    move-object/from16 v20, v11

    invoke-direct/range {v13 .. v22}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 977
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto/16 :goto_5

    .line 983
    .end local v21    # "newExtras":Landroid/os/Bundle;
    :cond_1a
    const/4 v6, -0x2

    move/from16 v0, p6

    if-eq v0, v6, :cond_1b

    .line 984
    move/from16 v0, p6

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    .line 985
    :cond_1b
    if-eqz v41, :cond_1c

    .line 986
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scheduleSync: delay until "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v36

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 988
    const-string/jumbo v9, ", source "

    .line 986
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 989
    const-string/jumbo v9, ", account "

    .line 986
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 990
    const-string/jumbo v9, ", authority "

    .line 986
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 991
    const-string/jumbo v9, ", extras "

    .line 986
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_1c
    new-instance v23, Lcom/android/server/content/SyncOperation;

    iget-object v0, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v24, v0

    iget v0, v8, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v25, v0

    move/from16 v26, v16

    move-object/from16 v27, v17

    move/from16 v28, p3

    move/from16 v29, v19

    move-object/from16 v30, v11

    move-object/from16 v31, p5

    move/from16 v32, v22

    invoke-direct/range {v23 .. v32}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto/16 :goto_5

    .line 808
    .end local v8    # "account":Landroid/accounts/AccountAndUser;
    .end local v11    # "authority":Ljava/lang/String;
    .end local v16    # "owningUid":I
    .end local v17    # "owningPackage":Ljava/lang/String;
    .end local v22    # "allowParallelSyncs":Z
    .end local v34    # "authority$iterator":Ljava/util/Iterator;
    .end local v36    # "delayUntil":J
    .end local v39    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v40    # "isAlwaysSyncable":Z
    .end local v42    # "isSyncable":I
    .end local v47    # "syncAdapter$iterator":Ljava/util/Iterator;
    .end local v48    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v49    # "syncAllowed":Z
    .end local v50    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1d
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 1344
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1343
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 30
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    .prologue
    .line 1348
    const-string/jumbo v24, "SyncManager"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    .line 1349
    .local v15, "isLoggable":Z
    if-nez p1, :cond_0

    .line 1350
    const-string/jumbo v24, "SyncManager"

    const-string/jumbo v25, "Can\'t schedule null sync operation."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-void

    .line 1353
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v24

    if-nez v24, :cond_3

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v7

    .line 1355
    .local v7, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    .line 1356
    const-string/jumbo v24, "SyncManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Couldn\'t find backoff values for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v7, Landroid/util/Pair;

    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v24, -0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1358
    const-wide/16 v26, -0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1357
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1360
    .restart local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1361
    .local v18, "now":J
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-nez v24, :cond_7

    const-wide/16 v8, 0x0

    .line 1363
    .local v8, "backoffDelay":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v10

    .line 1364
    .local v10, "delayUntil":J
    cmp-long v24, v10, v18

    if-lez v24, :cond_8

    sub-long v12, v10, v18

    .line 1365
    .local v12, "delayUntilDelay":J
    :goto_1
    if-eqz v15, :cond_2

    .line 1366
    const-string/jumbo v24, "SyncManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "backoff delay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1367
    const-string/jumbo v26, " delayUntil delay:"

    .line 1366
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_2
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, p2

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 1372
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v8    # "backoffDelay":J
    .end local v10    # "delayUntil":J
    .end local v12    # "delayUntilDelay":J
    .end local v18    # "now":J
    :cond_3
    const-wide/16 v24, 0x0

    cmp-long v24, p2, v24

    if-gez v24, :cond_4

    .line 1373
    const-wide/16 p2, 0x0

    .line 1377
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "asc$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1380
    .local v4, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1381
    if-eqz v15, :cond_6

    .line 1382
    const-string/jumbo v24, "SyncManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Duplicate sync is already running. Not scheduling "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_6
    return-void

    .line 1362
    .end local v4    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v5    # "asc$iterator":Ljava/util/Iterator;
    .restart local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v18    # "now":J
    :cond_7
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v8, v24, v18

    .restart local v8    # "backoffDelay":J
    goto/16 :goto_0

    .line 1364
    .restart local v10    # "delayUntil":J
    :cond_8
    const-wide/16 v12, 0x0

    .restart local v12    # "delayUntilDelay":J
    goto/16 :goto_1

    .line 1389
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v8    # "backoffDelay":J
    .end local v10    # "delayUntil":J
    .end local v12    # "delayUntilDelay":J
    .end local v18    # "now":J
    .restart local v5    # "asc$iterator":Ljava/util/Iterator;
    :cond_9
    const/4 v14, 0x0

    .line 1390
    .local v14, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1391
    .restart local v18    # "now":J
    add-long v24, v18, p2

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1392
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v22

    .line 1393
    .local v22, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v21, p1

    .line 1394
    .local v21, "opWithLeastExpectedRuntime":Lcom/android/server/content/SyncOperation;
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "op$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/content/SyncOperation;

    .line 1395
    .local v17, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    move/from16 v24, v0

    if-nez v24, :cond_a

    .line 1398
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1399
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-lez v24, :cond_b

    .line 1400
    move-object/from16 v21, v17

    .line 1402
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1405
    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    :cond_c
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v14, v0, :cond_d

    .line 1406
    const-string/jumbo v24, "SyncManager"

    const-string/jumbo v25, "FATAL ERROR! File a bug if you see this."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_e
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/content/SyncOperation;

    .line 1409
    .restart local v17    # "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    .line 1412
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1413
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 1414
    if-eqz v15, :cond_f

    .line 1415
    const-string/jumbo v24, "SyncManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cancelling duplicate sync "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v24

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_3

    .line 1421
    .end local v17    # "op":Lcom/android/server/content/SyncOperation;
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_12

    .line 1423
    if-eqz v15, :cond_11

    .line 1424
    const-string/jumbo v24, "SyncManager"

    const-string/jumbo v25, "Not scheduling because a duplicate exists."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_11
    return-void

    .line 1431
    .end local v5    # "asc$iterator":Ljava/util/Iterator;
    .end local v14    # "duplicatesCount":I
    .end local v18    # "now":J
    .end local v20    # "op$iterator":Ljava/util/Iterator;
    .end local v21    # "opWithLeastExpectedRuntime":Lcom/android/server/content/SyncOperation;
    .end local v22    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1432
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1435
    :cond_13
    if-eqz v15, :cond_14

    .line 1436
    const-string/jumbo v24, "SyncManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "scheduling sync operation "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v23

    .line 1441
    .local v23, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 1442
    const/16 v16, 0x2

    .line 1444
    .local v16, "networkType":I
    :goto_4
    new-instance v24, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    move/from16 v25, v0

    .line 1445
    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-class v28, Lcom/android/server/content/SyncJobService;

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1444
    invoke-direct/range {v24 .. v26}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v25

    .line 1444
    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v24

    .line 1448
    const/16 v25, 0x1

    .line 1444
    invoke-virtual/range {v24 .. v25}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 1451
    .local v6, "b":Landroid/app/job/JobInfo$Builder;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 1452
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 1460
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "require_charging"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1461
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1464
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v24

    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1465
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v28

    .line 1464
    invoke-virtual/range {v24 .. v28}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 1347
    return-void

    .line 1442
    .end local v6    # "b":Landroid/app/job/JobInfo$Builder;
    .end local v16    # "networkType":I
    :cond_16
    const/16 v16, 0x1

    .restart local v16    # "networkType":I
    goto/16 :goto_4

    .line 1454
    .restart local v6    # "b":Landroid/app/job/JobInfo$Builder;
    :cond_17
    const-wide/16 v24, 0x0

    cmp-long v24, p2, v24

    if-lez v24, :cond_18

    .line 1455
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1457
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_5
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1144
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1146
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1147
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1148
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1149
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 1136
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1138
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1139
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1140
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v2

    .line 748
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 749
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 751
    return-void

    .line 754
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 746
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .prologue
    .line 1302
    const-wide/16 v6, 0x3e8

    mul-long v2, p2, v6

    .line 1303
    .local v2, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1305
    .local v0, "absoluteNow":J
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v2, v0

    add-long v4, v6, v8

    .line 1310
    .local v4, "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1311
    const-string/jumbo v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1312
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Delay Until time set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1301
    return-void

    .line 1308
    .end local v4    # "newDelayUntilTime":J
    :cond_1
    const-wide/16 v4, 0x0

    .restart local v4    # "newDelayUntilTime":J
    goto :goto_0
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3325
    if-ne p0, p1, :cond_0

    .line 3326
    return v7

    .line 3329
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 3330
    return v6

    .line 3332
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    move-object v0, p0

    .line 3333
    .local v0, "bigger":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-le v4, v5, :cond_5

    move-object v3, p1

    .line 3334
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3335
    .local v1, "key":Ljava/lang/String;
    if-nez p2, :cond_3

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3338
    :cond_3
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3339
    return v6

    .line 3332
    .end local v0    # "bigger":Landroid/os/Bundle;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "smaller":Landroid/os/Bundle;
    :cond_4
    move-object v0, p1

    .restart local v0    # "bigger":Landroid/os/Bundle;
    goto :goto_0

    .line 3333
    :cond_5
    move-object v3, p0

    .restart local v3    # "smaller":Landroid/os/Bundle;
    goto :goto_1

    .line 3341
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3342
    return v6

    .line 3345
    .end local v1    # "key":Ljava/lang/String;
    :cond_7
    return v7
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 348
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    .line 467
    return-void

    .line 469
    :cond_0
    :try_start_1
    const-string/jumbo v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v5, "initializing JobScheduler object."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 473
    const-string/jumbo v5, "jobscheduler"

    .line 472
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 474
    const-class v4, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 476
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v4}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v3

    .line 477
    .local v3, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "job$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 478
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 479
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_2

    .line 480
    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_2

    .line 483
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "job":Landroid/app/job/JobInfo;
    .end local v1    # "job$iterator":Ljava/util/Iterator;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 487
    .restart local v1    # "job$iterator":Ljava/util/Iterator;
    .restart local v3    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 465
    return-void
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .locals 17

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v10}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v10

    if-nez v10, :cond_0

    .line 673
    return-void

    .line 675
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 676
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 677
    .local v6, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 678
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 679
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 681
    .local v8, "userId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v10, v8}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v10

    .line 680
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 682
    .local v4, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v10, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 684
    iget-object v10, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v10, Landroid/content/SyncAdapterType;

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 683
    invoke-virtual {v11, v10, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_1

    aget-object v1, v11, v10

    .line 685
    .local v1, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v8}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 687
    const-string/jumbo v14, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v15, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v16, 0x1

    .line 686
    move/from16 v0, v16

    invoke-virtual {v13, v1, v14, v15, v0}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 683
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 677
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    .end local v8    # "userId":I
    :cond_4
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_content_SyncManager_lambda$2(Landroid/accounts/Account;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 587
    const/4 v3, -0x2

    .line 588
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 586
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 0
    :cond_0
    return-void
.end method

.method synthetic -com_android_server_content_SyncManager_lambda$3(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJLandroid/os/Bundle;)V
    .locals 13
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "finalExtras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "result"    # Landroid/os/Bundle;

    .prologue
    .line 916
    if-eqz p9, :cond_0

    .line 917
    const-string/jumbo v2, "booleanResult"

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 916
    if-eqz v2, :cond_0

    .line 918
    iget-object v4, p1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object v3, p0

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJ)V

    .line 0
    :cond_0
    return-void
.end method

.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1337
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 1336
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 1491
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v8

    .line 1492
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 1493
    .local v6, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 1493
    if-eqz v0, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 1498
    .end local v6    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1501
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1490
    :cond_2
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const-wide/16 v2, -0x1

    .line 1474
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v8

    .line 1475
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncOperation;

    .line 1476
    .local v6, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_0

    .line 1481
    .end local v6    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1473
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "checkAccountAccess"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1010
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v3

    .line 1011
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 1012
    return v9

    .line 1014
    :cond_0
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v5

    .line 1016
    .local v5, "type":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v6, v5, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 1017
    .local v4, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v4, :cond_1

    .line 1018
    return v9

    .line 1020
    :cond_1
    iget v2, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1021
    .local v2, "owningUid":I
    iget-object v6, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "owningPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v2, v1}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v6

    .line 1024
    const/4 v7, 0x2

    .line 1023
    if-ne v6, v7, :cond_2

    .line 1025
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not scheduling job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1026
    iget-object v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 1025
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1027
    const-string/jumbo v8, " -- package not allowed to start"

    .line 1025
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    return v9

    .line 1030
    :catch_0
    move-exception v0

    .line 1033
    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1039
    :cond_3
    return v3

    .line 1034
    :cond_4
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " denied for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1035
    const-string/jumbo v8, " in UID "

    .line 1034
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1035
    iget v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1034
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v6, 0x3

    return v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1758
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1759
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;)V

    .line 1760
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;)V

    .line 1761
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    .line 1762
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1763
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1757
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1773
    const-string/jumbo v4, "Pending Syncs:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v3

    .line 1775
    .local v3, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    .line 1776
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1777
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_0

    .line 1778
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1772
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1787
    const-string/jumbo v4, "Periodic Syncs:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v3

    .line 1789
    .local v3, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v0, 0x0

    .line 1790
    .local v0, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1791
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    .line 1792
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1796
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1786
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1956
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 1955
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 36
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1801
    const-string/jumbo v27, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1802
    const-string/jumbo v27, "auto sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v26

    .line 1804
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v26, :cond_1

    .line 1805
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 1806
    .local v24, "user":Landroid/content/pm/UserInfo;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "u"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v28

    .line 1806
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1807
    const-string/jumbo v28, " "

    .line 1806
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1809
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1811
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v27, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1812
    const-string/jumbo v27, "device idle: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1813
    const-string/jumbo v27, "reported active: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1815
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 1817
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    const-string/jumbo v27, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    sget-object v27, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v27

    if-eq v5, v0, :cond_2

    .line 1819
    array-length v0, v5

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1823
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1824
    .local v12, "now":J
    const-string/jumbo v27, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1825
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    const-string/jumbo v27, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v27, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v28, 0x3e8

    div-long v28, v12, v28

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v27, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    const-string/jumbo v27, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    .line 1830
    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    const-string/jumbo v27, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    const-string/jumbo v27, ""

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v27, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1837
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Active Syncs: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1839
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "activeSyncContext$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1840
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    const-wide/16 v30, 0x3e8

    div-long v10, v28, v30

    .line 1841
    .local v10, "durationInSeconds":J
    const-string/jumbo v27, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1843
    const-string/jumbo v27, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1844
    iget-object v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 1821
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "durationInSeconds":J
    .end local v12    # "now":J
    :cond_2
    const-string/jumbo v27, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1833
    .restart local v12    # "now":J
    :cond_3
    const-string/jumbo v27, "not "

    goto/16 :goto_2

    .line 1849
    .restart local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1850
    const-string/jumbo v27, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    const/16 v27, 0x0

    array-length v0, v5

    move/from16 v29, v0

    move/from16 v28, v27

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    aget-object v4, v5, v28

    .line 1852
    .local v4, "account":Landroid/accounts/AccountAndUser;
    const-string/jumbo v27, "Account %s u%d %s\n"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 1853
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v31, v30, v32

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x1

    aput-object v31, v30, v32

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aput-object v31, v30, v32

    .line 1852
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1855
    const-string/jumbo v27, "======================================================================="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    new-instance v23, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v27, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 1857
    .local v23, "table":Lcom/android/server/content/SyncManager$PrintTable;
    const/16 v27, 0xc

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 1858
    const-string/jumbo v30, "Authority"

    const/16 v31, 0x0

    aput-object v30, v27, v31

    .line 1859
    const-string/jumbo v30, "Syncable"

    const/16 v31, 0x1

    aput-object v30, v27, v31

    .line 1860
    const-string/jumbo v30, "Enabled"

    const/16 v31, 0x2

    aput-object v30, v27, v31

    .line 1861
    const-string/jumbo v30, "Delay"

    const/16 v31, 0x3

    aput-object v30, v27, v31

    .line 1862
    const-string/jumbo v30, "Loc"

    const/16 v31, 0x4

    aput-object v30, v27, v31

    .line 1863
    const-string/jumbo v30, "Poll"

    const/16 v31, 0x5

    aput-object v30, v27, v31

    .line 1864
    const-string/jumbo v30, "Per"

    const/16 v31, 0x6

    aput-object v30, v27, v31

    .line 1865
    const-string/jumbo v30, "Serv"

    const/16 v31, 0x7

    aput-object v30, v27, v31

    .line 1866
    const-string/jumbo v30, "User"

    const/16 v31, 0x8

    aput-object v30, v27, v31

    .line 1867
    const-string/jumbo v30, "Tot"

    const/16 v31, 0x9

    aput-object v30, v27, v31

    .line 1868
    const-string/jumbo v30, "Time"

    const/16 v31, 0xa

    aput-object v30, v27, v31

    .line 1869
    const-string/jumbo v30, "Last Sync"

    const/16 v31, 0xb

    aput-object v30, v27, v31

    .line 1857
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1873
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 1874
    .local v18, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v27, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1876
    new-instance v27, Lcom/android/server/content/SyncManager$14;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 1875
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1883
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "syncAdapterType$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1884
    .local v20, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1887
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v14

    .line 1889
    .local v14, "row":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v30, v0

    .line 1890
    new-instance v31, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1891
    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    .line 1892
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1893
    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v33, v0

    .line 1890
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1889
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v22

    .line 1894
    .local v22, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1895
    .local v17, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/SyncStatusInfo;

    .line 1896
    .local v19, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1897
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v30, 0x32

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    .line 1898
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x32

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1900
    :cond_6
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    aput-object v8, v27, v30

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x1

    aput-object v30, v27, v31

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const/16 v31, 0x2

    aput-object v30, v27, v31

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1901
    const/16 v27, 0x7

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 1902
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    .line 1903
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x1

    aput-object v30, v27, v31

    .line 1904
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x2

    aput-object v30, v27, v31

    .line 1905
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x3

    aput-object v30, v27, v31

    .line 1906
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x4

    aput-object v30, v27, v31

    .line 1907
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x5

    aput-object v30, v27, v31

    .line 1908
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x6

    aput-object v30, v27, v31

    .line 1901
    const/16 v30, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1910
    move v15, v14

    .line 1911
    .local v15, "row1":I
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v30, v0

    cmp-long v27, v30, v12

    if-lez v27, :cond_7

    .line 1912
    add-int/lit8 v15, v14, 0x1

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "D: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v12

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1913
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v30, v0

    cmp-long v27, v30, v12

    if-lez v27, :cond_7

    .line 1914
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "row1":I
    .local v16, "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "B: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v12

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1915
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xc

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1919
    :cond_7
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v27, v30, v32

    if-eqz v27, :cond_8

    .line 1920
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1921
    const-string/jumbo v31, " "

    .line 1920
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1921
    const-string/jumbo v31, "SUCCESS"

    .line 1920
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1922
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1924
    :cond_8
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v27, v30, v32

    if-eqz v27, :cond_5

    .line 1925
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1926
    const-string/jumbo v31, " "

    .line 1925
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 1926
    const-string/jumbo v31, "FAILURE"

    .line 1925
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1927
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "row1":I
    .restart local v15    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 1929
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "row1":I
    .restart local v16    # "row1":I
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v30, v27, v31

    const/16 v30, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1932
    .end local v8    # "authority":Ljava/lang/String;
    .end local v14    # "row":I
    .end local v16    # "row1":I
    .end local v17    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "status":Landroid/content/SyncStatusInfo;
    .end local v20    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v22    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 1851
    add-int/lit8 v27, v28, 0x1

    move/from16 v28, v27

    goto/16 :goto_4

    .line 1800
    .end local v4    # "account":Landroid/accounts/AccountAndUser;
    .end local v18    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v21    # "syncAdapterType$iterator":Ljava/util/Iterator;
    .end local v23    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_a
    return-void
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 14
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    .line 1094
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v10

    .line 1095
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v11, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 1098
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v0, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1100
    iget-object v3, v8, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-wide v4, v8, Lcom/android/server/content/SyncOperation;->periodMillis:J

    div-long/2addr v4, v12

    iget-wide v6, v8, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long/2addr v6, v12

    .line 1099
    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-object v11
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1120
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    .line 1121
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 1122
    .local v4, "types":[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 1123
    .local v0, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1124
    .local v1, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    .end local v1    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1074
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1075
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;

    .prologue
    .line 1112
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1113
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1115
    sget-wide v8, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, -0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1114
    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJ)V

    .line 1111
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 10
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I

    .prologue
    .line 800
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    .line 799
    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJ)V

    .line 798
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1084
    new-instance v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1086
    .local v1, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1083
    return-void
.end method

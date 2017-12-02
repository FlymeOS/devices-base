.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$1;,
        Lcom/android/server/notification/NotificationManagerService$2;,
        Lcom/android/server/notification/NotificationManagerService$3;,
        Lcom/android/server/notification/NotificationManagerService$4;,
        Lcom/android/server/notification/NotificationManagerService$5;,
        Lcom/android/server/notification/NotificationManagerService$6;,
        Lcom/android/server/notification/NotificationManagerService$Archive;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationRankers;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 10.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mLastOverRateLogTime:J

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxPackageEnqueueRate:F

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankerServicePackageName:Ljava/lang/String;

.field private mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemNotificationSound:Ljava/lang/String;

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/notification/NotificationManagerService;)Landroid/view/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/notification/NotificationManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic -wrap15(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17()V
    .locals 0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingSort()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic -wrap3(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 178
    const-string/jumbo v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 180
    const-string/jumbo v0, "debug.child_notifs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 179
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 303
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 304
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 176
    return-void

    .line 199
    nop

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 894
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 236
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    .line 239
    const/16 v2, 0xa

    .line 238
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 258
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 262
    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 266
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 274
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 277
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 307
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 486
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 677
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 760
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 871
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    .line 1268
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 2485
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 893
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1225
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1219
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    .line 1206
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1207
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1210
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 1211
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1214
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 1215
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1205
    :cond_2
    return-void
.end method

.method private applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    const/4 v4, 0x0

    .line 2212
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V

    .line 2213
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 2214
    .local v1, "n":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    .line 2215
    return-void

    .line 2217
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2218
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    .line 2220
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2221
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2222
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    .line 2223
    const-string/jumbo v3, "group_key_override"

    .line 2222
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2224
    .local v0, "autoGroupKey":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2225
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 2229
    :goto_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v0}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 2211
    .end local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_2
    return-void

    .line 2227
    .restart local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v2, 0x0

    .line 3163
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 3164
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3165
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3166
    const/4 v1, 0x1

    .line 3167
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3168
    const/4 v2, 0x2

    .line 3165
    :cond_0
    or-int v0, v1, v2

    .line 3169
    .local v0, "suppressed":I
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 3162
    .end local v0    # "suppressed":I
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 3166
    goto :goto_0
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    .line 2977
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    .line 2978
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2981
    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2983
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2984
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 2983
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 2980
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 2986
    :cond_2
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2987
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0

    .line 2989
    :cond_3
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private calculateHints()I
    .locals 5

    .prologue
    .line 1229
    const/4 v1, 0x0

    .line 1230
    .local v1, "hints":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1231
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1232
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1234
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1235
    or-int/2addr v1, v0

    .line 1230
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1239
    .end local v0    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return v1
.end method

.method private calculateSuppressedEffects()J
    .locals 6

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1244
    .local v0, "hints":I
    const-wide/16 v2, 0x0

    .line 1246
    .local v2, "suppressedEffects":J
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1247
    const-wide/16 v2, 0x3

    .line 1250
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1251
    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    .line 1254
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 1255
    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 1258
    :cond_2
    return-wide v2
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 3704
    packed-switch p0, :pswitch_data_0

    .line 3708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3705
    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    return-object v0

    .line 3706
    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    return-object v0

    .line 3707
    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 3704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    .prologue
    .line 3561
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v17

    .line 3562
    .local v17, "n":Landroid/app/Notification;
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3563
    return-void

    .line 3566
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3567
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    .line 3569
    .local v8, "userId":I
    if-nez v5, :cond_2

    .line 3570
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No package for group summary: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    :cond_1
    return-void

    .line 3574
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3575
    .local v13, "N":I
    add-int/lit8 v16, v13, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_5

    .line 3576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 3577
    .local v14, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3578
    .local v15, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3575
    :cond_3
    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 3579
    :cond_4
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3578
    if-eqz v3, :cond_3

    .line 3580
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_3

    .line 3581
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 3582
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    move-object/from16 v12, p4

    .line 3581
    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3584
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_1

    .line 3560
    .end local v14    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 3302
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3305
    if-eqz p2, :cond_0

    .line 3306
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_0

    .line 3308
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3318
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 3319
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 3320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 3323
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 3326
    .local v2, "canceledKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3327
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 3328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3330
    .local v8, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 3331
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_2

    .line 3332
    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3336
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3341
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    .end local v8    # "identity":J
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3342
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 3343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3345
    .restart local v8    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3348
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3353
    .end local v8    # "identity":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3357
    packed-switch p3, :pswitch_data_0

    .line 3370
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 3372
    .local v5, "groupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3373
    .local v6, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 3377
    .local v12, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3378
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3382
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 3384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3386
    .local v10, "now":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v15

    .line 3385
    move/from16 v0, p3

    invoke-static {v2, v0, v13, v14, v15}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    .line 3299
    return-void

    .line 3309
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v6    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v10    # "now":J
    .end local v12    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 3312
    .local v4, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "canceled PendingIntent for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3334
    .end local v4    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catch_1
    move-exception v3

    .line 3336
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 3335
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v13

    .line 3336
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    throw v13

    .line 3347
    :catchall_1
    move-exception v13

    .line 3348
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    throw v13

    .line 3362
    .end local v8    # "identity":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3366
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_2

    .line 3357
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3689
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 3690
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 3689
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3691
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 3692
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3698
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 3699
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3694
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3695
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3696
    const-string/jumbo v5, " which is owned by uid "

    .line 3695
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3696
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3695
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3686
    :cond_1
    return-void
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 3673
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3674
    return-void

    .line 3676
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3680
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3681
    return-void

    .line 3683
    :cond_0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 3679
    return-void
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 3277
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private clearLightsLocked()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 674
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 671
    return-void
.end method

.method private clearSoundLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 648
    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 651
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 652
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_0

    .line 653
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 657
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 656
    throw v4
.end method

.method private clearVibrateLocked()V
    .locals 3

    .prologue
    .line 662
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    return-void

    .line 666
    :catchall_0
    move-exception v2

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    throw v2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 2325
    const-string/jumbo v0, "booleanState"

    return-object v0

    .line 2327
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2328
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 2330
    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2333
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 2331
    :cond_3
    const-string/jumbo v0, "callState"

    return-object v0
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2337
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2339
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "service"

    const-string/jumbo v3, "Notification Manager"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2340
    const-string/jumbo v2, "bans"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2341
    const-string/jumbo v2, "ranking"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2342
    const-string/jumbo v2, "stats"

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2336
    return-void

    .line 2343
    :catch_0
    move-exception v1

    .line 2344
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 882
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 883
    return-object p3

    .line 885
    :cond_0
    array-length v4, v0

    if-le v4, p2, :cond_1

    move v2, p2

    .line 886
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [J

    .line 887
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 888
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 885
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    goto :goto_0

    .line 890
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_2
    return-object v3
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v3, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1175
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1177
    .local v4, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1178
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1174
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1182
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return-object v3
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 2752
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    .line 2753
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 2754
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2760
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    .line 2761
    .local v8, "group":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v9

    .line 2763
    .local v9, "isSummary":Z
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 2764
    :goto_1
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    .line 2765
    :goto_2
    if-eqz p2, :cond_7

    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    .line 2767
    .local v12, "oldIsSummary":Z
    :goto_3
    if-eqz v12, :cond_1

    .line 2768
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 2769
    .local v15, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    if-eq v15, v0, :cond_1

    .line 2771
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 2772
    .local v14, "removedKey":Ljava/lang/String;
    :goto_4
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2773
    const-string/jumbo v3, ", removed="

    .line 2772
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    if-eqz v9, :cond_2

    .line 2777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v9, :cond_9

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2751
    :cond_3
    :goto_5
    return-void

    .line 2757
    .end local v8    # "group":Ljava/lang/String;
    .end local v9    # "isSummary":Z
    .end local v12    # "oldIsSummary":Z
    :cond_4
    iget v1, v10, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v10, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2763
    .restart local v8    # "group":Ljava/lang/String;
    .restart local v9    # "isSummary":Z
    :cond_5
    const/4 v13, 0x0

    .local v13, "oldN":Landroid/app/Notification;
    goto :goto_1

    .line 2764
    .end local v13    # "oldN":Landroid/app/Notification;
    :cond_6
    const/4 v11, 0x0

    .local v11, "oldGroup":Ljava/lang/String;
    goto :goto_2

    .line 2765
    .end local v11    # "oldGroup":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 2771
    .restart local v12    # "oldIsSummary":Z
    .restart local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    const-string/jumbo v14, "<null>"

    .restart local v14    # "removedKey":Ljava/lang/String;
    goto :goto_4

    .line 2785
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    const/4 v5, 0x0

    .line 2786
    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2785
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    goto :goto_5
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .prologue
    .line 3205
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3204
    return-void

    .line 3205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 3211
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3210
    return-void

    .line 3211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3097
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_0

    return-void

    .line 3098
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 3099
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 3101
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 3102
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_1

    monitor-exit v10

    .line 3104
    return-void

    .line 3106
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 3107
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 3108
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 3109
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3110
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3111
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3112
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 3113
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 3114
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 3115
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_2

    if-eq v4, v3, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 3117
    .local v0, "changed":Z
    :goto_0
    if-eqz v4, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    :goto_1
    monitor-exit v10

    .line 3121
    if-eqz v0, :cond_4

    .line 3122
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    .line 3096
    :cond_4
    return-void

    .line 3116
    .end local v0    # "changed":Z
    :cond_5
    if-eq v8, v7, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 3118
    :cond_7
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3101
    .end local v0    # "changed":Z
    .end local v1    # "indexAfter":I
    .end local v2    # "indexBefore":I
    .end local v3    # "interceptAfter":Z
    .end local v4    # "interceptBefore":Z
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "visibilityAfter":I
    .end local v8    # "visibilityBefore":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private handleRankingSort()V
    .locals 10

    .prologue
    .line 3127
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 3128
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3129
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3130
    .local v4, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3131
    .local v1, "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v6, v0, [I

    .line 3132
    .local v6, "visibilities":[I
    new-array v3, v0, [I

    .line 3133
    .local v3, "importances":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3134
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3135
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3136
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    aput v7, v6, v2

    .line 3138
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    aput v7, v3, v2

    .line 3139
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v7, v5}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 3133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3141
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3142
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3143
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3144
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3145
    aget v7, v6, v2

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    if-eq v7, v9, :cond_2

    .line 3148
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 3149
    return-void

    .line 3146
    :cond_2
    :try_start_1
    aget v7, v3, v2

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-ne v7, v9, :cond_1

    .line 3147
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 3142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v8

    .line 3126
    return-void

    .line 3127
    .end local v0    # "N":I
    .end local v1    # "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "importances":[I
    .end local v4    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "visibilities":[I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private handleSavePolicyFile()V
    .locals 5

    .prologue
    .line 397
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "handleSavePolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 408
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    .line 409
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 415
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 396
    return-void

    .line 402
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 404
    return-void

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v4, "Failed to save policy file, restoring backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    .prologue
    .line 3186
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3185
    return-void

    .line 3186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3053
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timeout pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3055
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 3056
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 3057
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 3051
    return-void

    .line 3054
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 3669
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 3780
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3782
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3785
    :catch_0
    move-exception v0

    .line 3787
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return v3

    .line 3783
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3784
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Could not talk to package manager service"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3664
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3665
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3772
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3773
    const/4 v0, 0x0

    return v0

    .line 3776
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3720
    const/16 v2, 0x20

    .line 3713
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3712
    return-void
.end method

.method private loadPolicyFile()V
    .locals 8

    .prologue
    .line 370
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v6, "loadPolicyFile"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v6

    .line 373
    const/4 v4, 0x0

    .line 375
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 376
    .local v4, "infile":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "infile":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit v6

    .line 369
    return-void

    .line 383
    :catch_0
    move-exception v3

    .line 384
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to parse notification policy"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 371
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 381
    :catch_1
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to parse notification policy"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 386
    :try_start_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 379
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v7, "Unable to read notification policy"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    :try_start_7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 377
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 385
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    .line 386
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 385
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 19
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3731
    .local v11, "N":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 3732
    .local v16, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 3733
    .local v14, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 3734
    .local v13, "importance":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3735
    .local v9, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3736
    .local v5, "visibilityOverrides":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3737
    .local v6, "suppressedVisualEffects":Landroid/os/Bundle;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3738
    .local v8, "explanation":Landroid/os/Bundle;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_4

    .line 3739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 3740
    .local v17, "record":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3738
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3743
    :cond_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 3744
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3745
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3746
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3747
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v15, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3749
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3750
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3753
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v2

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3754
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v2

    .line 3755
    const/16 v18, -0x3e8

    .line 3754
    move/from16 v0, v18

    if-eq v2, v0, :cond_3

    .line 3756
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v2

    invoke-virtual {v5, v15, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3758
    :cond_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3760
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3761
    .local v10, "M":I
    new-array v2, v10, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3762
    .local v3, "keysAr":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 3763
    .local v4, "interceptedKeysAr":[Ljava/lang/String;
    new-array v7, v10, [I

    .line 3764
    .local v7, "importanceAr":[I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_5

    .line 3765
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v7, v12

    .line 3764
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3767
    :cond_5
    new-instance v2, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v2
.end method

.method private maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V
    .locals 29
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    .line 2256
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2257
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2258
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "autogroup_needed"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2260
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "group_key_override"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2261
    .local v17, "newAutoBundleKey":Ljava/lang/String;
    const/16 v27, -0x1

    .line 2262
    .local v27, "userId":I
    const/16 v25, 0x0

    .line 2263
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2265
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    .local v23, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v23, :cond_0

    monitor-exit v28

    .line 2269
    return-void

    .line 2271
    :cond_0
    :try_start_1
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    .line 2272
    .local v20, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v27

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArrayMap;

    .line 2274
    .local v24, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v24, :cond_1

    .line 2275
    new-instance v24, Landroid/util/ArrayMap;

    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    .line 2277
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2279
    if-eqz v17, :cond_3

    .line 2282
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2283
    const-string/jumbo v5, "android.appInfo"

    .line 2282
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    .line 2284
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 2285
    .local v22, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "android.appInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2287
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2288
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 2287
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2289
    const/4 v5, 0x1

    .line 2287
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2291
    const/16 v5, 0x400

    const/4 v7, 0x1

    .line 2287
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2292
    const/16 v5, 0x200

    const/4 v7, 0x1

    .line 2287
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2293
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    .line 2287
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2294
    const/4 v5, 0x1

    .line 2287
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 2296
    .local v15, "summaryNotification":Landroid/app/Notification;
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2298
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 2297
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2299
    .local v6, "appIntent":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2302
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 2301
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2300
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2305
    :cond_2
    new-instance v8, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2306
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v10

    .line 2307
    const-string/jumbo v12, "group_key_override"

    .line 2308
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v13

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v14

    .line 2309
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    .line 2311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2307
    const v11, 0x7fffffff

    .line 2305
    invoke-direct/range {v8 .. v19}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 2312
    .local v8, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v26, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v8}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2313
    .local v26, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-result-object v4

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v26

    .end local v6    # "appIntent":Landroid/content/Intent;
    .end local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v15    # "summaryNotification":Landroid/app/Notification;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v28

    .line 2316
    if-eqz v25, :cond_4

    .line 2317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2255
    .end local v17    # "newAutoBundleKey":Ljava/lang/String;
    .end local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "userId":I
    :cond_4
    return-void

    .line 2263
    .restart local v17    # "newAutoBundleKey":Ljava/lang/String;
    .restart local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "userId":I
    :catchall_0
    move-exception v4

    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    monitor-exit v28

    throw v4

    .restart local v6    # "appIntent":Landroid/content/Intent;
    .restart local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .restart local v15    # "summaryNotification":Landroid/app/Notification;
    .restart local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "extras":Landroid/os/Bundle;
    .restart local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v4

    move-object/from16 v25, v26

    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_0
.end method

.method private maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    const/4 v4, 0x0

    .line 2235
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2236
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2237
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "autogroup_needed"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2238
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "autogroup_needed"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 2241
    .local v1, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 2244
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2243
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 2245
    .local v0, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    .line 2246
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2247
    const/16 v2, 0x10

    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_0
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v3

    .line 440
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 3458
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3459
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    .line 3458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 3445
    if-eq p2, v2, :cond_0

    .line 3447
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3443
    :cond_0
    :goto_0
    return v0

    .line 3449
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 361
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 363
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 365
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 3155
    :cond_0
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    .line 1190
    const/4 v3, 0x0

    .line 1192
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v3    # "removed":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1193
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1195
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1197
    .local v2, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    if-eqz p2, :cond_0

    and-int v4, v0, p2

    if-ne v4, v0, :cond_1

    .line 1198
    :cond_0
    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 1192
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1198
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "removed":Z
    goto :goto_1

    .line 1202
    .end local v0    # "hint":I
    .end local v2    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v3    # "removed":Z
    :cond_3
    return v3
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/4 v2, 0x6

    .line 3197
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3198
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    .line 3201
    const/4 v1, 0x0

    .line 3198
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3196
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x5

    .line 3192
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3193
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3191
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 3179
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3180
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3181
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3178
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3045
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3046
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3047
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0xdac

    :goto_0
    int-to-long v0, v3

    .line 3048
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3043
    return-void

    .line 3047
    .end local v0    # "delay":J
    :cond_0
    const/16 v3, 0x7d0

    goto :goto_0
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    const/high16 v2, 0x40000000    # 2.0f

    .line 1076
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1077
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    .line 1076
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private syncBlockDb()V
    .locals 21

    .prologue
    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v8

    .line 1088
    .local v8, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ban$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1089
    .local v4, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1090
    .local v13, "uid":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1091
    .local v11, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v13, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1095
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_0
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 1097
    .local v14, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 1098
    .local v16, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1099
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 1100
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 1101
    .local v9, "packageCount":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 1102
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1104
    .restart local v11    # "packageName":Ljava/lang/String;
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v10, v11, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v13

    .line 1105
    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1106
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v13    # "uid":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1113
    .end local v7    # "p":I
    .end local v9    # "packageCount":I
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "userId":I
    :cond_3
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1114
    .restart local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v19, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    goto :goto_3

    .line 1117
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1083
    return-void

    .line 1108
    .restart local v7    # "p":I
    .restart local v9    # "packageCount":I
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14    # "user":Landroid/content/pm/UserInfo;
    .restart local v16    # "userId":I
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 6

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v2

    .line 1164
    .local v2, "updatedSuppressedEffects":J
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    return-void

    .line 1165
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1166
    .local v0, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 1167
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 1168
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 1169
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1263
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1264
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1265
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 1261
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1156
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1157
    :cond_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1158
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1159
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1154
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3659
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3657
    return-void

    .line 3658
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 420
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 421
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 422
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string/jumbo v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 425
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 426
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 418
    return-void
.end method


# virtual methods
.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 37
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2792
    const/4 v14, 0x0

    .line 2793
    .local v14, "buzz":Z
    const/4 v12, 0x0

    .line 2794
    .local v12, "beep":Z
    const/4 v13, 0x0

    .line 2796
    .local v13, "blink":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    .line 2797
    .local v27, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v23

    .line 2800
    .local v23, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_10

    const/4 v10, 0x1

    .line 2801
    .local v10, "aboveThreshold":Z
    :goto_0
    if-eqz v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_0
    const/4 v15, 0x0

    .line 2802
    .local v15, "canInterrupt":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2803
    :cond_1
    const-string/jumbo v4, "NotificationService"

    .line 2804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " canInterrupt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2805
    const-string/jumbo v6, " intercept="

    .line 2804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v6

    .line 2804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2803
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 2811
    .local v30, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 2813
    .local v17, "currentUser":I
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2817
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v18

    .line 2818
    .local v18, "disableEffects":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 2819
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 2823
    :cond_3
    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 2824
    :goto_2
    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 2827
    :goto_3
    const/16 v22, 0x0

    .line 2828
    .local v22, "hasValidVibrate":Z
    const/16 v21, 0x0

    .line 2829
    .local v21, "hasValidSound":Z
    if-nez v18, :cond_9

    .line 2830
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 2831
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v17

    if-ne v4, v0, :cond_14

    .line 2829
    :cond_4
    :goto_4
    if-eqz v15, :cond_9

    .line 2834
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2829
    if-eqz v4, :cond_9

    .line 2835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_9

    .line 2836
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Interrupting!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_5
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_15

    .line 2843
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2844
    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2843
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 2846
    .local v32, "useDefaultSound":Z
    :goto_5
    const/16 v29, 0x0

    .line 2847
    .local v29, "soundUri":Landroid/net/Uri;
    if-eqz v32, :cond_17

    .line 2848
    sget-object v29, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2851
    .local v29, "soundUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    if-eqz v4, :cond_16

    const/16 v21, 0x1

    .line 2858
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_6
    :goto_6
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_19

    const/16 v20, 0x1

    .line 2863
    .local v20, "hasCustomVibrate":Z
    :goto_7
    if-nez v20, :cond_1b

    if-eqz v21, :cond_1b

    .line 2865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const/16 v16, 0x1

    .line 2869
    .local v16, "convertSoundToVibration":Z
    :goto_8
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1c

    const/16 v33, 0x1

    .line 2871
    .local v33, "useDefaultVibrate":Z
    :goto_9
    if-nez v33, :cond_1d

    if-nez v16, :cond_1d

    .line 2872
    move/from16 v22, v20

    .line 2876
    .end local v22    # "hasValidVibrate":Z
    :goto_a
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_1f

    .line 2877
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    .line 2876
    :goto_b
    if-nez v4, :cond_9

    .line 2879
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2881
    if-eqz v21, :cond_7

    .line 2883
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_20

    const/16 v26, 0x1

    .line 2884
    .local v26, "looping":Z
    :goto_c
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v11

    .line 2885
    .local v11, "audioAttributes":Landroid/media/AudioAttributes;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 2888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2889
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    .line 2888
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_7

    .line 2890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2909
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_7
    :goto_d
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2911
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 2913
    if-nez v33, :cond_8

    if-eqz v16, :cond_26

    .line 2916
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2918
    .local v24, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 2919
    if-eqz v33, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 2921
    :goto_e
    move-object/from16 v0, v27

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_25

    .line 2922
    const/4 v8, 0x0

    :goto_f
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 2918
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2923
    const/4 v14, 0x1

    .line 2925
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2942
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v24    # "identity":J
    .end local v32    # "useDefaultSound":Z
    .end local v33    # "useDefaultVibrate":Z
    :cond_9
    :goto_10
    if-eqz v34, :cond_a

    if-eqz v21, :cond_28

    .line 2945
    :cond_a
    :goto_11
    if-eqz v35, :cond_b

    if-eqz v22, :cond_29

    .line 2951
    :cond_b
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v36

    .line 2952
    .local v36, "wasShowLights":Z
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    if-eqz v10, :cond_2a

    .line 2953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2a

    .line 2955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2957
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_c

    .line 2958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    .line 2960
    :cond_c
    const/4 v13, 0x1

    .line 2964
    :cond_d
    :goto_13
    if-nez v14, :cond_e

    if-nez v12, :cond_e

    if-eqz v13, :cond_f

    .line 2965
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    .line 2967
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Suppressed SystemUI from triggering screen on"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_f
    :goto_14
    return-void

    .line 2800
    .end local v10    # "aboveThreshold":Z
    .end local v15    # "canInterrupt":Z
    .end local v17    # "currentUser":I
    .end local v18    # "disableEffects":Ljava/lang/String;
    .end local v21    # "hasValidSound":Z
    .end local v30    # "token":J
    .end local v36    # "wasShowLights":Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2801
    .restart local v10    # "aboveThreshold":Z
    :cond_11
    const/4 v15, 0x1

    .restart local v15    # "canInterrupt":Z
    goto/16 :goto_1

    .line 2812
    .restart local v30    # "token":J
    :catchall_0
    move-exception v4

    .line 2813
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2812
    throw v4

    .line 2823
    .restart local v17    # "currentUser":I
    .restart local v18    # "disableEffects":Ljava/lang/String;
    :cond_12
    const/16 v34, 0x0

    .local v34, "wasBeep":Z
    goto/16 :goto_2

    .line 2824
    .end local v34    # "wasBeep":Z
    :cond_13
    const/16 v35, 0x0

    .local v35, "wasBuzz":Z
    goto/16 :goto_3

    .line 2832
    .end local v35    # "wasBuzz":Z
    .restart local v21    # "hasValidSound":Z
    .restart local v22    # "hasValidVibrate":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v4

    .line 2829
    if-eqz v4, :cond_9

    goto/16 :goto_4

    .line 2842
    :cond_15
    const/16 v32, 0x1

    goto/16 :goto_5

    .line 2851
    .restart local v29    # "soundUri":Landroid/net/Uri;
    .restart local v32    # "useDefaultSound":Z
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 2852
    .local v29, "soundUri":Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 2853
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v29, v0

    .line 2854
    .local v29, "soundUri":Landroid/net/Uri;
    if-eqz v29, :cond_18

    const/16 v21, 0x1

    goto/16 :goto_6

    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 2858
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 2865
    .restart local v20    # "hasCustomVibrate":Z
    :cond_1a
    const/16 v16, 0x0

    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_8

    .line 2863
    .end local v16    # "convertSoundToVibration":Z
    :cond_1b
    const/16 v16, 0x0

    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_8

    .line 2869
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 2871
    .restart local v33    # "useDefaultVibrate":Z
    :cond_1d
    const/16 v22, 0x1

    goto/16 :goto_a

    .line 2877
    .end local v22    # "hasValidVibrate":Z
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 2876
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 2883
    :cond_20
    const/16 v26, 0x0

    .restart local v26    # "looping":Z
    goto/16 :goto_c

    .line 2891
    .restart local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2894
    .restart local v24    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v28

    .line 2895
    .local v28, "player":Landroid/media/IRingtonePlayer;
    if-eqz v28, :cond_23

    .line 2896
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_22

    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Playing sound "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2897
    const-string/jumbo v6, " with attributes "

    .line 2896
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    :cond_22
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-interface {v0, v1, v4, v2, v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2900
    const/4 v12, 0x1

    .line 2904
    :cond_23
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 2902
    .end local v28    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v19

    .line 2904
    .local v19, "e":Landroid/os/RemoteException;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 2903
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2904
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2903
    throw v4

    .line 2920
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_24
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_e

    .line 2922
    :cond_25
    const/4 v8, -0x1

    goto/16 :goto_f

    .line 2924
    :catchall_2
    move-exception v4

    .line 2925
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2924
    throw v4

    .line 2927
    .end local v24    # "identity":J
    :cond_26
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    .line 2930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 2931
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    .line 2932
    move-object/from16 v0, v27

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_27

    .line 2933
    const/4 v8, 0x0

    :goto_15
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    .line 2930
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 2934
    const/4 v14, 0x1

    goto/16 :goto_10

    .line 2933
    :cond_27
    const/4 v8, -0x1

    goto :goto_15

    .line 2943
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v32    # "useDefaultSound":Z
    .end local v33    # "useDefaultVibrate":Z
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    goto/16 :goto_11

    .line 2946
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    goto/16 :goto_12

    .line 2961
    .restart local v36    # "wasShowLights":Z
    :cond_2a
    if-eqz v36, :cond_d

    .line 2962
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_13

    .line 2970
    :cond_2b
    if-eqz v14, :cond_2c

    const/4 v4, 0x1

    move v6, v4

    :goto_16
    if-eqz v12, :cond_2d

    const/4 v4, 0x1

    move v5, v4

    :goto_17
    if-eqz v13, :cond_2e

    const/4 v4, 0x1

    .line 2969
    :goto_18
    move-object/from16 v0, v23

    invoke-static {v0, v6, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 2971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_14

    .line 2970
    :cond_2c
    const/4 v4, 0x0

    move v6, v4

    goto :goto_16

    :cond_2d
    const/4 v4, 0x0

    move v5, v4

    goto :goto_17

    :cond_2e
    const/4 v4, 0x0

    goto :goto_18
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 3521
    if-nez p5, :cond_1

    const/4 v10, 0x0

    .line 3523
    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v9, p4

    .line 3522
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3525
    const/4 v15, 0x0

    .line 3526
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3527
    .local v14, "N":I
    add-int/lit8 v16, v14, -0x1

    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_5

    .line 3528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 3529
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    .line 3530
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3527
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 3521
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3534
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3539
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_0

    .line 3541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3542
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3544
    if-nez v15, :cond_4

    .line 3545
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3547
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3550
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3551
    .local v13, "M":I
    :goto_3
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    .line 3552
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3553
    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 3552
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    .line 3551
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3550
    .end local v13    # "M":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "M":I
    goto :goto_3

    .line 3555
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3520
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3469
    if-nez p9, :cond_1

    const/4 v10, 0x0

    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p8

    .line 3470
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3475
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3476
    .local v14, "N":I
    const/4 v15, 0x0

    .line 3477
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v16, v14, -0x1

    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_7

    .line 3478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    .line 3479
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 3477
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 3469
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3483
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    if-eqz p3, :cond_0

    .line 3486
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int v3, v3, p4

    move/from16 v0, p4

    if-ne v3, v0, :cond_0

    .line 3489
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int v3, v3, p5

    if-nez v3, :cond_0

    .line 3492
    if-eqz p3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3495
    :cond_4
    if-nez v15, :cond_5

    .line 3496
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3498
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3499
    if-nez p6, :cond_6

    .line 3500
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 3502
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3503
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3474
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3505
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    if-eqz v15, :cond_8

    .line 3506
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3507
    .local v13, "M":I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 3508
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3509
    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 3508
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    .line 3507
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 3512
    .end local v13    # "M":I
    :cond_8
    if-eqz v15, :cond_9

    .line 3513
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3515
    :cond_9
    if-eqz v15, :cond_a

    const/4 v3, 0x1

    :goto_4
    monitor-exit v4

    return v3

    :cond_a
    const/4 v3, 0x0

    goto :goto_4
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3401
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8;

    move-object v1, p0

    move-object/from16 v2, p11

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3396
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 3021
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3023
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3031
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3032
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V

    .line 3034
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 3035
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3039
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 3020
    :cond_0
    return-void

    .line 3024
    .end local v1    # "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catch_0
    move-exception v0

    .line 3025
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object died trying to hide notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3026
    const-string/jumbo v5, " in package "

    .line 3025
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3026
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 3025
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2350
    const-string/jumbo v18, "Current Notification Manager state"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2352
    const-string/jumbo v18, " (filtered to "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    :cond_0
    const/16 v18, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2356
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    move/from16 v17, v0

    .line 2358
    .local v17, "zenOnly":Z
    :goto_0
    if-nez v17, :cond_4

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2360
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2361
    .local v4, "N":I
    if-lez v4, :cond_3

    .line 2362
    const-string/jumbo v18, "  Toast Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2363
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2356
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v17    # "zenOnly":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 2366
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    .restart local v17    # "zenOnly":Z
    :cond_2
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "i":I
    :cond_3
    monitor-exit v19

    .line 2371
    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2372
    if-nez v17, :cond_f

    .line 2373
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2374
    .restart local v4    # "N":I
    if-lez v4, :cond_8

    .line 2375
    const-string/jumbo v18, "  Notification List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v4, :cond_7

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 2378
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2379
    :cond_5
    const-string/jumbo v18, "    "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2376
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2359
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2381
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_7
    :try_start_2
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2386
    if-lez v4, :cond_b

    .line 2387
    const-string/jumbo v18, "  Lights List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    .line 2389
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 2390
    const-string/jumbo v18, "  > "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2392
    :cond_9
    const-string/jumbo v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 2371
    .end local v4    # "N":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2396
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_a
    :try_start_3
    const-string/jumbo v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    .end local v8    # "i":I
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mUseAttentionLight="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mNotificationPulseEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2400
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mSoundNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mVibrateNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mDisableNotificationEffects="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mCallState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mSystemReady="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mMaxPackageEnqueueRate="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "  mArchive="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2409
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v8, 0x0

    .line 2410
    .restart local v8    # "i":I
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2411
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/service/notification/StatusBarNotification;

    .line 2412
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2413
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2414
    add-int/lit8 v8, v8, 0x1

    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v8, v0, :cond_d

    .line 2415
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    const-string/jumbo v18, "    ..."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    if-nez v17, :cond_10

    .line 2422
    const-string/jumbo v18, "\n  Usage Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2426
    :cond_10
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    if-eqz v17, :cond_12

    .line 2427
    :cond_11
    const-string/jumbo v18, "\n  Zen Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    const-string/jumbo v18, "    mInterruptionFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2431
    const-string/jumbo v18, "\n  Zen Log:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2432
    const-string/jumbo v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2435
    :cond_12
    if-nez v17, :cond_17

    .line 2436
    const-string/jumbo v18, "\n  Ranking Config:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v18, v0

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2439
    const-string/jumbo v18, "\n  Notification listeners:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2441
    const-string/jumbo v18, "    mListenerHints: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2442
    const-string/jumbo v18, "    mListenersDisablingEffects: ("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2444
    .restart local v4    # "N":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_16

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2446
    .local v7, "hint":I
    if-lez v8, :cond_13

    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2447
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "hint["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "]:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 2451
    .local v13, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 2453
    .local v12, "listenerSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    if-ge v10, v12, :cond_15

    .line 2454
    if-lez v8, :cond_14

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2455
    :cond_14
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2456
    .local v11, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2453
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2444
    .end local v11    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2459
    .end local v7    # "hint":I
    .end local v10    # "j":I
    .end local v12    # "listenerSize":I
    .end local v13    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_16
    const/16 v18, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2460
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\n  mRankerServicePackageName: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2461
    const-string/jumbo v18, "\n  Notification ranker services:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2464
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_17
    const-string/jumbo v18, "\n  Policy access:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2465
    const-string/jumbo v18, "    mPolicyAccess: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2467
    const-string/jumbo v18, "\n  Condition providers:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2470
    const-string/jumbo v18, "\n  Group summaries:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2472
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    .line 2473
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, " -> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v0, v15, :cond_18

    .line 2475
    const-string/jumbo v18, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    const-string/jumbo v18, "      "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_7

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19
    monitor-exit v19

    .line 2349
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 31
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 2521
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_0

    .line 2522
    const-string/jumbo v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enqueueNotificationInternal: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2523
    const-string/jumbo v7, " notification="

    .line 2522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2526
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 2527
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v24

    .line 2530
    .local v24, "isNotificationFromListener":Z
    const-string/jumbo v9, "enqueueNotification"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p9

    move-object/from16 v10, p1

    .line 2529
    invoke-static/range {v4 .. v10}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 2531
    .local v30, "userId":I
    new-instance v13, Landroid/os/UserHandle;

    move/from16 v0, v30

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2535
    .local v13, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2537
    const/4 v5, -0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_3

    const/4 v5, 0x0

    .line 2536
    :goto_1
    const/high16 v7, 0x10000000

    .line 2535
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 2538
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v30

    move-object/from16 v1, p7

    invoke-static {v15, v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 2547
    if-eqz p1, :cond_1

    if-nez p7, :cond_4

    .line 2548
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null not allowed: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2549
    const-string/jumbo v7, " id="

    .line 2548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2549
    const-string/jumbo v7, " notification="

    .line 2548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2526
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "isNotificationFromListener":Z
    .end local v30    # "userId":I
    :cond_2
    const/16 v25, 0x1

    .local v25, "isSystemNotification":Z
    goto/16 :goto_0

    .end local v25    # "isSystemNotification":Z
    .restart local v13    # "user":Landroid/os/UserHandle;
    .restart local v24    # "isNotificationFromListener":Z
    .restart local v30    # "userId":I
    :cond_3
    move/from16 v5, v30

    .line 2537
    goto :goto_1

    .line 2539
    :catch_0
    move-exception v19

    .line 2540
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotificationService"

    const-string/jumbo v6, "Cannot create a context for sending app"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2541
    return-void

    .line 2551
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    .line 2552
    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v12, p7

    .line 2551
    invoke-direct/range {v4 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2557
    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    if-nez v25, :cond_5

    if-eqz v24, :cond_7

    .line 2595
    :cond_5
    :goto_2
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v5, :cond_d

    .line 2596
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v23

    .line 2597
    .local v23, "intentCount":I
    if-lez v23, :cond_d

    .line 2599
    const-class v5, Landroid/app/ActivityManagerInternal;

    .line 2598
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManagerInternal;

    .line 2601
    .local v16, "am":Landroid/app/ActivityManagerInternal;
    const-class v5, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2600
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v20

    .line 2602
    .local v20, "duration":J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 2603
    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/PendingIntent;

    .line 2604
    .local v28, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v28, :cond_6

    .line 2605
    invoke-virtual/range {v28 .. v28}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;J)V

    .line 2602
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2558
    .end local v16    # "am":Landroid/app/ActivityManagerInternal;
    .end local v20    # "duration":J
    .end local v22    # "i":I
    .end local v23    # "intentCount":I
    .end local v28    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2559
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v17

    .line 2562
    .local v17, "appEnqueueRate":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v5, v17, v5

    if-lez v5, :cond_9

    .line 2563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 2564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 2565
    .local v26, "now":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v8, v26, v8

    const-wide/16 v10, 0x1388

    cmp-long v5, v8, v10

    if-lez v5, :cond_8

    .line 2566
    const-string/jumbo v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package enqueue rate is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2567
    const-string/jumbo v8, ". Shedding events. package="

    .line 2566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit v6

    .line 2570
    return-void

    .line 2574
    .end local v17    # "appEnqueueRate":F
    .end local v26    # "now":J
    :cond_9
    const/16 v18, 0x0

    .line 2575
    .local v18, "count":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2576
    .local v14, "N":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v14, :cond_a

    .line 2577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/notification/NotificationRecord;

    .line 2578
    .local v29, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    move/from16 v0, v30

    if-ne v5, v0, :cond_c

    .line 2579
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_b

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_b

    .end local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_a
    monitor-exit v6

    goto/16 :goto_2

    .line 2582
    .restart local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    .line 2583
    const/16 v5, 0x32

    move/from16 v0, v18

    if-lt v0, v5, :cond_c

    .line 2584
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 2585
    const-string/jumbo v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package has already posted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2586
    const-string/jumbo v8, " notifications.  Not showing more.  package="

    .line 2585
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 2587
    return-void

    .line 2576
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 2558
    .end local v14    # "N":I
    .end local v18    # "count":I
    .end local v22    # "i":I
    .end local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2612
    :cond_d
    move-object/from16 v0, p7

    iget v5, v0, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    .line 2613
    const/4 v7, 0x2

    .line 2612
    invoke-static {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v5

    move-object/from16 v0, p7

    iput v5, v0, Landroid/app/Notification;->priority:I

    .line 2616
    new-instance v29, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 2617
    .restart local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2619
    const/4 v5, 0x0

    aput p6, p8, v5

    .line 2520
    return-void
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3648
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3649
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3650
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3651
    return v1

    .line 3649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3654
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 3634
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3635
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3636
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3637
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3638
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 3639
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 3638
    if-eqz v4, :cond_0

    .line 3639
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3638
    if-eqz v4, :cond_0

    .line 3640
    return v0

    .line 3636
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3643
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 3065
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3066
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 3067
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3068
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3069
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3070
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 3071
    return v1

    .line 3068
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3074
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 3080
    const/4 v5, 0x0

    .line 3081
    .local v5, "toastCount":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 3082
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3083
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3084
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3085
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v7, p1, :cond_0

    .line 3086
    add-int/lit8 v5, v5, 0x1

    .line 3083
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3090
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-interface {v7, v8, p1, v6}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :goto_1
    return-void

    .line 3091
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 1122
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1128
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1129
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1130
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1136
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onBootPhaseAppsCanStart()V

    .line 1137
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 21

    .prologue
    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 926
    .local v19, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 927
    const-string/jumbo v2, "max_notification_enqueue_rate"

    .line 928
    const/high16 v3, 0x41200000    # 10.0f

    .line 926
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 930
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 933
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    .line 939
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 943
    const v1, 0x107003e

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 947
    .local v16, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 948
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 949
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 949
    move-object/from16 v0, v16

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 953
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 954
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 978
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    move-object/from16 v0, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 979
    .local v20, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->syncBlockDb()V

    .line 984
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 987
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 991
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v1, :cond_0

    .line 993
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 996
    :cond_0
    const-class v1, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/lights/LightsManager;

    .line 997
    .local v18, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 998
    const/4 v1, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1001
    const v1, 0x1060110

    .line 1000
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 1003
    const v1, 0x10e005a

    .line 1002
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 1005
    const v1, 0x10e005b

    .line 1004
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 1010
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 1008
    const v2, 0x107003a

    .line 1009
    const/16 v3, 0x11

    .line 1007
    move-object/from16 v0, v19

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 1015
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 1013
    const v2, 0x107003b

    .line 1014
    const/16 v3, 0x11

    .line 1012
    move-object/from16 v0, v19

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1017
    const v1, 0x1120027

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1024
    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    .line 1023
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1027
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1034
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 1035
    .local v17, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1047
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1048
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 1055
    const/4 v6, 0x0

    .line 1054
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1057
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1058
    .local v8, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1060
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1059
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1062
    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v12, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    .line 1064
    const/4 v14, 0x0

    .line 1063
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1066
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1068
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1069
    const v2, 0x10e0061

    .line 1068
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1071
    const-string/jumbo v1, "notification"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1072
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 923
    return-void

    .line 944
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "suspendedPkgFilter":Landroid/content/IntentFilter;
    .end local v12    # "sdFilter":Landroid/content/IntentFilter;
    .end local v16    # "extractorNames":[Ljava/lang/String;
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v20    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v15

    .line 945
    .local v15, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public savePolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 392
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 3281
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 3282
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3283
    return-void

    .line 3287
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3288
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3289
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3290
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 3291
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3292
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3293
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3296
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3280
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioMananger"    # Landroid/media/AudioManager;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 898
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    .line 913
    return-void
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1142
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1145
    if-eqz p3, :cond_1

    move v0, v4

    .line 1144
    :goto_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1148
    if-eqz p3, :cond_2

    .line 1141
    :goto_2
    return-void

    .line 1142
    :cond_0
    const-string/jumbo v0, "dis"

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1145
    goto :goto_1

    .line 1149
    :cond_2
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1150
    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    .line 1149
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto :goto_2
.end method

.method setSystemNotificationSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemNotificationSound"    # Ljava/lang/String;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    .line 918
    return-void
.end method

.method setSystemReady(Z)V
    .locals 0
    .param p1, "systemReady"    # Z

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 908
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 903
    return-void
.end method

.method showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2995
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2996
    :goto_0
    if-eqz v2, :cond_3

    .line 2997
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v3, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 3000
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3001
    return-void

    .line 3002
    :catch_0
    move-exception v0

    .line 3003
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3004
    const-string/jumbo v5, " in package "

    .line 3003
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3004
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 3003
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3007
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 3008
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3010
    :cond_1
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 3011
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 3012
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 3014
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_2
    const/4 v2, 0x0

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    .line 2994
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_3
    return-void
.end method

.method updateLightsLocked()V
    .locals 9

    .prologue
    .line 3593
    const/4 v1, 0x0

    .line 3594
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3604
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v6, :cond_5

    .line 3605
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3606
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v6, :cond_3

    .line 3607
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 3590
    :cond_3
    :goto_1
    return-void

    .line 3595
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3596
    .local v5, "owner":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 3597
    .local v1, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    .line 3598
    const-string/jumbo v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LED Notification does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3610
    .end local v1    # "ledNotification":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "owner":Ljava/lang/String;
    :cond_5
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 3611
    .local v4, "ledno":Landroid/app/Notification;
    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    .line 3612
    .local v0, "ledARGB":I
    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    .line 3613
    .local v3, "ledOnMS":I
    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    .line 3614
    .local v2, "ledOffMS":I
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    .line 3615
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 3616
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 3617
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 3619
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v6, :cond_7

    .line 3621
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3624
    :cond_7
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v6, :cond_3

    .line 3626
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v6, v0, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto :goto_1
.end method

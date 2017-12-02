.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$2;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static final localLOGV:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field mDeviceIdleUserWhitelist:[I

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field private mLastWakeup:J

.field private mLastWakeupSet:J

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mNativeData:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "millis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "minuteswest"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p1, "nativeData"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const/high16 v1, 0x20000000

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 114
    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 684
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 118
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string/jumbo v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 130
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 139
    new-instance v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 158
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    .line 164
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 181
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 183
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 185
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 190
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 346
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 360
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 361
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 619
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 689
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 690
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 897
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 896
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 899
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 900
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 901
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1227
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 695
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 693
    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v1, 0x0

    .line 724
    sget-object v2, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 725
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 726
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 728
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 729
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 699
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    .line 700
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 703
    :cond_1
    return-wide p0

    .end local v0    # "isRtc":Z
    :cond_2
    move v0, v1

    .line 699
    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2084
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2085
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2086
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2087
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2088
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2084
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2083
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2062
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2063
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2064
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2065
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2062
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2061
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1686
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1687
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1688
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1689
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1690
    return-object v1

    .line 1687
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1693
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1836
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "EHm"

    .line 1837
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    return-object v2

    .line 1836
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 1839
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 2379
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 2382
    long-to-int v0, p0

    return v0

    .line 2383
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 2385
    const v0, 0xdbba0

    return v0

    .line 2388
    :cond_1
    const v0, 0x1b7740

    return v0
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2830
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 2831
    .local v1, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v1, :cond_0

    .line 2832
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2833
    .restart local v1    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2835
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2836
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 2837
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 2838
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    :cond_1
    return-object v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2824
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 2825
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 2826
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private native init()J
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2071
    packed-switch p0, :pswitch_data_0

    .line 2079
    const-string/jumbo v0, "--unknown--"

    return-object v0

    .line 2072
    :pswitch_0
    const-string/jumbo v0, "RTC"

    return-object v0

    .line 2073
    :pswitch_1
    const-string/jumbo v0, "RTC_WAKEUP"

    return-object v0

    .line 2074
    :pswitch_2
    const-string/jumbo v0, "ELAPSED"

    return-object v0

    .line 2075
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1650
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1651
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1652
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1653
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1654
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1655
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1656
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1657
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1658
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1659
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1660
    const-string/jumbo v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1655
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1649
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 713
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 714
    sub-long v0, p2, p0

    .line 716
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 717
    const-wide/16 v0, 0x0

    .line 719
    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 715
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .prologue
    const/4 v5, 0x0

    .line 1870
    const/4 v1, 0x0

    .line 1871
    .local v1, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1872
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1873
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1874
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1875
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1871
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1878
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1879
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1881
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1878
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1885
    :cond_3
    if-eqz v1, :cond_7

    .line 1889
    const/4 v3, 0x0

    .line 1890
    .local v3, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1891
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1892
    const/4 v3, 0x1

    .line 1894
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1895
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1897
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1898
    if-eqz v3, :cond_6

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1901
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1869
    .end local v3    # "restorePending":Z
    :cond_7
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 1805
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1806
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1808
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1809
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1810
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1811
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1812
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1814
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1817
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1818
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1819
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1820
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1821
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1822
    const-string/jumbo v6, "next_alarm_formatted"

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 1821
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 1827
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1826
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1818
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1808
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1804
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 26
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"    # Ljava/lang/String;
    .param p15, "flags"    # I
    .param p16, "doValidate"    # Z
    .param p17, "workSource"    # Landroid/os/WorkSource;
    .param p18, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"    # I
    .param p20, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1089
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p17

    move/from16 v20, p15

    move-object/from16 v21, p18

    move/from16 v22, p19

    move-object/from16 v23, p20

    invoke-direct/range {v4 .. v23}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1093
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, p19

    move-object/from16 v1, p20

    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v5

    .line 1094
    const/4 v6, 0x2

    .line 1093
    if-ne v5, v6, :cond_0

    .line 1095
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not setting alarm from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1096
    const-string/jumbo v7, " -- package not allowed to start"

    .line 1095
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    return-void

    .line 1099
    :catch_0
    move-exception v24

    .line 1101
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1102
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1088
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 1106
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_8

    .line 1111
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_0

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 1112
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1115
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1116
    .local v4, "nowElapsed":J
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 1117
    .local v2, "fuzz":I
    if-lez v2, :cond_2

    .line 1118
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v7, :cond_1

    .line 1119
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1121
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1122
    .local v1, "delta":I
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1130
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1158
    .end local v1    # "delta":I
    .end local v2    # "fuzz":I
    .end local v4    # "nowElapsed":J
    :cond_2
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    .line 1159
    const/4 v6, -0x1

    .line 1160
    .local v6, "whichBatch":I
    :goto_0
    if-gez v6, :cond_a

    .line 1161
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1162
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1173
    :cond_3
    :goto_1
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_4

    .line 1174
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1177
    :cond_4
    const/4 v3, 0x0

    .line 1179
    .local v3, "needRebatch":Z
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_b

    .line 1189
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1190
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 1191
    const/4 v3, 0x1

    .line 1204
    :cond_5
    :goto_2
    if-nez p2, :cond_7

    .line 1218
    if-eqz v3, :cond_6

    .line 1219
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1222
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1223
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1105
    :cond_7
    return-void

    .line 1133
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "needRebatch":Z
    .end local v6    # "whichBatch":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_2

    .line 1136
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0xe

    if-nez v7, :cond_2

    .line 1140
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    return-void

    .line 1159
    :cond_9
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v6

    goto :goto_0

    .line 1164
    .restart local v6    # "whichBatch":I
    :cond_a
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1165
    .restart local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1168
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1169
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_1

    .line 1192
    .restart local v3    # "needRebatch":Z
    :cond_b
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 1193
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    .line 1194
    :cond_c
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1198
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_5

    .line 1199
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v2, 0x3e8

    .line 2038
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 2042
    cmp-long v0, p2, v10

    if-gez v0, :cond_0

    .line 2043
    const-wide/16 v4, 0x0

    .line 2044
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 2050
    .local v6, "alarmNanoseconds":J
    :goto_0
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 2037
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 2046
    :cond_0
    div-long v4, p2, v2

    .line 2047
    .restart local v4    # "alarmSeconds":J
    rem-long v0, p2, v2

    mul-long/2addr v0, v2

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 2052
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 2053
    .local v8, "msg":Landroid/os/Message;
    iput v9, v8, Landroid/os/Message;->what:I

    .line 2055
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2056
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private updateNextAlarmClockLocked()V
    .locals 20

    .prologue
    .line 1718
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v15, :cond_0

    .line 1719
    return-void

    .line 1721
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1724
    .local v13, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 1726
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1727
    .local v3, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_4

    .line 1728
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v7, v15, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1729
    .local v7, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1731
    .local v2, "M":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_3

    .line 1732
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1733
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v15, :cond_1

    .line 1734
    iget v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1735
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1744
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_2

    .line 1745
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1731
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1746
    .restart local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v14    # "userId":I
    :cond_2
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v15, v8}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1747
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v16

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-gtz v15, :cond_1

    .line 1749
    invoke-virtual {v13, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 1727
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1756
    .end local v2    # "M":I
    .end local v7    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1757
    .local v4, "NN":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_6

    .line 1758
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1759
    .local v12, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1760
    .restart local v14    # "userId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1761
    .local v9, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v12, v9}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1762
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1757
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1767
    .end local v9    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1768
    .local v5, "NNN":I
    add-int/lit8 v10, v5, -0x1

    :goto_4
    if-ltz v10, :cond_8

    .line 1769
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1770
    .restart local v14    # "userId":I
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 1771
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1768
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1717
    .end local v14    # "userId":I
    :cond_8
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v2, 0x2

    .line 1778
    if-eqz p2, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1791
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1792
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1793
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 1777
    return-void

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x1

    return v0
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 734
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 735
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 736
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 737
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 738
    return v2

    .line 735
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 643
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 644
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 647
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    .line 648
    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 647
    if-eqz v6, :cond_3

    .line 649
    const/4 v3, 0x0

    .line 656
    .local v3, "alarmPrio":I
    :goto_1
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 657
    .local v5, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5

    .line 658
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "alarmPackage":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 661
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v5, :cond_1

    .line 662
    new-instance v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 663
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_1
    iput-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 667
    iget v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_6

    .line 669
    iput v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 670
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 643
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 650
    .end local v2    # "alarmPackage":Ljava/lang/String;
    .end local v3    # "alarmPrio":I
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v6, :cond_4

    .line 651
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1

    .line 653
    .end local v3    # "alarmPrio":I
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "alarmPrio":I
    goto :goto_1

    .line 659
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .restart local v2    # "alarmPackage":Ljava/lang/String;
    goto :goto_2

    .line 675
    :cond_6
    iget v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_2

    .line 676
    iput v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_3

    .line 641
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPackage":Ljava/lang/String;
    .end local v3    # "alarmPrio":I
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_7
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2393
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_0

    .line 2394
    return v2

    .line 2396
    :cond_0
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 2397
    return v2

    .line 2399
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    .line 2403
    return v2

    .line 2405
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2406
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2365
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2366
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2368
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 2369
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 2371
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 2374
    :cond_1
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 8
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2410
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2411
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2412
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2413
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 2419
    .local v1, "allowWhileIdle":Z
    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2420
    const/4 v4, 0x0

    .local v4, "wi":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2422
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v4}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 2421
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2420
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2413
    .end local v1    # "allowWhileIdle":Z
    .end local v4    # "wi":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "allowWhileIdle":Z
    goto :goto_1

    .line 2426
    :cond_1
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 2425
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2429
    :cond_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v5, v0, p2, p3, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2430
    :catch_0
    move-exception v2

    .line 2431
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "Failure sending alarm."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2409
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "allowWhileIdle":Z
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 47
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v46, v0

    monitor-enter v46

    .line 1366
    :try_start_0
    const-string/jumbo v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1368
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1371
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1372
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "  nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1375
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 1377
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1378
    const-string/jumbo v5, "  mLastTimeChangeClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1379
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    const-string/jumbo v5, "  mLastTimeChangeRealtime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1382
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1383
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_0

    .line 1384
    const-string/jumbo v5, "  Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1386
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1387
    const-string/jumbo v5, "  Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1389
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1390
    const-string/jumbo v5, "  Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1392
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1393
    const-string/jumbo v5, "  Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1398
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v10, v8

    add-long v34, v6, v14

    .line 1399
    .local v34, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v14, v10, v8

    add-long v32, v6, v14

    .line 1400
    .local v32, "nextNonWakeupRTC":J
    const-string/jumbo v5, "  Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1402
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v32

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v5, "  Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1404
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v34

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    const-string/jumbo v5, "  Last wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1406
    const-string/jumbo v5, " set at "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1407
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1408
    const-string/jumbo v5, "  Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDeviceIdleUserWhitelist="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1412
    const-string/jumbo v5, "  Next alarm clock information: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v45, Ljava/util/TreeSet;

    invoke-direct/range {v45 .. v45}, Ljava/util/TreeSet;-><init>()V

    .line 1414
    .local v45, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_1

    .line 1415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1414
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1417
    :cond_1
    const/16 v26, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_2

    .line 1418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1417
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1420
    :cond_2
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1421
    .local v43, "user":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1422
    .local v31, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v38

    .line 1423
    .local v38, "time":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v36

    .line 1424
    .local v36, "pendingSend":Z
    const-string/jumbo v5, "    user:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1425
    const-string/jumbo v5, " pendingSend:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1426
    const-string/jumbo v5, " time:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1427
    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-lez v5, :cond_3

    .line 1428
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v38

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1429
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v38

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1431
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 1365
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "i":I
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v32    # "nextNonWakeupRTC":J
    .end local v34    # "nextWakeupRTC":J
    .end local v36    # "pendingSend":Z
    .end local v38    # "time":J
    .end local v43    # "user":I
    .end local v44    # "user$iterator":Ljava/util/Iterator;
    .end local v45    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v46

    throw v5

    .line 1422
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "i":I
    .restart local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v32    # "nextNonWakeupRTC":J
    .restart local v34    # "nextWakeupRTC":J
    .restart local v43    # "user":I
    .restart local v44    # "user$iterator":Ljava/util/Iterator;
    .restart local v45    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_4
    const-wide/16 v38, 0x0

    .restart local v38    # "time":J
    goto :goto_3

    .line 1433
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v38    # "time":J
    .end local v43    # "user":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1434
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1435
    const-string/jumbo v5, "  Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "b$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1438
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1439
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_4

    .line 1442
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v21    # "b$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1443
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1444
    const-string/jumbo v5, "    Idle mode state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v5, "      Idling until: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_a

    .line 1447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "        "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1452
    :goto_5
    const-string/jumbo v5, "      Pending alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "      "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1455
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_9

    .line 1456
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1457
    const-string/jumbo v5, "  Next wake from idle: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1461
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1462
    const-string/jumbo v5, "  Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1469
    :goto_6
    const-string/jumbo v5, "    Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1470
    const-string/jumbo v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1471
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1472
    const-string/jumbo v5, "    Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1473
    const-string/jumbo v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1475
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1478
    const-string/jumbo v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1479
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 1482
    const-string/jumbo v5, "Outstanding deliveries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    const/16 v26, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_c

    .line 1484
    const-string/jumbo v5, "   #"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1483
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 1450
    :cond_a
    const-string/jumbo v5, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1467
    :cond_b
    const-string/jumbo v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1487
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1490
    :cond_d
    const-string/jumbo v5, "  mAllowWhileIdleMinTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1492
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 1494
    const-string/jumbo v5, "  Last allow while idle dispatch times:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const/16 v26, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_e

    .line 1496
    const-string/jumbo v5, "  UID "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1498
    const-string/jumbo v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1501
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1495
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 1504
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string/jumbo v6, "  Recent problems"

    const-string/jumbo v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1507
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1510
    :cond_f
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v41, v0

    .line 1511
    .local v41, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v23, Lcom/android/server/AlarmManagerService$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1522
    .local v23, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    .line 1523
    .local v30, "len":I
    const/16 v29, 0x0

    .local v29, "iu":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_16

    .line 1524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/ArrayMap;

    .line 1525
    .local v42, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    .local v27, "ip":I
    :goto_a
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_15

    .line 1526
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1527
    .local v22, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v28, 0x0

    .local v28, "is":I
    :goto_b
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_14

    .line 1528
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1529
    .local v25, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v30, :cond_13

    .line 1530
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v30

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v37

    .line 1531
    .local v37, "pos":I
    :goto_c
    if-gez v37, :cond_10

    .line 1532
    move/from16 v0, v37

    neg-int v5, v0

    add-int/lit8 v37, v5, -0x1

    .line 1534
    :cond_10
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v37

    if-ge v0, v5, :cond_12

    .line 1535
    move-object/from16 v0, v41

    array-length v5, v0

    sub-int v5, v5, v37

    add-int/lit8 v24, v5, -0x1

    .line 1536
    .local v24, "copylen":I
    if-lez v24, :cond_11

    .line 1537
    add-int/lit8 v5, v37, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v37

    move-object/from16 v2, v41

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1539
    :cond_11
    aput-object v25, v41, v37

    .line 1540
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v30

    if-ge v0, v5, :cond_12

    .line 1541
    add-int/lit8 v30, v30, 0x1

    .line 1527
    .end local v24    # "copylen":I
    :cond_12
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 1530
    .end local v37    # "pos":I
    :cond_13
    const/16 v37, 0x0

    goto :goto_c

    .line 1525
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .line 1523
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_9

    .line 1547
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_16
    if-lez v30, :cond_18

    .line 1548
    const-string/jumbo v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    .line 1550
    aget-object v25, v41, v26

    .line 1551
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_17

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    :cond_17
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1554
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1555
    const-string/jumbo v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1556
    const-string/jumbo v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1557
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1559
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1549
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_d

    .line 1564
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_18
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    const-string/jumbo v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v40, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v29, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1e

    .line 1568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/ArrayMap;

    .line 1569
    .restart local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    .restart local v27    # "ip":I
    :goto_f
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1d

    .line 1570
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1571
    .restart local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string/jumbo v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_19

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
    :cond_19
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1574
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1577
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1578
    const-string/jumbo v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 1580
    const/16 v28, 0x0

    .restart local v28    # "is":I
    :goto_10
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_1a

    .line 1581
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    add-int/lit8 v28, v28, 0x1

    goto :goto_10

    .line 1583
    :cond_1a
    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1584
    const/16 v26, 0x0

    :goto_11
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_1c

    .line 1585
    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1586
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_1b

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    :cond_1b
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1589
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1590
    const-string/jumbo v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1591
    const-string/jumbo v5, " alarms, last "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1593
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_11

    .line 1569
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_f

    .line 1567
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_1d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_e

    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1e
    monitor-exit v46

    .line 1364
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 963
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 961
    return-void

    .line 964
    :catchall_0
    move-exception v0

    .line 965
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 964
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1709
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1709
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .prologue
    .line 1697
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1698
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1697
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 1996
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_2

    .line 1997
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 1998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1999
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 2000
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2001
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 2002
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2003
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 2004
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2006
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2007
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2009
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2010
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 2011
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 2012
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 1995
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    return-void

    .line 2016
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2022
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2023
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2024
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2025
    return v4

    .line 2022
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2028
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2029
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2030
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2031
    return v4

    .line 2028
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2034
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 952
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 956
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 955
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 951
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 905
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 906
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 910
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 913
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "*alarm*"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 915
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 916
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    const/high16 v6, 0x50000000

    .line 916
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 919
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 915
    invoke-static {v4, v7, v5, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 920
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 923
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v6, 0x4000000

    .line 922
    invoke-static {v4, v7, v1, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 926
    new-instance v4, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 927
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 928
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 929
    new-instance v4, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 930
    new-instance v4, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 932
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 933
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 934
    .local v3, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 940
    .end local v3    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 941
    const/4 v6, 0x4

    .line 940
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_1
    const-string/jumbo v4, "alarm"

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 947
    const-class v4, Lcom/android/server/AlarmManagerService$LocalService;

    new-instance v5, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 904
    return-void

    .line 936
    :cond_0
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 777
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 778
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0, v1, v4}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v2

    .line 780
    .local v2, "whenElapsed":J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 782
    move-wide v6, v2

    .line 791
    .local v6, "maxElapsed":J
    :goto_0
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 792
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 793
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 776
    return-void

    .line 787
    .end local v6    # "maxElapsed":J
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 788
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v6, v2, v0

    .restart local v6    # "maxElapsed":J
    goto :goto_0

    .line 789
    .end local v6    # "maxElapsed":J
    :cond_1
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .restart local v6    # "maxElapsed":J
    goto :goto_0
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 745
    return-void

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 12
    .param p1, "doValidate"    # Z

    .prologue
    .line 752
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 753
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 754
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 755
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 756
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 757
    .local v6, "oldBatches":I
    const/4 v2, 0x0

    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 758
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 759
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 760
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 761
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v7, v9, :cond_2

    .line 765
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Rebatching: idle until changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 766
    const-string/jumbo v11, " to "

    .line 765
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 766
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 765
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v9, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 772
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 773
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 751
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 8
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2349
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2350
    .local v5, "numBatches":I
    const/4 v3, 0x0

    .local v3, "nextBatch":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 2351
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2352
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, p2

    if-lez v6, :cond_1

    .line 2348
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2356
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2357
    .local v4, "numAlarms":I
    const/4 v2, 0x0

    .local v2, "nextAlarm":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 2358
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2359
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v0, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2357
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2350
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method removeForStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1933
    const/4 v2, 0x0

    .line 1934
    .local v2, "didRemove":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .end local v2    # "didRemove":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1935
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1936
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->removeForStopped(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1937
    .local v2, "didRemove":Z
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1938
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1934
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1941
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "didRemove":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_1
    if-ltz v4, :cond_3

    .line 1942
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1944
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_2

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1945
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 1944
    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v5

    .line 1945
    const/4 v6, 0x2

    .line 1944
    if-ne v5, v6, :cond_2

    .line 1947
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1953
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v2, :cond_4

    .line 1957
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1959
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1932
    :cond_4
    return-void

    .line 1949
    .restart local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1005
    if-nez p1, :cond_0

    .line 1006
    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1004
    return-void

    .line 1008
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1906
    const/4 v2, 0x0

    .line 1907
    .local v2, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .end local v2    # "didRemove":Z
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1908
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1909
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 1910
    .local v2, "didRemove":Z
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1911
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1907
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1914
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 1915
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1916
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1918
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1914
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1922
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v2, :cond_4

    .line 1926
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1928
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1905
    :cond_4
    return-void
.end method

.method removeUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1964
    const/4 v1, 0x0

    .line 1965
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1966
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1967
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1968
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1969
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1965
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1972
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1973
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1976
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1972
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1979
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 1980
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 1981
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 1979
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1985
    :cond_5
    if-eqz v1, :cond_6

    .line 1989
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1991
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1963
    :cond_6
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 1845
    const-wide/16 v2, 0x0

    .line 1846
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1847
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 1848
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1849
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1850
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    .line 1852
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const/4 v6, 0x2

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1854
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1855
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1858
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1859
    cmp-long v4, v2, v8

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 1860
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1863
    :cond_3
    cmp-long v4, v2, v8

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 1864
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 1865
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1842
    :cond_4
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 806
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 808
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 810
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 811
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 812
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 810
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 817
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 820
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 821
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 825
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_1
    return-void

    .line 826
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method setDeviceIdleUserWhitelistImpl([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_0
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1702
    return-void

    .line 1703
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 38
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1018
    if-nez p8, :cond_1

    if-nez p9, :cond_1

    .line 1020
    :cond_0
    const-string/jumbo v8, "AlarmManager"

    const-string/jumbo v9, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1019
    :cond_1
    if-eqz p8, :cond_2

    if-nez p9, :cond_0

    .line 1028
    :cond_2
    const-wide/32 v8, 0x2932e00

    cmp-long v8, p4, v8

    if-lez v8, :cond_3

    .line 1029
    const-string/jumbo v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Window length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1030
    const-string/jumbo v10, "ms suspiciously long; limiting to 1 hour"

    .line 1029
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-wide/32 p4, 0x36ee80

    .line 1036
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    move-wide/from16 v30, v0

    .line 1037
    .local v30, "minInterval":J
    const-wide/16 v8, 0x0

    cmp-long v8, p6, v8

    if-lez v8, :cond_4

    cmp-long v8, p6, v30

    if-gez v8, :cond_4

    .line 1038
    const-string/jumbo v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Suspiciously short interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p6

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1039
    const-string/jumbo v10, " millis; expanding to "

    .line 1038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1039
    const-wide/16 v10, 0x3e8

    div-long v10, v30, v10

    .line 1038
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1040
    const-string/jumbo v10, " seconds"

    .line 1038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    move-wide/from16 p6, v30

    .line 1044
    :cond_4
    if-ltz p1, :cond_5

    const/4 v8, 0x3

    move/from16 v0, p1

    if-le v0, v8, :cond_6

    .line 1045
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid alarm type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1048
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gez v8, :cond_7

    .line 1049
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    int-to-long v0, v8

    move-wide/from16 v36, v0

    .line 1050
    .local v36, "what":J
    const-string/jumbo v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid alarm trigger time! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " from uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p14

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1051
    const-string/jumbo v10, " pid="

    .line 1050
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v36

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-wide/16 p2, 0x0

    .line 1055
    .end local v36    # "what":J
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1056
    .local v4, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v34

    .line 1058
    .local v34, "nominalTrigger":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v8, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v32, v4, v8

    .line 1059
    .local v32, "minTrigger":J
    cmp-long v8, v34, v32

    if-lez v8, :cond_8

    move-wide/from16 v6, v34

    .line 1062
    .local v6, "triggerElapsed":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-nez v8, :cond_9

    .line 1063
    move-wide/from16 v16, v6

    .line 1072
    .local v16, "maxElapsed":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1080
    const/16 v24, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide v12, v6

    move-wide/from16 v14, p4

    move-wide/from16 v18, p6

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move/from16 v23, p11

    move-object/from16 v25, p12

    move-object/from16 v26, p13

    move/from16 v27, p14

    move-object/from16 v28, p15

    .line 1079
    :try_start_0
    invoke-direct/range {v8 .. v28}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v29

    .line 1016
    return-void

    .line 1059
    .end local v6    # "triggerElapsed":J
    .end local v16    # "maxElapsed":J
    :cond_8
    move-wide/from16 v6, v32

    .restart local v6    # "triggerElapsed":J
    goto :goto_0

    .line 1064
    :cond_9
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-gez v8, :cond_a

    move-wide/from16 v8, p6

    .line 1065
    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v16

    .line 1067
    .restart local v16    # "maxElapsed":J
    sub-long p4, v16, v6

    goto :goto_1

    .line 1069
    .end local v16    # "maxElapsed":J
    :cond_a
    add-long v16, v6, p4

    .restart local v16    # "maxElapsed":J
    goto :goto_1

    .line 1072
    :catchall_0
    move-exception v8

    monitor-exit v29

    throw v8
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 9
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 970
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 971
    return-void

    .line 974
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 977
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 978
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 979
    :try_start_0
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 990
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 991
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 994
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 996
    if-eqz v3, :cond_1

    .line 997
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 999
    const-string/jumbo v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 969
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 984
    .end local v1    # "gmtOffset":I
    :cond_2
    const/4 v3, 0x1

    .line 985
    :try_start_1
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 978
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V
    .locals 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "knownUid"    # I
    .param p6, "first"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2574
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 2575
    .local v2, "unimportant":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 2576
    if-nez p6, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v3, :cond_2

    .line 2577
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 2581
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 2582
    if-eqz p2, :cond_4

    .line 2583
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2584
    return-void

    .line 2574
    .end local v2    # "unimportant":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "unimportant":Z
    goto :goto_0

    .line 2579
    :cond_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2594
    .end local v2    # "unimportant":Z
    :catch_0
    move-exception v0

    .line 2598
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2572
    return-void

    .line 2587
    .restart local v2    # "unimportant":Z
    :cond_4
    if-ltz p5, :cond_5

    move v1, p5

    .line 2590
    .local v1, "uid":I
    :goto_2
    if-ltz v1, :cond_3

    .line 2591
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2592
    return-void

    .line 2589
    .end local v1    # "uid":I
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 40
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2102
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v34, 0x0

    .line 2106
    .local v34, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AlarmManagerService$Batch;

    .line 2108
    .local v31, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v31

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_2

    .line 2194
    .end local v31    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 2195
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2204
    return v34

    .line 2115
    .restart local v31    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2117
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v29

    .line 2118
    .local v29, "N":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 2119
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v30

    .line 2121
    .local v30, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 2124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v36

    .line 2125
    .local v36, "lastTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    add-long v38, v36, v4

    .line 2126
    .local v38, "minTime":J
    cmp-long v4, p2, v38

    if-gez v4, :cond_5

    .line 2130
    move-wide/from16 v0, v38

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2131
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v38

    if-gez v4, :cond_3

    .line 2132
    move-wide/from16 v0, v38

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2144
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2118
    .end local v36    # "lastTime":J
    .end local v38    # "minTime":J
    :cond_4
    :goto_1
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 2149
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2150
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 2152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    .line 2153
    :goto_2
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 2152
    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 2155
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v30

    if-ne v4, v0, :cond_7

    .line 2156
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2157
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2160
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v30

    if-ne v4, v0, :cond_8

    .line 2161
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2162
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2167
    :cond_8
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_9

    .line 2170
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v8, p2, v8

    move-object/from16 v0, v30

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    long-to-int v4, v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2173
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v32, v4, v8

    .line 2174
    .local v32, "delta":J
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v6, v4, v32

    .line 2175
    .local v6, "nextElapsed":J
    move-object/from16 v0, v30

    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v10, v4, v32

    move-object/from16 v0, v30

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2176
    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v16

    .line 2177
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v23, v0

    .line 2178
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v25, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2177
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1

    move-object/from16 v8, p0

    move v9, v12

    move-wide v12, v6

    .line 2175
    invoke-direct/range {v8 .. v28}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2181
    .end local v6    # "nextElapsed":J
    .end local v32    # "delta":J
    :cond_9
    move-object/from16 v0, v30

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_a

    .line 2182
    const/16 v34, 0x1

    .line 2186
    :cond_a
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_4

    .line 2187
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto/16 :goto_1

    .line 2152
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

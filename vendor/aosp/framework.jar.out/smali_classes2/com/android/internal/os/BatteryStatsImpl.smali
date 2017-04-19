.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$1;
    }
.end annotation


# static fields
.field static final BATTERY_DELTA_LEVEL_FLAG:I = 0x1

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ENERGY:Z = false

.field private static final DEBUG_ENERGY_CPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x1000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_DAILY_ITEMS:I = 0xa

.field static final MAX_HISTORY_BUFFER:I = 0x40000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x50000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field static final MSG_REPORT_CHARGING:I = 0x3

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final NETWORK_STATS_DELTA:I = 0x2

.field private static final NETWORK_STATS_LAST:I = 0x0

.field private static final NETWORK_STATS_NEXT:I = 0x1

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x85


# instance fields
.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mActiveHistoryStates:I

.field mActiveHistoryStates2:I

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mCameraOnNesting:I

.field mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mCameraTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mCharging:Z

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field final mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mCurStepCpuSystemTime:J

.field mCurStepCpuUserTime:J

.field mCurStepMode:I

.field mCurStepStatIOWaitTime:J

.field mCurStepStatIdleTime:J

.field mCurStepStatIrqTime:J

.field mCurStepStatSoftIrqTime:J

.field mCurStepStatSystemTime:J

.field mCurStepStatUserTime:J

.field mCurrentBatteryLevel:I

.field final mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field public final mDailyFile:Lcom/android/internal/os/AtomicFile;

.field final mDailyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$DailyItem;",
            ">;"
        }
    .end annotation
.end field

.field mDailyPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field mDailyStartTime:J

.field mDeviceIdleModeEnabled:Z

.field mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdling:Z

.field mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field final mDrawTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mEndPlatformVersion:Ljava/lang/String;

.field private final mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOnNesting:I

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFlashlightTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field private mHasBluetoothEnergyReporting:Z

.field private mHasWifiEnergyReporting:Z

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargingStateLevel:I

.field mLastDischargeStepLevel:I

.field mLastHistoryElapsedRealtime:J

.field mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mLastHistoryStepLevel:B

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepCpuSystemTime:J

.field mLastStepCpuUserTime:J

.field mLastStepStatIOWaitTime:J

.field mLastStepStatIdleTime:J

.field mLastStepStatIrqTime:J

.field mLastStepStatSoftIrqTime:J

.field mLastStepStatSystemTime:J

.field mLastStepStatUserTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLowDischargeAmountSinceCharge:I

.field mMaxChargeStepLevel:I

.field mMinDischargeStepLevel:I

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mMobileNetworkStats:[Landroid/net/NetworkStats;

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field mNextHistoryTagIdx:I

.field mNextMaxDailyDeadline:J

.field mNextMinDailyDeadline:J

.field mNoAutoReset:Z

.field private mNumConnectivityChange:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mPowerSaveModeEnabled:Z

.field mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mReadHistoryChars:I

.field final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field public mRecordAllHistory:Z

.field mRecordingHistory:Z

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field mTempTotalCpuSystemTimeUs:J

.field mTempTotalCpuUserTimeUs:J

.field final mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkStats:[Landroid/net/NetworkStats;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRadioPowerState:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10168
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>()V

    .line 10167
    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 495
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 131
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 194
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 230
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 238
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 241
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 248
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 249
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 250
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 256
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 257
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 258
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 259
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 260
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 261
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 262
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 263
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 264
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 266
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 274
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 275
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 276
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 326
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 329
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 330
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 359
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 360
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 362
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 366
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 368
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 367
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 371
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 370
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 379
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 387
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 388
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 390
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 391
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 395
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 394
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 397
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 405
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 439
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 440
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 441
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 445
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 446
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 451
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 452
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 456
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 457
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 458
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 462
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 464
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 465
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 466
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 472
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 475
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 476
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 487
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 488
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2359
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2360
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2764
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3911
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3941
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3983
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7619
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7620
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7622
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7628
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7629
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7630
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7631
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7628
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7634
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7635
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7636
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7637
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7634
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8930
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8931
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 496
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 497
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 498
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 499
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 500
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 495
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 6918
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 131
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 194
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 230
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 238
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 241
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 248
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 249
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 250
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 256
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 257
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 258
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 259
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 260
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 261
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 262
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 263
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 264
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 266
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 274
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 275
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 276
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 326
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 329
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 330
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 359
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 360
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 362
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 366
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 368
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 367
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 371
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 370
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 379
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 387
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 388
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 390
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 391
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 395
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 394
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 397
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 405
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 439
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 440
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 441
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 445
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 446
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 451
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 452
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 456
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 457
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 458
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 462
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 464
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 465
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 466
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 472
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 475
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 476
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 487
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 488
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2359
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2360
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2764
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3911
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3941
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3983
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7619
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7620
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7622
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7628
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7629
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7630
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7631
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7628
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7634
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7635
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7636
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7637
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7634
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8930
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8931
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6919
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6920
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6921
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6922
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6923
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6924
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6925
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 6918
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .locals 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "externalSync"    # Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .prologue
    .line 6844
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 130
    new-instance v1, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 131
    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 133
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 194
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 200
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 199
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 226
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 230
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 238
    new-instance v1, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 248
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 249
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 250
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 257
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 258
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 260
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 262
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 263
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 264
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 266
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 275
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 276
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 326
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 329
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 330
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 359
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 360
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 362
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 366
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 368
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 367
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 371
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 370
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 373
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 376
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 379
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 387
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 388
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 390
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 391
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 395
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 394
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 397
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 405
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 439
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 445
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 446
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 451
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 452
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 456
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 457
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 458
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 462
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 464
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 465
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 466
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 472
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 476
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 488
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 489
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2359
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2360
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2764
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3911
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3941
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3983
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7619
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7620
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7622
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7628
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    .line 7629
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 7630
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 7631
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 7628
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7634
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    .line 7635
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 7636
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 7637
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 7634
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8930
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8931
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6845
    if-eqz p1, :cond_0

    .line 6846
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6847
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "batterystats.bin.tmp"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6846
    invoke-direct {v1, v6, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6851
    :goto_0
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats-checkin.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6852
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats-daily.xml"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6853
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6854
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6855
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 6856
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 6858
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v7, v0, -0x64

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6857
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6849
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    goto :goto_0

    .line 6860
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xa

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6861
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6862
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xb

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6863
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xc

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6864
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6865
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 6866
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0xc8

    .line 6867
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6866
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6865
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6869
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xc7

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6870
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x11

    if-ge v0, v1, :cond_3

    .line 6871
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x12c

    .line 6872
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6871
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6870
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6874
    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 6875
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6876
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6874
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6878
    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 6879
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6880
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6878
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6882
    :cond_5
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x190

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6883
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x191

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6884
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6885
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6886
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6887
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x4

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6888
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x5

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6889
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_6

    .line 6890
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x258

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6889
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6892
    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0xd

    if-ge v0, v1, :cond_7

    .line 6893
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x2bc

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6892
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6895
    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    .line 6896
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x320

    .line 6897
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6896
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6895
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6899
    :cond_8
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x7

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6900
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x8

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6901
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x9

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6902
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xd

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6903
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 6905
    .local v4, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 6906
    .local v2, "realtime":J
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 6907
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 6908
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6909
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 6910
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 6911
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6912
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 6913
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6914
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6915
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    .line 6844
    return-void
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v4, 0x0

    .line 2340
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v0, :cond_0

    .line 2341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t do this while iterating history!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2347
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2348
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 2349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2350
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2351
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2352
    const/4 v0, 0x0

    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2353
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2339
    return-void
.end method

.method private addPackageChange(Landroid/os/BatteryStats$PackageChange;)V
    .locals 1
    .param p1, "pc"    # Landroid/os/BatteryStats$PackageChange;

    .prologue
    .line 3289
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3288
    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1970
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    .line 1971
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0xf

    const v2, 0x1ff8000

    and-int/2addr v1, v2

    .line 1970
    or-int/2addr v0, v1

    .line 1972
    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ffe

    .line 1970
    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1982
    const/4 v0, 0x0

    .line 1983
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1984
    const/4 v0, 0x1

    .line 1990
    :cond_0
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    .line 1991
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    .line 1990
    or-int/2addr v1, v2

    .line 1992
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    .line 1990
    or-int/2addr v1, v2

    .line 1993
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    .line 1990
    or-int/2addr v1, v2

    return v1

    .line 1985
    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1986
    const/4 v0, 0x2

    goto :goto_0

    .line 1987
    :cond_2
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1988
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V
    .locals 12
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryStepDetails;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryStepDetails;

    .prologue
    .line 1998
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2002
    .local v2, "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestImmediateCpuUpdate()V

    .line 2004
    if-nez p2, :cond_2

    .line 2007
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2008
    .local v0, "NU":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2009
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2010
    .local v6, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2011
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1998
    .end local v0    # "NU":I
    .end local v1    # "i":I
    .end local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    move-object v2, p1

    .restart local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    goto :goto_0

    .line 2013
    .restart local v0    # "NU":I
    .restart local v1    # "i":I
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 2014
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 2015
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 2016
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 2017
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 2018
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 2019
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 2020
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 2021
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 2022
    return-void

    .line 2034
    .end local v0    # "NU":I
    .end local v1    # "i":I
    :cond_2
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 2035
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 2036
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 2037
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 2038
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 2039
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 2040
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 2041
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 2042
    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2043
    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2044
    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 2045
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2046
    .restart local v0    # "NU":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 2047
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2048
    .restart local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 2049
    .local v5, "totalUTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 2050
    .local v3, "totalSTime":I
    add-int v4, v5, v3

    .line 2051
    .local v4, "totalTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2052
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2053
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_3

    .line 2046
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2056
    :cond_3
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_4

    .line 2057
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2058
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2059
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_3

    .line 2061
    :cond_4
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2062
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2063
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 2064
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_5

    .line 2065
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2066
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2067
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_3

    .line 2069
    :cond_5
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2070
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2071
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 2072
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2073
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2074
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    goto :goto_3

    .line 2078
    .end local v3    # "totalSTime":I
    .end local v4    # "totalTime":I
    .end local v5    # "totalUTime":I
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 2079
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 2080
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 2081
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 2082
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 2083
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 2084
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 2085
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 1997
    return-void
.end method

.method private computeTimePerLevel([JI)J
    .locals 8
    .param p1, "steps"    # [J
    .param p2, "numSteps"    # I

    .prologue
    .line 8643
    if-gtz p2, :cond_0

    .line 8644
    const-wide/16 v4, -0x1

    return-wide v4

    .line 8646
    :cond_0
    const-wide/16 v2, 0x0

    .line 8647
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 8648
    aget-wide v4, p1, v0

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 8647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8650
    :cond_1
    int-to-long v4, p2

    div-long v4, v2, v4

    return-wide v4
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4080
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4081
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 4082
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 4083
    .local v1, "newArray":[Ljava/lang/String;
    if-lez v0, :cond_0

    .line 4084
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4086
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 4087
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4089
    :cond_1
    return-object v1

    .line 4091
    .end local v1    # "newArray":[Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private fixPhoneServiceState(II)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "signalBin"    # I

    .prologue
    const/4 v1, 0x1

    .line 3334
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_0

    .line 3337
    if-ne p1, v1, :cond_0

    .line 3338
    if-lez p2, :cond_0

    .line 3339
    const/4 p1, 0x0

    .line 3343
    :cond_0
    return p1
.end method

.method private getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "networkStatsBuffer"    # [Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 7647
    const-string/jumbo v1, "net.qtaguid_enabled"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7649
    return-object v6

    .line 7652
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7653
    aget-object v2, p2, v7

    .line 7652
    const/4 v3, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 7655
    .local v0, "stats":Landroid/net/NetworkStats;
    aget-object v1, p2, v4

    .line 7656
    aget-object v2, p2, v5

    .line 7654
    invoke-static {v0, v1, v6, v6, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    aput-object v1, p2, v5

    .line 7657
    aget-object v1, p2, v4

    aput-object v1, p2, v7

    .line 7658
    aput-object v0, p2, v4

    .line 7659
    aget-object v1, p2, v5

    return-object v1
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4070
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4071
    return-object p0

    .line 4073
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 4074
    .local v0, "newArray":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4075
    array-length v1, p0

    aput-object p1, v0, v1

    .line 4076
    return-object v0
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .locals 13
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 7570
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v1, 0x13

    if-ge v6, v1, :cond_3

    .line 7571
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 7570
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7575
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 7576
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_0

    .line 7579
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 7580
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 7581
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 7582
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7583
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    .line 7582
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 7581
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7569
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method private readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "batteryLevelInt"    # I
    .param p2, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1976
    const/high16 v0, -0x2000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1977
    const v0, 0x1ff8000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1978
    and-int/lit16 v0, p1, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1975
    return-void
.end method

.method private readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x1

    .line 7119
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v9, :cond_1

    .line 7120
    if-ne v8, v12, :cond_0

    .line 7124
    :cond_1
    if-eq v8, v9, :cond_3

    .line 7125
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "no start tag found"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7145
    .end local v8    # "type":I
    :catch_0
    move-exception v1

    .line 7146
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7116
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    .line 7128
    .restart local v8    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 7129
    .local v6, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 7130
    if-ne v8, v13, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_2

    .line 7131
    :cond_5
    if-eq v8, v13, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 7135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 7136
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 7137
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 7147
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v3

    .line 7148
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7139
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_6
    :try_start_2
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <daily-items>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 7140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 7139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7141
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 7149
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v4

    .line 7150
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7155
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 7156
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7153
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v0

    .line 7154
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7151
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 7152
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1811
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1812
    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1809
    return-void
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .prologue
    .line 8416
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 8417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8419
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 8418
    const/4 v6, 0x5

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8420
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8415
    :cond_0
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 8425
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 8426
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8428
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 8427
    const/16 v6, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8429
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8424
    :cond_0
    return-void
.end method

.method private requestImmediateCpuUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2716
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2717
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 2715
    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2709
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2710
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2711
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2708
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetAllStatsLocked()V
    .locals 10

    .prologue
    .line 7483
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 7485
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 7487
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7489
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7490
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7491
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7492
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7493
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7494
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7495
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7496
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7497
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7498
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 7499
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7501
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7502
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x11

    if-ge v0, v3, :cond_2

    .line 7503
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7502
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7505
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 7506
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7507
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7505
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7509
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7510
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7511
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7512
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7513
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7514
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7515
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7516
    const/4 v0, 0x0

    :goto_4
    const/16 v3, 0x8

    if-ge v0, v3, :cond_4

    .line 7517
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7516
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7519
    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v3, 0xd

    if-ge v0, v3, :cond_5

    .line 7520
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7519
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7522
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    .line 7523
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7522
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7525
    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x4

    if-ge v0, v3, :cond_7

    .line 7526
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7527
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7525
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7529
    :cond_7
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 7531
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7532
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7533
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 7534
    add-int/lit8 v0, v0, -0x1

    .line 7531
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7538
    :cond_9
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 7539
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "timer$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7540
    .local v1, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_9

    .line 7542
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7545
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_b
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 7546
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "timer$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7547
    .restart local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_a

    .line 7549
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7552
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 7553
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 7554
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    .line 7555
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 7556
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 7557
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 7558
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 7559
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 7560
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 7561
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 7562
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 7564
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 7566
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 7482
    return-void
.end method

.method private scheduleSyncExternalStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8434
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_0

    .line 8435
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSync(Ljava/lang/String;)V

    .line 8433
    :cond_0
    return-void
.end method

.method private scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8440
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_0

    .line 8441
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleWifiSync(Ljava/lang/String;)V

    .line 8439
    :cond_0
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .prologue
    .line 8403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8404
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8406
    if-eqz p5, :cond_1

    const/4 v6, 0x7

    .line 8407
    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 8405
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8408
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8409
    if-eqz p5, :cond_0

    .line 8410
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 8402
    :cond_0
    return-void

    .line 8406
    :cond_1
    const/4 v6, 0x5

    goto :goto_0
.end method

.method private updateAllPhoneStateLocked(III)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    .prologue
    const/4 v7, 0x1

    .line 3347
    const/4 v3, 0x0

    .line 3348
    .local v3, "scanning":Z
    const/4 v2, 0x0

    .line 3350
    .local v2, "newHistory":Z
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 3351
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 3352
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 3354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3355
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3357
    .local v4, "uptime":J
    if-ne p2, v7, :cond_0

    .line 3360
    if-ne p1, v7, :cond_0

    .line 3361
    if-lez p3, :cond_0

    .line 3362
    const/4 p1, 0x0

    .line 3367
    :cond_0
    const/4 v6, 0x3

    if-ne p1, v6, :cond_8

    .line 3368
    const/4 p3, -0x1

    .line 3388
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 3390
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3391
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3394
    const/4 v2, 0x1

    .line 3395
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3399
    :cond_2
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    if-eq v6, p1, :cond_3

    .line 3400
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v7, v7, -0x1c1

    .line 3401
    shl-int/lit8 v8, p1, 0x6

    .line 3400
    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3404
    const/4 v2, 0x1

    .line 3405
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 3408
    :cond_3
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v6, p3, :cond_6

    .line 3409
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v6, :cond_4

    .line 3410
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3413
    :cond_4
    if-ltz p3, :cond_9

    .line 3414
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3415
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3417
    :cond_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v7, v7, -0x39

    .line 3418
    shl-int/lit8 v8, p3, 0x3

    .line 3417
    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3421
    const/4 v2, 0x1

    .line 3425
    :goto_1
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 3428
    :cond_6
    if-eqz v2, :cond_7

    .line 3429
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3346
    :cond_7
    return-void

    .line 3371
    :cond_8
    if-eqz p1, :cond_1

    .line 3376
    if-ne p1, v7, :cond_1

    .line 3377
    const/4 v3, 0x1

    .line 3378
    const/4 p3, 0x0

    .line 3379
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3380
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3381
    const/4 v2, 0x1

    .line 3384
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto/16 :goto_0

    .line 3423
    :cond_9
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllPhoneSignalStrengthTimersLocked(I)V

    goto :goto_1
.end method

.method private writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 7047
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7048
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7049
    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7050
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 7051
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$DailyItem;

    .line 7052
    .local v0, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7053
    const-string/jumbo v5, "start"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7054
    const-string/jumbo v5, "end"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7055
    const-string/jumbo v5, "dis"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 7056
    const-string/jumbo v5, "chg"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 7057
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 7058
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 7059
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$PackageChange;

    .line 7060
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v5, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v5, :cond_0

    .line 7061
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7062
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7063
    const-string/jumbo v5, "ver"

    iget v6, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7064
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7058
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7066
    :cond_0
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7067
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7068
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 7072
    .end local v2    # "j":I
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7050
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 7074
    .end local v0    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_2
    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7075
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 7046
    return-void
.end method

.method private writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "tmpBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7080
    if-eqz p3, :cond_1

    .line 7081
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7082
    const-string/jumbo v1, "n"

    iget v2, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7083
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-ge v0, v1, :cond_0

    .line 7084
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7085
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7086
    invoke-virtual {p3, v0, p4}, Landroid/os/BatteryStats$LevelStepTracker;->encodeEntryAt(ILjava/lang/StringBuilder;)V

    .line 7087
    const-string/jumbo v1, "v"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7088
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7083
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7090
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7079
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 5
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1793
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1795
    .local v1, "idxObj":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1796
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1806
    .local v0, "idx":I
    :goto_0
    return v0

    .line 1798
    .end local v0    # "idx":I
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1799
    .restart local v0    # "idx":I
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 1800
    .local v2, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1801
    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1802
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1804
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    goto :goto_0
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2221
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v3, :cond_7

    .line 2225
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long v4, v4, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v18, v4, v6

    .line 2226
    .local v18, "timeDiff":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v4, v5

    xor-int v12, v3, v4

    .line 2227
    .local v12, "diffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v4, v5

    xor-int v13, v3, v4

    .line 2228
    .local v13, "diffStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v14, v3, v4

    .line 2229
    .local v14, "lastDiffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v15, v3, v4

    .line 2235
    .local v15, "lastDiffStates2":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_6

    .line 2236
    const-wide/16 v4, 0x3e8

    cmp-long v3, v18, v4

    if-gez v3, :cond_6

    and-int v3, v12, v14

    if-nez v3, :cond_6

    .line 2237
    and-int v3, v13, v15

    if-nez v3, :cond_6

    .line 2238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_0

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_6

    .line 2239
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_6

    .line 2240
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_6

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_2

    .line 2242
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_6

    .line 2243
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_6

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v4, :cond_6

    .line 2245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v4, :cond_6

    .line 2246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v4, :cond_6

    .line 2247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p5

    iget-short v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v4, :cond_6

    .line 2248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p5

    iget-char v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v3, v4, :cond_6

    .line 2254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2256
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long p1, v4, v6

    .line 2261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_3

    .line 2262
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2263
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2268
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_4

    .line 2269
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2270
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2275
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_5

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2277
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2278
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2280
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2283
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    .line 2284
    .local v11, "dataSize":I
    const/high16 v3, 0x40000

    if-lt v11, v3, :cond_10

    .line 2285
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    if-nez v3, :cond_8

    .line 2286
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2287
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2288
    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2289
    return-void

    .line 2222
    .end local v11    # "dataSize":I
    .end local v12    # "diffStates":I
    .end local v13    # "diffStates2":I
    .end local v14    # "lastDiffStates":I
    .end local v15    # "lastDiffStates2":I
    .end local v18    # "timeDiff":J
    :cond_7
    return-void

    .line 2293
    .restart local v11    # "dataSize":I
    .restart local v12    # "diffStates":I
    .restart local v13    # "diffStates2":I
    .restart local v14    # "lastDiffStates":I
    .restart local v15    # "lastDiffStates2":I
    .restart local v18    # "timeDiff":J
    :cond_8
    const/16 v17, 0x0

    .line 2294
    .local v17, "writeAnyway":Z
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, -0x190000

    and-int/2addr v3, v4

    .line 2295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2294
    and-int v2, v3, v4

    .line 2296
    .local v2, "curStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-eq v3, v2, :cond_9

    .line 2299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v16, v0

    .line 2300
    .local v16, "old":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    const v4, 0x18ffff

    or-int/2addr v4, v2

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2301
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_c

    const/16 v17, 0x1

    .line 2303
    .end local v16    # "old":I
    .end local v17    # "writeAnyway":Z
    :cond_9
    :goto_0
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x687f0000

    and-int/2addr v3, v4

    .line 2304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2303
    and-int v10, v3, v4

    .line 2305
    .local v10, "curStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-eq v3, v10, :cond_a

    .line 2308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v16, v0

    .line 2309
    .restart local v16    # "old":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    const v4, -0x687f0001

    or-int/2addr v4, v10

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2310
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    :goto_1
    or-int v17, v17, v3

    .line 2317
    .end local v16    # "old":I
    :cond_a
    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_f

    .line 2318
    const/high16 v3, 0x50000

    if-ge v11, v3, :cond_b

    .line 2319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v3, v4

    .line 2320
    const/high16 v4, 0x180000

    .line 2319
    and-int/2addr v3, v4

    if-nez v3, :cond_e

    .line 2323
    :cond_b
    return-void

    .line 2301
    .end local v10    # "curStates2":I
    .restart local v16    # "old":I
    .restart local v17    # "writeAnyway":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_0

    .line 2310
    .end local v17    # "writeAnyway":Z
    .restart local v10    # "curStates2":I
    :cond_d
    const/4 v3, 0x0

    goto :goto_1

    .line 2321
    .end local v16    # "old":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v3, v4

    .line 2322
    const/high16 v4, -0x68800000

    .line 2321
    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 2326
    :cond_f
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2327
    return-void

    .line 2330
    .end local v2    # "curStates":I
    .end local v10    # "curStates2":I
    :cond_10
    if-nez v11, :cond_11

    .line 2332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    iput-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2333
    const/4 v8, 0x7

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2335
    :cond_11
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2220
    return-void
.end method

.method public addHistoryEventLocked(JJILjava/lang/String;I)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2447
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2448
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2449
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2450
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2445
    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2383
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2386
    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 2363
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 2364
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    sub-long v16, p1, v4

    .line 2365
    .local v16, "diffElapsed":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    sub-long v18, p3, v4

    .line 2366
    .local v18, "diffUptime":J
    const-wide/16 v4, 0x14

    sub-long v4, v16, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_0

    .line 2367
    sub-long v4, v16, v18

    sub-long v6, p1, v4

    .line 2368
    .local v6, "wakeElapsedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, 0x7fffffff

    and-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2376
    .end local v6    # "wakeElapsedTime":J
    .end local v16    # "diffElapsed":J
    .end local v18    # "diffUptime":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, -0x80000000

    or-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2377
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2378
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2362
    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2455
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_0

    .line 2456
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2460
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2462
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2453
    return-void

    .line 2458
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v1, 0x0

    .line 2466
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    .line 2467
    iput-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2468
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2469
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2471
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2465
    :goto_0
    return-void

    .line 2473
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0
.end method

.method public addIsolatedUidLocked(II)V
    .locals 1
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2523
    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .locals 7
    .param p1, "uptimeMs"    # J

    .prologue
    const/4 v6, 0x0

    .line 2895
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2896
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    sub-long v0, p1, v4

    .line 2897
    .local v0, "deltaUptime":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v2

    .line 2898
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedCount(I)V

    .line 2899
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedTotalTime(J)V

    .line 2900
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2894
    .end local v0    # "deltaUptime":J
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_0
    return-void
.end method

.method clearHistoryLocked()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2488
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 2489
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2490
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2491
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2493
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2497
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2498
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2499
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 2500
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 2501
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2502
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2503
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2504
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2477
    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .locals 2

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2216
    return-void
.end method

.method public commitPendingDataToDisk()V
    .locals 5

    .prologue
    .line 8973
    monitor-enter p0

    .line 8974
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8975
    .local v1, "next":Landroid/os/Parcel;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8976
    if-nez v1, :cond_0

    monitor-exit p0

    .line 8977
    return-void

    .line 8980
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 8984
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8985
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 8986
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 8987
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8988
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 8989
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8995
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8971
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 8973
    .end local v1    # "next":Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 8990
    .restart local v1    # "next":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 8991
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v3, "BatteryStats"

    const-string/jumbo v4, "Error writing battery statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8992
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8995
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 8993
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 8994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8995
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8993
    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8628
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8638
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8633
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 8681
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-nez v2, :cond_0

    .line 8682
    return-wide v4

    .line 8697
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 8698
    return-wide v4

    .line 8700
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    .line 8701
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 8702
    return-wide v4

    .line 8704
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeBatteryUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8623
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 8719
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v2, :cond_0

    .line 8721
    return-wide v4

    .line 8736
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 8737
    return-wide v4

    .line 8739
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    .line 8740
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 8741
    return-wide v4

    .line 8743
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8613
    packed-switch p3, :pswitch_data_0

    .line 8618
    const-wide/16 v0, 0x0

    return-wide v0

    .line 8614
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 8615
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    .line 8616
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    .line 8613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8603
    packed-switch p3, :pswitch_data_0

    .line 8608
    const-wide/16 v0, 0x0

    return-wide v0

    .line 8604
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 8605
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    .line 8606
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    .line 8603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 9047
    const/4 v0, 0x0

    return v0
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 10247
    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 10187
    return-void
.end method

.method ensureStartClockTime(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide v4, 0x757b12c00L

    .line 2565
    const-wide v0, 0x757b12c00L

    .line 2566
    .local v0, "ABOUT_ONE_YEAR":J
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 2571
    const/4 v2, 0x1

    return v2

    .line 2573
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public finishAddingCpuLocked(IIIIIIII)V
    .locals 4
    .param p1, "totalUTime"    # I
    .param p2, "totalSTime"    # I
    .param p3, "statUserTime"    # I
    .param p4, "statSystemTime"    # I
    .param p5, "statIOWaitTime"    # I
    .param p6, "statIrqTime"    # I
    .param p7, "statSoftIrqTime"    # I
    .param p8, "statIdleTime"    # I

    .prologue
    .line 2930
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    .line 2931
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    .line 2932
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    .line 2933
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    .line 2934
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    .line 2935
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    .line 2936
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    int-to-long v2, p7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    .line 2937
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    int-to-long v2, p8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    .line 2925
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    .prologue
    .line 7407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7408
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 7406
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    .prologue
    .line 7326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7327
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7325
    return-void
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 8594
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 4

    .prologue
    .line 8598
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 8772
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 8767
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .locals 6

    .prologue
    .line 8762
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4270
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4271
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4273
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCameraOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8748
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getCurrentDailyStartTime()J
    .locals 2

    .prologue
    .line 7264
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    return-wide v0
.end method

.method public getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8753
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
    .locals 2
    .param p1, "daysAgo"    # I

    .prologue
    .line 7258
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 7259
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$DailyItem;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDailyPackageChanges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8758
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceIdleModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdleModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceIdlingCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdlingTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDischargeAmount(I)I
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 8821
    if-nez p1, :cond_1

    .line 8822
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v0

    .line 8824
    .local v0, "dischargeAmount":I
    :goto_0
    if-gez v0, :cond_0

    .line 8825
    const/4 v0, 0x0

    .line 8827
    :cond_0
    return v0

    .line 8823
    .end local v0    # "dischargeAmount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevel()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "dischargeAmount":I
    goto :goto_0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    .prologue
    .line 8853
    monitor-enter p0

    .line 8854
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8855
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 8856
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8857
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8859
    return v0

    .line 8853
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    .prologue
    .line 8864
    monitor-enter p0

    .line 8865
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 8866
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 8867
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8868
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8870
    return v0

    .line 8864
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    .prologue
    .line 8831
    monitor-enter p0

    .line 8832
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8833
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8834
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8835
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8837
    return v0

    .line 8831
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    .prologue
    .line 8842
    monitor-enter p0

    .line 8843
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 8844
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8845
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8846
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8848
    return v0

    .line 8842
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    .prologue
    .line 8788
    monitor-enter p0

    .line 8789
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 8788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .locals 1

    .prologue
    .line 8794
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8709
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    .prologue
    .line 8777
    monitor-enter p0

    .line 8778
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 8777
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .locals 1

    .prologue
    .line 8783
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    return v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashlightOnCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4294
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4232
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 8810
    monitor-enter p0

    .line 8811
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8812
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8813
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8815
    return v0

    .line 8810
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getHistoryBaseTime()J
    .locals 2

    .prologue
    .line 7414
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .locals 2

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .locals 1

    .prologue
    .line 7364
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7376
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHistoryTotalSize()I
    .locals 1

    .prologue
    .line 7332
    const/high16 v0, 0x40000

    return v0
.end method

.method public getHistoryUsedSize()I
    .locals 1

    .prologue
    .line 7336
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public getInteractiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOnBattery()Z
    .locals 1

    .prologue
    .line 4342
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1785
    .local v0, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1787
    .restart local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    :cond_0
    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 8799
    monitor-enter p0

    .line 8800
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8801
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8802
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8804
    return v0

    .line 8799
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4212
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4304
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4305
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4307
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4313
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4316
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 8
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v7, 0x0

    .line 7386
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 7387
    .local v1, "pos":I
    if-nez v1, :cond_0

    .line 7388
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7390
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-lt v1, v6, :cond_1

    const/4 v0, 0x1

    .line 7391
    .local v0, "end":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 7392
    return v7

    .line 7390
    .end local v0    # "end":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "end":Z
    goto :goto_0

    .line 7395
    :cond_2
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 7396
    .local v2, "lastRealtime":J
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7397
    .local v4, "lastWalltime":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7398
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    .line 7399
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 7400
    iget-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v2

    add-long/2addr v6, v4

    iput-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7402
    :cond_3
    const/4 v6, 0x1

    return v6
.end method

.method public getNextMaxDailyDeadline()J
    .locals 2

    .prologue
    .line 7274
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    return-wide v0
.end method

.method public getNextMinDailyDeadline()J
    .locals 2

    .prologue
    .line 7269
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    return-wide v0
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 10
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7293
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-lt v1, v3, :cond_2

    const/4 v8, 0x1

    .line 7294
    .local v8, "end":Z
    :goto_0
    if-nez v8, :cond_0

    .line 7295
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7296
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x6

    if-ne v1, v9, :cond_3

    move v1, v7

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7299
    .local v0, "cur":Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_5

    .line 7300
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_1

    if-eqz v8, :cond_4

    .line 7303
    :cond_1
    :goto_2
    return v6

    .line 7293
    .end local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "end":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "end":Z
    goto :goto_0

    :cond_3
    move v1, v6

    .line 7296
    goto :goto_1

    .line 7301
    .restart local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "Old history ends before new history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7305
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 7306
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7307
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_6

    .line 7308
    if-eqz v8, :cond_7

    .line 7309
    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "New history ends before old history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7321
    :cond_6
    :goto_3
    return v7

    .line 7310
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7311
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "BatteryStatsImpl"

    const/4 v9, 0x5

    invoke-direct {v1, v9, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7312
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Histories differ!"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7313
    const-string/jumbo v1, "Old history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7314
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7315
    const-string/jumbo v1, "New history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7316
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7318
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3
.end method

.method public getNumConnectivityChange(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4164
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 4165
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4166
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    sub-int/2addr v0, v1

    .line 4170
    :cond_0
    :goto_0
    return v0

    .line 4167
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4168
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 8909
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8910
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8911
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getParcelVersion()I
    .locals 1

    .prologue
    .line 4338
    const/16 v0, 0x85

    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "which"    # I

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4199
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4174
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4189
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4194
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerSaveModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4144
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPowerSaveModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8899
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8900
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8901
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2949
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2950
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2951
    .local v1, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_1

    .line 2952
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 2953
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    .line 2954
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_0

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v2, p3, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2

    .line 2957
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-wide v2
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 2
    .param p1, "brightnessBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4122
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 8919
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8920
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8921
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartClockTime()J
    .locals 8

    .prologue
    .line 4321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4322
    .local v2, "currentTime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    .line 4323
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 4326
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    return-wide v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 7419
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 8878
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8879
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_0

    .line 8880
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8881
    .restart local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8883
    :cond_0
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1772
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1773
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1774
    .restart local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :cond_0
    return-object v0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4281
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4282
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4284
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4257
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .locals 1
    .param p1, "wifiState"    # I
    .param p2, "which"    # I

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiStateTime(IJI)J
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "which"    # I

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBluetoothActivityReporting()Z
    .locals 1

    .prologue
    .line 4266
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    return v0
.end method

.method public hasWifiActivityReporting()Z
    .locals 1

    .prologue
    .line 4277
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    return v0
.end method

.method initDischarge()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7445
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 7446
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 7447
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7448
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7449
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7450
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 7451
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7452
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7444
    return-void
.end method

.method initTimes(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 7435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 7436
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7437
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7438
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 7439
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 7440
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 7441
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 7434
    return-void
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 7427
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    return v0
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 7423
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 7431
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapUid(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2550
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2551
    .local v0, "isolated":I
    if-lez v0, :cond_0

    .end local v0    # "isolated":I
    :goto_0
    return v0

    .restart local v0    # "isolated":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3651
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3652
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    .line 3650
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3647
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    .line 3645
    return-void
.end method

.method public noteAlarmFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x400d

    .line 2696
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_0

    .line 2697
    return-void

    .line 2699
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2701
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2702
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2703
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2705
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2695
    return-void
.end method

.method public noteAlarmStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x800d

    .line 2683
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_0

    .line 2684
    return-void

    .line 2686
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2688
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2689
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2690
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2692
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2682
    return-void
.end method

.method public noteAudioOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3563
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3564
    return-void

    .line 3566
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3568
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3569
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_1

    .line 3570
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3573
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3574
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3576
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    .line 3562
    return-void
.end method

.method public noteAudioOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3548
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3550
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3551
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3552
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3555
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3556
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3558
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3559
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    .line 3547
    return-void
.end method

.method public noteCameraOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3711
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_0

    .line 3712
    return-void

    .line 3714
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3716
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3717
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_1

    .line 3718
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3721
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3722
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3724
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOffLocked(J)V

    .line 3710
    return-void
.end method

.method public noteCameraOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3697
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3699
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3700
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_0

    .line 3701
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3704
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3705
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3707
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOnLocked(J)V

    .line 3696
    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 2868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2869
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2873
    .local v12, "uptime":J
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 2874
    .local v2, "NN":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v2, :cond_0

    .line 2875
    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2874
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2878
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    move-result v14

    .line 2879
    .local v14, "NO":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    .line 2880
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2879
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2867
    :cond_1
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3158
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3159
    .local v4, "uptime":J
    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3161
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 3156
    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .locals 8

    .prologue
    .line 2577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2578
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2579
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, "uptime":J
    move-object v1, p0

    .line 2580
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 2581
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    .line 2576
    return-void
.end method

.method public noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 3227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3228
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3229
    .local v4, "uptime":J
    move v0, p1

    .line 3230
    .local v0, "nowIdling":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 3235
    .end local v0    # "nowIdling":Z
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eq v1, v0, :cond_1

    .line 3236
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    .line 3237
    if-eqz v0, :cond_4

    const/16 v9, 0x8

    .line 3238
    .local v9, "stepState":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v9

    or-int/2addr v1, v6

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3239
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x9

    or-int/2addr v1, v9

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3240
    if-eqz p1, :cond_5

    .line 3241
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3246
    .end local v9    # "stepState":I
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    if-eq v1, p1, :cond_2

    .line 3247
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    .line 3249
    if-eqz p2, :cond_6

    move-object v7, p2

    .line 3248
    :goto_3
    const/16 v6, 0xa

    move-object v1, p0

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3250
    if-eqz p1, :cond_7

    .line 3251
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3254
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3261
    :goto_4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3226
    :cond_2
    return-void

    .line 3230
    .restart local v0    # "nowIdling":Z
    :cond_3
    if-nez p2, :cond_0

    .line 3233
    const/4 v0, 0x1

    .local v0, "nowIdling":Z
    goto :goto_0

    .line 3237
    .end local v0    # "nowIdling":Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "stepState":I
    goto :goto_1

    .line 3243
    :cond_5
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_2

    .line 3249
    .end local v9    # "stepState":I
    :cond_6
    const-string/jumbo v7, ""

    goto :goto_3

    .line 3256
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3259
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_4
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2555
    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    .line 2556
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    return-void

    .line 2559
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2560
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    .line 2561
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2554
    return-void
.end method

.method public noteFlashlightOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3680
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_0

    .line 3681
    return-void

    .line 3683
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3685
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3686
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_1

    .line 3687
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3690
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3691
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3693
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOffLocked(J)V

    .line 3679
    return-void
.end method

.method public noteFlashlightOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3666
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3668
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3669
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_0

    .line 3670
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3673
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3674
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3676
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOnLocked(J)V

    .line 3665
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4014
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4015
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4016
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 4015
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4013
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3914
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3915
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3916
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3917
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3918
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3921
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3923
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3924
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    .line 3913
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4021
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4022
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4023
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 4022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4020
    :cond_0
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3928
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3930
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3931
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3932
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3933
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3936
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3938
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    .line 3927
    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .prologue
    .line 3144
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    if-eq v2, p1, :cond_0

    .line 3145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3146
    .local v0, "elapsedRealtime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 3148
    if-eqz p1, :cond_1

    .line 3149
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3143
    .end local v0    # "elapsedRealtime":J
    :cond_0
    :goto_0
    return-void

    .line 3151
    .restart local v0    # "elapsedRealtime":J
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_0
.end method

.method public noteJobFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4006

    .line 2672
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2674
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2675
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;J)V

    .line 2676
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2677
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2679
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2671
    return-void
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8006

    .line 2661
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2663
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2664
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    .line 2665
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2666
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2668
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2660
    return-void
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3166
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3167
    .local v8, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    if-eq v1, p1, :cond_0

    .line 3170
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_1

    .line 3171
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3172
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 3173
    move-wide v6, v2

    .local v6, "realElapsedRealtimeMs":J
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3174
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3190
    :goto_1
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3191
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 3192
    if-eqz v0, :cond_6

    .line 3193
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3194
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3164
    .end local v0    # "active":Z
    .end local v6    # "realElapsedRealtimeMs":J
    :cond_0
    :goto_2
    return-void

    .line 3170
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3171
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3176
    :cond_3
    const-wide/32 v10, 0xf4240

    div-long v6, p2, v10

    .line 3177
    .restart local v6    # "realElapsedRealtimeMs":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3178
    .local v4, "lastUpdateTimeMs":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_5

    .line 3179
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Data connection inactive timestamp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3180
    const-string/jumbo v11, " is before start time "

    .line 3179
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    move-wide v6, v2

    .line 3186
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v11, -0x2000001

    and-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1

    .line 3182
    :cond_5
    cmp-long v1, v6, v2

    if-gez v1, :cond_4

    .line 3183
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sub-long v10, v2, v6

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_3

    .line 3196
    .end local v4    # "lastUpdateTimeMs":J
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3197
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 3198
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_2
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 4095
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4096
    :cond_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4097
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 4103
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4104
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 4094
    :goto_1
    return-void

    .line 4100
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_0

    .line 4107
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    goto :goto_1
.end method

.method public noteNetworkStatsEnabledLocked()V
    .locals 3

    .prologue
    .line 4116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4117
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 4118
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 4112
    return-void
.end method

.method public notePackageInstalledLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 3266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3267
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3268
    .local v4, "uptime":J
    const/16 v6, 0xb

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3270
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3271
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3272
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3273
    iput p2, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 3274
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3265
    return-void
.end method

.method public notePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3279
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3280
    .local v4, "uptime":J
    const/16 v6, 0xc

    .line 3281
    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    .line 3280
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3282
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3283
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3284
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3285
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3277
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 3448
    const/4 v0, 0x0

    .line 3449
    .local v0, "bin":I
    if-eqz p2, :cond_0

    .line 3450
    packed-switch p1, :pswitch_data_0

    .line 3497
    const/16 v0, 0x10

    .line 3502
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_2

    .line 3503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3504
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3505
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v6, v6, -0x3e01

    .line 3506
    shl-int/lit8 v7, v0, 0x9

    .line 3505
    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3509
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3510
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_1

    .line 3511
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3514
    :cond_1
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 3515
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3447
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3452
    :pswitch_0
    const/4 v0, 0x2

    .line 3453
    goto :goto_0

    .line 3455
    :pswitch_1
    const/4 v0, 0x1

    .line 3456
    goto :goto_0

    .line 3458
    :pswitch_2
    const/4 v0, 0x3

    .line 3459
    goto :goto_0

    .line 3461
    :pswitch_3
    const/4 v0, 0x4

    .line 3462
    goto :goto_0

    .line 3464
    :pswitch_4
    const/4 v0, 0x5

    .line 3465
    goto :goto_0

    .line 3467
    :pswitch_5
    const/4 v0, 0x6

    .line 3468
    goto :goto_0

    .line 3470
    :pswitch_6
    const/4 v0, 0x7

    .line 3471
    goto :goto_0

    .line 3473
    :pswitch_7
    const/16 v0, 0x8

    .line 3474
    goto :goto_0

    .line 3476
    :pswitch_8
    const/16 v0, 0x9

    .line 3477
    goto :goto_0

    .line 3479
    :pswitch_9
    const/16 v0, 0xa

    .line 3480
    goto :goto_0

    .line 3482
    :pswitch_a
    const/16 v0, 0xb

    .line 3483
    goto :goto_0

    .line 3485
    :pswitch_b
    const/16 v0, 0xc

    .line 3486
    goto :goto_0

    .line 3488
    :pswitch_c
    const/16 v0, 0xd

    .line 3489
    goto :goto_0

    .line 3491
    :pswitch_d
    const/16 v0, 0xe

    .line 3492
    goto :goto_0

    .line 3494
    :pswitch_e
    const/16 v0, 0xf

    .line 3495
    goto :goto_0

    .line 3450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .locals 7

    .prologue
    .line 3309
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v4, :cond_0

    .line 3310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3311
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3312
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x1000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3315
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3316
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3317
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3308
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneOnLocked()V
    .locals 7

    .prologue
    .line 3296
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v4, :cond_0

    .line 3297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3298
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3299
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3302
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3303
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3304
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3295
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 3443
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 3444
    .local v0, "bin":I
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3441
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "simState"    # I

    .prologue
    .line 3438
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3437
    return-void
.end method

.method public notePowerSaveMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 3204
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    if-eq v3, p1, :cond_0

    .line 3205
    if-eqz p1, :cond_1

    const/4 v2, 0x4

    .line 3206
    .local v2, "stepState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x4

    xor-int/2addr v6, v2

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3207
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v3, v3, -0x5

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3209
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3210
    .local v4, "uptime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    .line 3211
    if-eqz p1, :cond_2

    .line 3212
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3215
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3222
    :goto_1
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3203
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "stepState":I
    .end local v4    # "uptime":J
    :cond_0
    return-void

    .line 3205
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "stepState":I
    goto :goto_0

    .line 3217
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3220
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2610
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2611
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2612
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2613
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    .line 2609
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2602
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2603
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2604
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2605
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    .line 2601
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2941
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2942
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2943
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    .line 2944
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2940
    :cond_0
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4001

    .line 2624
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2625
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    return-void

    .line 2628
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2629
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2630
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2632
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_1

    .line 2633
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2635
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2623
    return-void
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8001

    .line 2585
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2586
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2587
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2588
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    .line 2590
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, p1, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2591
    return-void

    .line 2593
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_2

    .line 2594
    return-void

    .line 2596
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2597
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2598
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2584
    return-void
.end method

.method public noteProcessStateLocked(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 2618
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2620
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2617
    return-void
.end method

.method public noteResetAudioLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3612
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-lez v6, :cond_0

    .line 3613
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3614
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3615
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3616
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3619
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3620
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3621
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3622
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3623
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    .line 3621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3611
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3728
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-lez v6, :cond_0

    .line 3729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3730
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3731
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 3732
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3735
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3736
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3737
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3738
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3739
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetCameraLocked(J)V

    .line 3737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3727
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3745
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-lez v6, :cond_0

    .line 3746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3747
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3748
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 3749
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x8000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3752
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3753
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3755
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3756
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetFlashlightLocked(J)V

    .line 3754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3744
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3629
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-lez v6, :cond_0

    .line 3630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3631
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3632
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3633
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3636
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3637
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3639
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3640
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    .line 3638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3628
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .locals 8
    .param p1, "brightness"    # I

    .prologue
    .line 3108
    div-int/lit8 v0, p1, 0x33

    .line 3109
    .local v0, "bin":I
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 3111
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v1, v0, :cond_3

    .line 3112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3113
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3114
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v6, v6, -0x8

    .line 3115
    shl-int/lit8 v7, v0, 0x0

    .line 3114
    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3118
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3119
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 3120
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3121
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3123
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3125
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 3106
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    return-void

    .line 3110
    :cond_4
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public noteScreenStateLocked(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    .line 3037
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eq v1, p1, :cond_2

    .line 3038
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    .line 3039
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3040
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3044
    if-eqz p1, :cond_0

    .line 3045
    add-int/lit8 v12, p1, -0x1

    .line 3046
    .local v12, "stepState":I
    const/4 v1, 0x4

    if-ge v12, v1, :cond_3

    .line 3047
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v12

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3048
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, v12

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3054
    .end local v12    # "stepState":I
    :cond_0
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3056
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3057
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3058
    .local v10, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3061
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3062
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3063
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3064
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3067
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    .line 3068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    .line 3067
    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3072
    const-string/jumbo v4, "screen"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 3076
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3077
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 3036
    .end local v0    # "oldState":I
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    :cond_2
    :goto_1
    return-void

    .line 3050
    .restart local v0    # "oldState":I
    .restart local v12    # "stepState":I
    :cond_3
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected screen state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3079
    .end local v12    # "stepState":I
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3082
    .restart local v8    # "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3083
    .restart local v10    # "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3086
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3087
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3088
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_5

    .line 3089
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3092
    :cond_5
    const-string/jumbo v5, "screen"

    const-string/jumbo v6, "screen"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 3095
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    .line 3096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    .line 3095
    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3099
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3100
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    goto :goto_1
.end method

.method public noteStartGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3009
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3011
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3012
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 3013
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3016
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3018
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3019
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    .line 3008
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2979
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2980
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2981
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2982
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2983
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2986
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2988
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2989
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 2978
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 2856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2857
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2858
    .local v10, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2859
    .local v0, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 2860
    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2859
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2855
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .prologue
    .line 2768
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2769
    if-nez p5, :cond_3

    .line 2772
    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2773
    if-nez p4, :cond_0

    .line 2774
    move-object/from16 p4, p3

    .line 2776
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2777
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v5, 0x8005

    .line 2778
    const/4 v6, 0x0

    .line 2777
    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2780
    const v10, 0x8005

    move-object v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v11, p4

    move v12, p1

    .line 2779
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2783
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_7

    .line 2784
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2787
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2788
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2789
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2790
    if-eqz p6, :cond_6

    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    .line 2791
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2804
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2806
    :cond_3
    if-ltz p1, :cond_5

    .line 2807
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2813
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2815
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    .line 2767
    :cond_5
    return-void

    .line 2790
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 2792
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    if-nez v4, :cond_2

    if-nez p6, :cond_2

    .line 2793
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_2

    .line 2794
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_8

    .line 2796
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2797
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2798
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2799
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2800
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2802
    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    goto :goto_1
.end method

.method public noteStopGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3023
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3024
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3025
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3026
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3027
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 3028
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3031
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    .line 3022
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2993
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2995
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2996
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2997
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2998
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3001
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3003
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 2992
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 2886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2887
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2888
    .local v8, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v10

    .line 2889
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 2890
    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2889
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2885
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .prologue
    .line 2821
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2822
    if-nez p5, :cond_2

    .line 2823
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2824
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2825
    if-nez p4, :cond_0

    .line 2826
    move-object/from16 p4, p3

    .line 2828
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v5, 0x4005

    .line 2829
    const/4 v6, 0x0

    .line 2828
    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2831
    const/16 v10, 0x4005

    move-object v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v11, p4

    move v12, p1

    .line 2830
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2834
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_2

    .line 2835
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2838
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    .line 2839
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 2840
    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2843
    :cond_2
    if-ltz p1, :cond_4

    .line 2844
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2848
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2850
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    .line 2820
    :cond_4
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4004

    .line 2650
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2652
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2653
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    .line 2654
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2655
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2657
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2649
    return-void
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8004

    .line 2639
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2641
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2642
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    .line 2643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2644
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2646
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2638
    return-void
.end method

.method public noteUserActivityLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3130
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_0

    .line 3131
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3132
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 3129
    :cond_0
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3661
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3662
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    .line 3660
    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 3656
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3657
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    .line 3655
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3595
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3596
    return-void

    .line 3598
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3600
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3601
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_1

    .line 3602
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3605
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3606
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3608
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    .line 3594
    return-void
.end method

.method public noteVideoOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3580
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3582
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3583
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3584
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3587
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3588
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3590
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 3591
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    .line 3579
    return-void
.end method

.method public noteWakeUpLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 3137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3138
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3139
    .local v4, "uptime":J
    const/16 v6, 0x12

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3136
    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2906
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2909
    .local v2, "uptime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2910
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2911
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2912
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2913
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2914
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 2915
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2904
    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 4042
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4043
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4044
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedLocked(II)V

    .line 4043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4041
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "csph"    # I

    .prologue
    .line 3972
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3974
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 3971
    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4049
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4050
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4051
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedLocked(I)V

    .line 4050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4048
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3978
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3980
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 3977
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4063
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4064
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4065
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 4064
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4062
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 4000
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 4001
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4002
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4003
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 4004
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 4005
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 4008
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 4010
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    .line 3999
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4056
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4057
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4058
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 4057
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4055
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3986
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3988
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3989
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 3990
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3993
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3995
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3996
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    .line 3985
    return-void
.end method

.method public noteWifiOffLocked()V
    .locals 7

    .prologue
    .line 3534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3535
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3536
    .local v2, "uptime":J
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v4, :cond_0

    .line 3537
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3540
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3541
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3542
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3543
    const-string/jumbo v4, "wifi-on"

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3533
    :cond_0
    return-void
.end method

.method public noteWifiOnLocked()V
    .locals 7

    .prologue
    .line 3520
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v4, :cond_0

    .line 3521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3522
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3523
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3526
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3527
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3528
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3529
    const-string/jumbo v4, "wifi-off"

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3519
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 8
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3763
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3764
    .local v4, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    if-eq v1, p1, :cond_0

    .line 3766
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_1

    .line 3767
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3768
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 3769
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3775
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3776
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 3761
    .end local v0    # "active":Z
    :cond_0
    return-void

    .line 3766
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3767
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3771
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1
.end method

.method public noteWifiRssiChangedLocked(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    .line 3885
    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 3887
    .local v2, "strengthBin":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-eq v3, v2, :cond_2

    .line 3888
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3889
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3890
    .local v4, "uptime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-ltz v3, :cond_0

    .line 3891
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3894
    :cond_0
    if-ltz v2, :cond_3

    .line 3895
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3896
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3898
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 3899
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v6, v6, -0x71

    .line 3900
    shl-int/lit8 v7, v2, 0x4

    .line 3899
    or-int/2addr v6, v7

    .line 3898
    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3903
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3907
    :goto_0
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 3884
    .end local v0    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3905
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_3
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllWifiSignalStrengthTimersLocked(I)V

    goto :goto_0
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 3802
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_1

    .line 3803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3804
    .local v2, "elapsedRealtime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3805
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3806
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3807
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3809
    .end local v4    # "uid":I
    :cond_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3810
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3811
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3812
    .restart local v4    # "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3810
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3815
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    :cond_2
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3781
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-nez v5, :cond_1

    .line 3782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3783
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3784
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3787
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3788
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3789
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3790
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3791
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3792
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3793
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3795
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-running"

    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3780
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    .line 3797
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4028
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4029
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4030
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 4029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4027
    :cond_0
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3944
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3946
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3947
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3948
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3951
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3953
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3954
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    .line 3943
    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4035
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4036
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4037
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 4036
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4034
    :cond_0
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3958
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3960
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3961
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3962
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3963
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3966
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3968
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    .line 3957
    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 3842
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-eq v2, p1, :cond_1

    .line 3843
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3844
    .local v0, "elapsedRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-ltz v2, :cond_0

    .line 3845
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3847
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 3848
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3849
    const-string/jumbo v2, "wifi-state"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3840
    .end local v0    # "elapsedRealtime":J
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3820
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_1

    .line 3821
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3822
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3823
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20000001

    and-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3826
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3827
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3828
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3829
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3830
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3831
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3832
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3834
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-stopped"

    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3819
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    .line 3836
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .locals 7
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 3855
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-eq v4, p1, :cond_1

    .line 3856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3857
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3858
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-ltz v4, :cond_0

    .line 3859
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3861
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 3862
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3863
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 3864
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, -0x10

    .line 3865
    shl-int/lit8 v6, p1, 0x0

    .line 3864
    or-int/2addr v5, v6

    .line 3863
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3868
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3853
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_1
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 10180
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 10184
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    .line 10178
    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .locals 3

    .prologue
    .line 7613
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_0

    .line 7614
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 7615
    .local v0, "screenOn":Z
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 7612
    .end local v0    # "screenOn":Z
    :cond_0
    return-void

    .line 7614
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "screenOn":Z
    goto :goto_0
.end method

.method readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "dit"    # Landroid/os/BatteryStats$DailyItem;
    .param p3, "isCharge"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7216
    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7217
    .local v2, "numAttr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 7218
    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing \'n\' attribute at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7220
    return-void

    .line 7222
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7223
    .local v1, "num":I
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v4, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 7224
    .local v4, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    if-eqz p3, :cond_3

    .line 7225
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7229
    :goto_0
    const/4 v0, 0x0

    .line 7230
    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 7232
    .local v3, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_5

    .line 7233
    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_5

    .line 7234
    :cond_2
    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    .line 7238
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7239
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "s"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7240
    if-ge v0, v1, :cond_1

    .line 7241
    const-string/jumbo v8, "v"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7242
    .local v7, "valueAttr":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 7243
    invoke-virtual {v4, v0, v7}, Landroid/os/BatteryStats$LevelStepTracker;->decodeEntryAt(ILjava/lang/String;)V

    .line 7244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7227
    .end local v0    # "i":I
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "valueAttr":Ljava/lang/String;
    :cond_3
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    goto :goto_0

    .line 7248
    .restart local v0    # "i":I
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_4
    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element under <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 7249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 7248
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7253
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    iput v0, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7215
    return-void
.end method

.method readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7162
    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 7163
    .local v1, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v7, "start"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7164
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7165
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 7167
    :cond_0
    const-string/jumbo v7, "end"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7168
    if-eqz v0, :cond_1

    .line 7169
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 7171
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 7173
    .local v2, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    .line 7174
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_b

    .line 7175
    :cond_3
    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    .line 7179
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7180
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "dis"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7181
    const-string/jumbo v7, "dis"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_0

    .line 7182
    :cond_4
    const-string/jumbo v7, "chg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7183
    const-string/jumbo v7, "chg"

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_0

    .line 7184
    :cond_5
    const-string/jumbo v7, "upd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7185
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 7186
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7188
    :cond_6
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7189
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7190
    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7191
    const-string/jumbo v7, "ver"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7192
    .local v6, "verStr":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    iput v7, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 7193
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7194
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 7192
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 7195
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    .end local v6    # "verStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "rem"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 7196
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 7197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7199
    :cond_9
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7200
    .restart local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7201
    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7202
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7203
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 7205
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_a
    const-string/jumbo v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <item>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 7206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 7205
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 7210
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7161
    return-void
.end method

.method public readDailyStatsLocked()V
    .locals 8

    .prologue
    .line 7095
    const-string/jumbo v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading daily items from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7096
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7099
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7104
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 7105
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7106
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7110
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7094
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 7100
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 7101
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 7111
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 7107
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 7110
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 7111
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 7108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    .line 7110
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 7108
    :goto_1
    throw v5

    .line 7111
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9874
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 9873
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9878
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 9879
    .local v16, "magic":I
    const v4, -0x458a8b8b

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 9880
    new-instance v4, Landroid/os/ParcelFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad magic number: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9883
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 9885
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9886
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 9887
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 9888
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 9889
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 9890
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 9891
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 9892
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 9893
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 9894
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    .line 9895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 9899
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9900
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v12, v4, :cond_2

    .line 9901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v6, v12, -0x64

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9900
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 9893
    .end local v12    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 9904
    .restart local v12    # "i":I
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 9905
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xa

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9906
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 9907
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9908
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xb

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9909
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xc

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9910
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9911
    const/4 v12, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v12, v4, :cond_3

    .line 9912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0xc8

    .line 9913
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9912
    const/4 v5, 0x0

    .line 9913
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9912
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9911
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 9915
    :cond_3
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xc7

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9916
    const/4 v12, 0x0

    :goto_3
    const/16 v4, 0x11

    if-ge v12, v4, :cond_4

    .line 9917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x12c

    .line 9918
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9917
    const/4 v5, 0x0

    .line 9918
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9917
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9916
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 9920
    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    .line 9921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9920
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 9924
    :cond_5
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 9925
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x190

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9926
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x191

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9928
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9929
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9930
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9931
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 9932
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 9933
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x4

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9934
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 9935
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x5

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9936
    const/4 v12, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v12, v4, :cond_6

    .line 9937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x258

    .line 9938
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9937
    const/4 v5, 0x0

    .line 9938
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9937
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9936
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 9940
    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/16 v4, 0xd

    if-ge v12, v4, :cond_7

    .line 9941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x2bc

    .line 9942
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9941
    const/4 v5, 0x0

    .line 9942
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9941
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9940
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 9944
    :cond_7
    const/4 v12, 0x0

    :goto_7
    const/4 v4, 0x5

    if-ge v12, v4, :cond_8

    .line 9945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x320

    .line 9946
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9945
    const/4 v5, 0x0

    .line 9946
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9945
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9944
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 9948
    :cond_8
    const/4 v12, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v12, v4, :cond_9

    .line 9949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9948
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 9951
    :cond_9
    const/4 v12, 0x0

    :goto_9
    const/4 v4, 0x4

    if-ge v12, v4, :cond_a

    .line 9952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9951
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 9955
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 9956
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 9957
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 9958
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    .line 9959
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    .line 9960
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 9961
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9962
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 9963
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x8

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9964
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 9965
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x9

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9966
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 9967
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xd

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9968
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 9969
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 9970
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 9971
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 9972
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 9973
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 9974
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 9975
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 9976
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 9977
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 9978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9980
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 9982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9983
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9984
    .local v10, "NKW":I
    const/4 v13, 0x0

    .local v13, "ikw":I
    :goto_c
    if-ge v13, v10, :cond_e

    .line 9985
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 9986
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 9987
    .local v22, "wakelockName":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v15, v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 9988
    .local v15, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9984
    .end local v15    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v22    # "wakelockName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 9955
    .end local v10    # "NKW":I
    .end local v13    # "ikw":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 9956
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 9992
    .restart local v10    # "NKW":I
    .restart local v13    # "ikw":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9993
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9994
    .local v11, "NWR":I
    const/4 v14, 0x0

    .local v14, "iwr":I
    :goto_d
    if-ge v14, v11, :cond_10

    .line 9995
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 9996
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9997
    .local v18, "reasonName":Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 9998
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9994
    .end local v18    # "reasonName":Ljava/lang/String;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 10002
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 10009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10015
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10016
    .local v17, "numUids":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 10017
    const/4 v12, 0x0

    :goto_e
    move/from16 v0, v17

    if-ge v12, v0, :cond_11

    .line 10018
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10019
    .local v21, "uid":I
    new-instance v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 10020
    .local v20, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 10021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10017
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 9877
    .end local v20    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v21    # "uid":I
    :cond_11
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "andOldHistory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 9051
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 9053
    .local v4, "historyBaseTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    .line 9054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 9056
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 9057
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 9059
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9060
    .local v8, "numTags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 9061
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9062
    .local v7, "idx":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9063
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 9064
    new-instance v14, Landroid/os/ParcelFormatException;

    const-string/jumbo v15, "null history tag string"

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9066
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9067
    .local v13, "uid":I
    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 9068
    .local v12, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 9069
    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 9070
    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 9071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9072
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    if-lt v7, v14, :cond_1

    .line 9073
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 9075
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 9060
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9078
    .end local v7    # "idx":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v12    # "tag":Landroid/os/BatteryStats$HistoryTag;
    .end local v13    # "uid":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9079
    .local v2, "bufSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 9080
    .local v3, "curPos":I
    const/high16 v14, 0xf0000

    if-lt v2, v14, :cond_3

    .line 9081
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer too large "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9083
    :cond_3
    and-int/lit8 v14, v2, -0x4

    if-eq v14, v2, :cond_4

    .line 9084
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer not aligned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9089
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9090
    add-int v14, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9093
    if-eqz p2, :cond_5

    .line 9094
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    .line 9103
    :cond_5
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 9113
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 9114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 9115
    .local v10, "oldnow":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 9050
    .end local v10    # "oldnow":J
    :cond_6
    return-void
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 18
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2089
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2090
    .local v8, "firstToken":I
    const v14, 0x7ffff

    and-int v5, v8, v14

    .line 2091
    .local v5, "deltaTimeToken":I
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2092
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2096
    const v14, 0x7fffd

    if-ge v5, v14, :cond_1

    .line 2097
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2117
    :goto_0
    const/high16 v14, 0x80000

    and-int/2addr v14, v8

    if-eqz v14, :cond_4

    .line 2118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2119
    .local v2, "batteryLevelInt":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 2120
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2130
    :goto_1
    const/high16 v14, 0x100000

    and-int/2addr v14, v8

    if-eqz v14, :cond_5

    .line 2131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2132
    .local v11, "stateInt":I
    const/high16 v14, -0x1000000

    and-int/2addr v14, v8

    const v15, 0xffffff

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2133
    shr-int/lit8 v14, v11, 0x1d

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2135
    shr-int/lit8 v14, v11, 0x1a

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2137
    shr-int/lit8 v14, v11, 0x18

    and-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2139
    move-object/from16 v0, p2

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v14, :pswitch_data_0

    .line 2150
    :goto_2
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2161
    .end local v11    # "stateInt":I
    :goto_3
    const/high16 v14, 0x200000

    and-int/2addr v14, v8

    if-eqz v14, :cond_0

    .line 2162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2167
    :cond_0
    const/high16 v14, 0x400000

    and-int/2addr v14, v8

    if-eqz v14, :cond_8

    .line 2168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2169
    .local v10, "indexes":I
    const v14, 0xffff

    and-int v12, v10, v14

    .line 2170
    .local v12, "wakeLockIndex":I
    shr-int/lit8 v14, v10, 0x10

    const v15, 0xffff

    and-int v13, v14, v15

    .line 2171
    .local v13, "wakeReasonIndex":I
    const v14, 0xffff

    if-eq v12, v14, :cond_6

    .line 2172
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2173
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2179
    :goto_4
    const v14, 0xffff

    if-eq v13, v14, :cond_7

    .line 2180
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2181
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2187
    :goto_5
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2193
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :goto_6
    const/high16 v14, 0x800000

    and-int/2addr v14, v8

    if-eqz v14, :cond_9

    .line 2194
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2195
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2196
    .local v3, "codeAndIndex":I
    const v14, 0xffff

    and-int/2addr v14, v3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2197
    shr-int/lit8 v14, v3, 0x10

    const v15, 0xffff

    and-int v9, v14, v15

    .line 2198
    .local v9, "index":I
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2199
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2207
    .end local v3    # "codeAndIndex":I
    .end local v9    # "index":I
    :goto_7
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_a

    .line 2208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2209
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 2088
    :goto_8
    return-void

    .line 2098
    .end local v2    # "batteryLevelInt":I
    :cond_1
    const v14, 0x7fffd

    if-ne v5, v14, :cond_2

    .line 2099
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2100
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2102
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2103
    return-void

    .line 2104
    :cond_2
    const v14, 0x7fffe

    if-ne v5, v14, :cond_3

    .line 2105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2106
    .local v4, "delta":I
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2107
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2110
    .end local v4    # "delta":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 2112
    .local v6, "delta":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2113
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2127
    .end local v6    # "delta":J
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "batteryLevelInt":I
    goto/16 :goto_1

    .line 2141
    .restart local v11    # "stateInt":I
    :pswitch_0
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2144
    :pswitch_1
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2147
    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2158
    .end local v11    # "stateInt":I
    :cond_5
    const/high16 v14, -0x1000000

    and-int/2addr v14, v8

    move-object/from16 v0, p2

    iget v15, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v16, 0xffffff

    and-int v15, v15, v16

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_3

    .line 2177
    .restart local v10    # "indexes":I
    .restart local v12    # "wakeLockIndex":I
    .restart local v13    # "wakeReasonIndex":I
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_4

    .line 2185
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_5

    .line 2189
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2190
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_6

    .line 2204
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    goto/16 :goto_7

    .line 2211
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto/16 :goto_8

    .line 2139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 9000
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    if-eqz v1, :cond_0

    .line 9001
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 9004
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_1

    .line 9005
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "readLocked: no file associated with this instance"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9006
    return-void

    .line 9009
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9012
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 9013
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9014
    return-void

    .line 9016
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9018
    .local v11, "stream":Ljava/io/FileInputStream;
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v10

    .line 9019
    .local v10, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 9020
    .local v9, "in":Landroid/os/Parcel;
    array-length v1, v10

    const/4 v6, 0x0

    invoke-virtual {v9, v10, v6, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9021
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9022
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 9024
    invoke-virtual {p0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9030
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Landroid/os/Parcel;
    .end local v10    # "raw":[B
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 9032
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 9033
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 9034
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 9035
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9039
    .local v4, "uptime":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    move-object v1, p0

    move v6, v12

    .line 9040
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 9043
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    .line 8999
    return-void

    .line 9025
    :catch_0
    move-exception v0

    .line 9026
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "Error reading battery statistics"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9027
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    goto :goto_0
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9127
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 46
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 9182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 9183
    .local v41, "version":I
    const/16 v43, 0x85

    move/from16 v0, v41

    move/from16 v1, v43

    if-eq v0, v1, :cond_0

    .line 9184
    const-string/jumbo v43, "BatteryStats"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "readFromParcel: version got "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 9185
    const-string/jumbo v45, ", expected "

    .line 9184
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 9185
    const/16 v45, 0x85

    .line 9184
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 9185
    const-string/jumbo v45, "; erasing old stats"

    .line 9184
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9186
    return-void

    .line 9189
    :cond_0
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 9191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9192
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 9193
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 9194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 9195
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 9196
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 9197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 9200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 9201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 9202
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 9203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 9204
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 9205
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 9206
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 9207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9211
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9212
    .local v7, "NPKG":I
    if-lez v7, :cond_2

    .line 9213
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9214
    :goto_0
    if-lez v7, :cond_3

    .line 9215
    add-int/lit8 v7, v7, -0x1

    .line 9216
    new-instance v30, Landroid/os/BatteryStats$PackageChange;

    invoke-direct/range {v30 .. v30}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 9217
    .local v30, "pc":Landroid/os/BatteryStats$PackageChange;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 9218
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1

    const/16 v43, 0x1

    :goto_1
    move/from16 v0, v43

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 9219
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 9220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9218
    :cond_1
    const/16 v43, 0x0

    goto :goto_1

    .line 9223
    .end local v30    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9225
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 9226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 9227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 9229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9231
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 9232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9233
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    const/16 v43, 0x5

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_4

    .line 9234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9233
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 9236
    :cond_4
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 9237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9238
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 9239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9243
    const/16 v16, 0x0

    :goto_3
    const/16 v43, 0x5

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_5

    .line 9244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9243
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 9246
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9247
    const/16 v16, 0x0

    :goto_4
    const/16 v43, 0x11

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    .line 9248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9247
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 9250
    :cond_6
    const/16 v16, 0x0

    :goto_5
    const/16 v43, 0x4

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_7

    .line 9251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9250
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 9254
    :cond_7
    sget v43, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 9255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9260
    sget v43, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 9261
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 9262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9263
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 9264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9265
    const/16 v16, 0x0

    :goto_6
    const/16 v43, 0x8

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_8

    .line 9266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9265
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 9268
    :cond_8
    const/16 v16, 0x0

    :goto_7
    const/16 v43, 0xd

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_9

    .line 9269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9268
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 9271
    :cond_9
    const/16 v16, 0x0

    :goto_8
    const/16 v43, 0x5

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_a

    .line 9272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9271
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 9274
    :cond_a
    const/16 v16, 0x0

    :goto_9
    const/16 v43, 0x4

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 9275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9274
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 9277
    :cond_b
    const/16 v16, 0x0

    :goto_a
    const/16 v43, 0x4

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    .line 9278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9277
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 9281
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 9282
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 9283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9284
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 9285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 9288
    .local v5, "NKW":I
    const/16 v43, 0x2710

    move/from16 v0, v43

    if-le v5, v0, :cond_d

    .line 9289
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9291
    :cond_d
    const/16 v18, 0x0

    .local v18, "ikw":I
    :goto_b
    move/from16 v0, v18

    if-ge v0, v5, :cond_f

    .line 9292
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_e

    .line 9293
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 9294
    .local v25, "kwltName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9291
    .end local v25    # "kwltName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 9298
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9299
    .local v13, "NWR":I
    const/16 v43, 0x2710

    move/from16 v0, v43

    if-le v13, v0, :cond_10

    .line 9300
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many wakeup reasons "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9302
    :cond_10
    const/16 v24, 0x0

    .local v24, "iwr":I
    :goto_c
    move/from16 v0, v24

    if-ge v0, v13, :cond_12

    .line 9303
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_11

    .line 9304
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 9305
    .local v33, "reasonName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9302
    .end local v33    # "reasonName":Ljava/lang/String;
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 9309
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9310
    .local v10, "NU":I
    const/16 v43, 0x2710

    move/from16 v0, v43

    if-le v10, v0, :cond_13

    .line 9311
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many uids "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9313
    :cond_13
    const/16 v21, 0x0

    .local v21, "iu":I
    :goto_d
    move/from16 v0, v21

    if-ge v0, v10, :cond_3f

    .line 9314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 9315
    .local v40, "uid":I
    new-instance v39, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 9316
    .local v39, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9318
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_14

    .line 9320
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9322
    :cond_14
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9323
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_15

    .line 9324
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9326
    :cond_15
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9327
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_16

    .line 9328
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9330
    :cond_16
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9331
    const/16 v16, 0x0

    :goto_e
    const/16 v43, 0x5

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_18

    .line 9332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_17

    .line 9333
    const/16 v43, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v16

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 9334
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9331
    :cond_17
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 9337
    :cond_18
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 9338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_19

    .line 9339
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9341
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1a

    .line 9342
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9344
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1b

    .line 9345
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9347
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1c

    .line 9348
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9350
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1d

    .line 9351
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9353
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1e

    .line 9354
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9356
    :cond_1e
    const/16 v43, 0x3

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9357
    const/16 v16, 0x0

    :goto_f
    const/16 v43, 0x3

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_20

    .line 9358
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_1f

    .line 9359
    const/16 v43, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v16

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 9360
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9357
    :cond_1f
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 9363
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_21

    .line 9364
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9367
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_23

    .line 9368
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v43, v0

    if-nez v43, :cond_22

    .line 9369
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 9371
    :cond_22
    const/16 v16, 0x0

    :goto_10
    const/16 v43, 0x3

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_23

    .line 9372
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9371
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 9376
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_26

    .line 9377
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    if-nez v43, :cond_24

    .line 9378
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 9380
    :cond_24
    const/16 v16, 0x0

    :goto_11
    const/16 v43, 0x4

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_25

    .line 9381
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9382
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v16

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9380
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 9384
    :cond_25
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9385
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9388
    :cond_26
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9389
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9390
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9392
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_2c

    .line 9393
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 9394
    .local v27, "numClusters":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v43, v0

    if-eqz v43, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    .line 9395
    new-instance v43, Landroid/os/ParcelFormatException;

    const-string/jumbo v44, "Incompatible cpu cluster arrangement"

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9398
    :cond_27
    move/from16 v0, v27

    new-array v0, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9399
    const/4 v15, 0x0

    .local v15, "cluster":I
    :goto_12
    move/from16 v0, v27

    if-ge v15, v0, :cond_2d

    .line 9400
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_2a

    .line 9401
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9402
    .local v9, "NSB":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v43, v0

    if-eqz v43, :cond_28

    .line 9403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v43

    move/from16 v0, v43

    if-eq v0, v9, :cond_28

    .line 9404
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many speed bins "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9408
    :cond_28
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v44, v0

    aput-object v44, v43, v15

    .line 9409
    const/16 v37, 0x0

    .local v37, "speed":I
    :goto_13
    move/from16 v0, v37

    if-ge v0, v9, :cond_2b

    .line 9410
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_29

    .line 9411
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v15

    new-instance v44, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v45, v0

    .line 9411
    invoke-direct/range {v44 .. v45}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v44, v43, v37

    .line 9413
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aget-object v43, v43, v15

    aget-object v43, v43, v37

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9409
    :cond_29
    add-int/lit8 v37, v37, 0x1

    goto :goto_13

    .line 9417
    .end local v9    # "NSB":I
    .end local v37    # "speed":I
    :cond_2a
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v44, v43, v15

    .line 9399
    :cond_2b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_12

    .line 9421
    .end local v15    # "cluster":I
    .end local v27    # "numClusters":I
    :cond_2c
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9424
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9425
    .local v11, "NW":I
    const/16 v43, 0x64

    move/from16 v0, v43

    if-le v11, v0, :cond_2e

    .line 9426
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many wake locks "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9428
    :cond_2e
    const/16 v22, 0x0

    .local v22, "iw":I
    :goto_14
    move/from16 v0, v22

    if-ge v0, v11, :cond_2f

    .line 9429
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 9430
    .local v42, "wlName":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9428
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 9433
    .end local v42    # "wlName":Ljava/lang/String;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9434
    .local v8, "NS":I
    const/16 v43, 0x64

    move/from16 v0, v43

    if-le v8, v0, :cond_30

    .line 9435
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many syncs "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9437
    :cond_30
    const/16 v20, 0x0

    .local v20, "is":I
    :goto_15
    move/from16 v0, v20

    if-ge v0, v8, :cond_31

    .line 9438
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 9439
    .local v26, "name":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9437
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    .line 9442
    .end local v26    # "name":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 9443
    .local v4, "NJ":I
    const/16 v43, 0x64

    move/from16 v0, v43

    if-le v4, v0, :cond_32

    .line 9444
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many job timers "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9446
    :cond_32
    const/16 v17, 0x0

    .local v17, "ij":I
    :goto_16
    move/from16 v0, v17

    if-ge v0, v4, :cond_33

    .line 9447
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 9448
    .restart local v26    # "name":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9446
    add-int/lit8 v17, v17, 0x1

    goto :goto_16

    .line 9451
    .end local v26    # "name":Ljava/lang/String;
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9452
    .local v6, "NP":I
    const/16 v43, 0x3e8

    move/from16 v0, v43

    if-le v6, v0, :cond_34

    .line 9453
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many sensors "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9455
    :cond_34
    const/16 v20, 0x0

    :goto_17
    move/from16 v0, v20

    if-ge v0, v6, :cond_36

    .line 9456
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 9457
    .local v35, "seNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_35

    .line 9458
    const/16 v43, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v35

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9455
    :cond_35
    add-int/lit8 v20, v20, 0x1

    goto :goto_17

    .line 9463
    .end local v35    # "seNumber":I
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9464
    const/16 v43, 0x3e8

    move/from16 v0, v43

    if-le v6, v0, :cond_37

    .line 9465
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many processes "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9467
    :cond_37
    const/16 v19, 0x0

    .local v19, "ip":I
    :goto_18
    move/from16 v0, v19

    if-ge v0, v6, :cond_38

    .line 9468
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 9469
    .local v32, "procName":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v29

    .line 9470
    .local v29, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 9471
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 9472
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 9473
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 9474
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 9475
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    move/from16 v0, v43

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 9476
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 9467
    add-int/lit8 v19, v19, 0x1

    goto :goto_18

    .line 9479
    .end local v29    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v32    # "procName":Ljava/lang/String;
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9480
    const/16 v43, 0x2710

    move/from16 v0, v43

    if-le v6, v0, :cond_39

    .line 9481
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many packages "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9483
    :cond_39
    const/16 v19, 0x0

    :goto_19
    move/from16 v0, v19

    if-ge v0, v6, :cond_3e

    .line 9484
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 9485
    .local v31, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v28

    .line 9486
    .local v28, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 9487
    .local v12, "NWA":I
    const/16 v43, 0x3e8

    move/from16 v0, v43

    if-le v12, v0, :cond_3a

    .line 9488
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many wakeup alarms "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9490
    :cond_3a
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/util/ArrayMap;->clear()V

    .line 9491
    const/16 v23, 0x0

    .local v23, "iwa":I
    :goto_1a
    move/from16 v0, v23

    if-ge v0, v12, :cond_3b

    .line 9492
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 9493
    .local v38, "tag":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 9494
    .local v14, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9495
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9491
    add-int/lit8 v23, v23, 0x1

    goto :goto_1a

    .line 9497
    .end local v14    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .end local v38    # "tag":Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9498
    const/16 v43, 0x3e8

    move/from16 v0, v43

    if-le v8, v0, :cond_3c

    .line 9499
    new-instance v43, Landroid/os/ParcelFormatException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "File corrupt: too many services "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 9501
    :cond_3c
    const/16 v20, 0x0

    :goto_1b
    move/from16 v0, v20

    if-ge v0, v8, :cond_3d

    .line 9502
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 9503
    .local v36, "servName":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v34

    .line 9504
    .local v34, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 9505
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 9506
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 9501
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    .line 9483
    .end local v34    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v36    # "servName":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_19

    .line 9313
    .end local v12    # "NWA":I
    .end local v23    # "iwa":I
    .end local v28    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v31    # "pkgName":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 9181
    .end local v4    # "NJ":I
    .end local v6    # "NP":I
    .end local v8    # "NS":I
    .end local v11    # "NW":I
    .end local v17    # "ij":I
    .end local v19    # "ip":I
    .end local v20    # "is":I
    .end local v22    # "iw":I
    .end local v39    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v40    # "uid":I
    :cond_3f
    return-void
.end method

.method public recordDailyStatsIfNeededLocked(Z)V
    .locals 6
    .param p1, "settled"    # Z

    .prologue
    .line 6975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6976
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 6977
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 6974
    :cond_0
    :goto_0
    return-void

    .line 6978
    :cond_1
    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 6979
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_0

    .line 6980
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 6981
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_0
.end method

.method public recordDailyStatsLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 6986
    new-instance v2, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 6987
    .local v2, "item":Landroid/os/BatteryStats$DailyItem;
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 6988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 6989
    const/4 v1, 0x0

    .line 6990
    .local v1, "hasData":Z
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_0

    .line 6991
    const/4 v1, 0x1

    .line 6992
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    .line 6993
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 6994
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 6992
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 6996
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_1

    .line 6997
    const/4 v1, 0x1

    .line 6998
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    .line 6999
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7000
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 6998
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7002
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 7003
    const/4 v1, 0x1

    .line 7004
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7005
    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 7007
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7008
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7009
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    .line 7011
    if-eqz v1, :cond_4

    .line 7012
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7013
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 7014
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 7016
    :cond_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7018
    .local v3, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 7019
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 7020
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 7021
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$2;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6985
    .end local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :goto_1
    return-void

    .line 7041
    .restart local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public removeIsolatedUidLocked(I)V
    .locals 1
    .param p1, "isolatedUid"    # I

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2546
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 2544
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 8890
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 8891
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8889
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2969
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2970
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2971
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2972
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    .line 2968
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2961
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2962
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2963
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2964
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    .line 2960
    :cond_0
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 7456
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 7457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7458
    .local v2, "mSecUptime":J
    mul-long v6, v2, v8

    .line 7459
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7460
    .local v0, "mSecRealtime":J
    mul-long v4, v0, v8

    .line 7461
    .local v4, "realtime":J
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 7462
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 7463
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 7465
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 7464
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 7466
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7467
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7468
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 7469
    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 7470
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7471
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 7476
    :goto_0
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7477
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7479
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 7455
    return-void

    .line 7473
    :cond_1
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7474
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_0
.end method

.method public scheduleRemoveIsolatedUidLocked(II)V
    .locals 3
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2532
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2533
    .local v0, "curUid":I
    if-ne v0, p2, :cond_0

    .line 2534
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v1, :cond_0

    .line 2535
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToRemovedUid(I)V

    .line 2531
    :cond_0
    return-void
.end method

.method public setBatteryStateLocked(IIIIII)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 8450
    if-nez p3, :cond_6

    const/16 v16, 0x1

    .line 8451
    .local v16, "onBattery":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 8452
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8453
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-nez v3, :cond_8

    .line 8454
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 8459
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 8460
    if-eqz v16, :cond_7

    .line 8461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8467
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v10, 0x2000000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8471
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8470
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8472
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8476
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8477
    .local v9, "oldStatus":I
    if-eqz v16, :cond_b

    .line 8478
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8479
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_2

    .line 8480
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8481
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 8489
    :cond_2
    :goto_3
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 8490
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    if-gez v3, :cond_3

    .line 8491
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 8493
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_c

    .line 8494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v3, p0

    move/from16 v8, v16

    move/from16 v10, p4

    .line 8500
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V

    .line 8586
    :cond_4
    :goto_4
    if-nez v16, :cond_5

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 8589
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8449
    :cond_5
    return-void

    .line 8450
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    .end local v16    # "onBattery":Z
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "onBattery":Z
    goto/16 :goto_0

    .line 8463
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_1

    .line 8473
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v0, p4

    if-ne v3, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-eq v3, v0, :cond_1

    .line 8474
    :cond_9
    const/16 v3, 0x64

    move/from16 v0, p4

    if-lt v0, v3, :cond_a

    move/from16 v3, v16

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 8483
    .restart local v9    # "oldStatus":I
    :cond_b
    const/16 v3, 0x60

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    .line 8484
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_2

    .line 8485
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8486
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    goto/16 :goto_3

    .line 8502
    :cond_c
    const/4 v2, 0x0

    .line 8503
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v0, p4

    if-eq v3, v0, :cond_d

    .line 8504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8505
    const/4 v2, 0x1

    .line 8509
    const-string/jumbo v3, "battery-level"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;)V

    .line 8511
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v0, p1

    if-eq v3, v0, :cond_e

    .line 8512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8513
    const/4 v2, 0x1

    .line 8515
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v0, p2

    if-eq v3, v0, :cond_f

    .line 8516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8517
    const/4 v2, 0x1

    .line 8519
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v0, p3

    if-eq v3, v0, :cond_10

    .line 8520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8521
    const/4 v2, 0x1

    .line 8523
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p5

    if-ge v0, v3, :cond_11

    .line 8524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p5

    if-gt v0, v3, :cond_12

    .line 8525
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8526
    const/4 v2, 0x1

    .line 8528
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, 0x14

    move/from16 v0, p6

    if-gt v0, v3, :cond_13

    .line 8529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, -0x14

    move/from16 v0, p6

    if-ge v0, v3, :cond_14

    .line 8530
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 8531
    const/4 v2, 0x1

    .line 8533
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    int-to-long v10, v3

    const/16 v3, 0x30

    shl-long/2addr v10, v3

    .line 8534
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    int-to-long v14, v3

    const/16 v3, 0x38

    shl-long/2addr v14, v3

    .line 8533
    or-long/2addr v10, v14

    .line 8535
    move/from16 v0, p4

    and-int/lit16 v3, v0, 0xff

    int-to-long v14, v3

    const/16 v3, 0x28

    shl-long/2addr v14, v3

    .line 8533
    or-long v12, v10, v14

    .line 8536
    .local v12, "modeBits":J
    if-eqz v16, :cond_16

    .line 8537
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8538
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_15

    .line 8539
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8541
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8543
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 8544
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 8545
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8546
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 8582
    .end local v2    # "changed":Z
    :cond_15
    :goto_6
    if-eqz v2, :cond_4

    .line 8583
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    goto/16 :goto_4

    .line 8549
    .local v2, "changed":Z
    :cond_16
    const/16 v3, 0x5a

    move/from16 v0, p4

    if-lt v0, v3, :cond_17

    .line 8552
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8553
    .local v2, "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8554
    .end local v2    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-nez v3, :cond_19

    .line 8555
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_18

    .line 8558
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8559
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8571
    .end local v2    # "changed":Z
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_15

    .line 8572
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8574
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8576
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8577
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8578
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8579
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto :goto_6

    .line 8562
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_18

    .line 8567
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8568
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    goto :goto_7
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .prologue
    .line 6948
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 6947
    return-void
.end method

.method setChargingLocked(Z)Z
    .locals 3
    .param p1, "charging"    # Z

    .prologue
    .line 8268
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eq v0, p1, :cond_1

    .line 8269
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 8270
    if-eqz p1, :cond_0

    .line 8271
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8275
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 8276
    const/4 v0, 0x1

    return v0

    .line 8273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    .line 8278
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setNoAutoReset(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2760
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    .line 2759
    return-void
.end method

.method setOnBatteryLocked(JJZII)V
    .locals 21
    .param p1, "mSecRealtime"    # J
    .param p3, "mSecUptime"    # J
    .param p5, "onBattery"    # Z
    .param p6, "oldStatus"    # I
    .param p7, "level"    # I

    .prologue
    .line 8283
    const/4 v4, 0x0

    .line 8284
    .local v4, "doWrite":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 8285
    .local v18, "m":Landroid/os/Message;
    if-eqz p5, :cond_7

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, v18

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 8286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8288
    const-wide/16 v6, 0x3e8

    mul-long v14, p3, v6

    .line 8289
    .local v14, "uptime":J
    const-wide/16 v6, 0x3e8

    mul-long v16, p1, v6

    .line 8290
    .local v16, "realtime":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/16 v20, 0x1

    .line 8291
    .local v20, "screenOn":Z
    :goto_1
    if-eqz p5, :cond_d

    .line 8296
    const/4 v10, 0x0

    .line 8297
    .local v10, "reset":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    if-nez v5, :cond_2

    const/4 v5, 0x5

    move/from16 v0, p6

    if-eq v0, v5, :cond_0

    .line 8298
    const/16 v5, 0x5a

    move/from16 v0, p7

    if-lt v0, v5, :cond_9

    .line 8302
    :cond_0
    :goto_2
    const-string/jumbo v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Resetting battery stats: level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8303
    const-string/jumbo v7, " dischargeLevel="

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8303
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8304
    const-string/jumbo v7, " lowAmount="

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8304
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v7

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8305
    const-string/jumbo v7, " highAmount="

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8305
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v7

    .line 8302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8309
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 8310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 8311
    .local v19, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 8312
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$4;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8334
    .end local v19    # "parcel":Landroid/os/Parcel;
    :cond_1
    const/4 v4, 0x1

    .line 8335
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 8336
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 8337
    const/4 v10, 0x1

    .line 8338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8340
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v5, :cond_3

    .line 8341
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    .line 8343
    :cond_3
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8344
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8345
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 8346
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 8347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8349
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8350
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 8351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x80001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8356
    if-eqz v10, :cond_4

    .line 8357
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 8358
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 8360
    :cond_4
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 8361
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8362
    if-eqz v20, :cond_b

    .line 8363
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 8364
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 8369
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8370
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8371
    if-eqz v20, :cond_c

    const/4 v13, 0x0

    :goto_4
    const/4 v12, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 8394
    .end local v10    # "reset":Z
    :goto_5
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v5, v6, p1

    if-gez v5, :cond_6

    .line 8395
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-eqz v5, :cond_6

    .line 8396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 8282
    :cond_6
    return-void

    .line 8285
    .end local v14    # "uptime":J
    .end local v16    # "realtime":J
    .end local v20    # "screenOn":Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 8290
    .restart local v14    # "uptime":J
    .restart local v16    # "realtime":J
    :cond_8
    const/16 v20, 0x0

    .restart local v20    # "screenOn":Z
    goto/16 :goto_1

    .line 8299
    .restart local v10    # "reset":Z
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_a

    const/16 v5, 0x50

    move/from16 v0, p7

    if-ge v0, v5, :cond_0

    .line 8300
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    .line 8301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-lt v5, v6, :cond_2

    goto/16 :goto_2

    .line 8366
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 8367
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_3

    .line 8371
    :cond_c
    const/4 v13, 0x1

    goto :goto_4

    .line 8373
    .end local v10    # "reset":Z
    :cond_d
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8374
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8375
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8380
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 8381
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8382
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    if-ge v0, v5, :cond_e

    .line 8383
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8384
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8386
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 8387
    if-eqz v20, :cond_f

    const/4 v13, 0x0

    :goto_6
    const/4 v12, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 8388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8389
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8390
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8391
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8392
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto/16 :goto_5

    .line 8387
    :cond_f
    const/4 v13, 0x1

    goto :goto_6
.end method

.method public setPowerProfile(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 6929
    monitor-enter p0

    .line 6930
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 6935
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    .line 6936
    .local v2, "numClusters":I
    new-array v4, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 6937
    const/4 v0, 0x0

    .line 6938
    .local v0, "firstCpuOfCluster":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 6939
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    .line 6940
    .local v3, "numSpeedSteps":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v5, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v5, v0, v3}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v5, v4, v1

    .line 6942
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v0, v4

    .line 6938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "numSpeedSteps":I
    :cond_0
    monitor-exit p0

    .line 6928
    return-void

    .line 6929
    .end local v0    # "firstCpuOfCluster":I
    .end local v1    # "i":I
    .end local v2    # "numClusters":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setRadioScanningTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 6952
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 6953
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    .line 6951
    :cond_0
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2721
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    .line 2722
    if-nez p1, :cond_1

    .line 2724
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2725
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2728
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2730
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2732
    .local v2, "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2733
    .local v4, "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2734
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2735
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 2737
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const/16 v6, 0x4001

    move-object v1, p0

    .line 2736
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2735
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2743
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2745
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2747
    .restart local v2    # "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2748
    .restart local v4    # "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2749
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2750
    .restart local v12    # "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 2752
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const v6, 0x8001

    move-object v1, p0

    .line 2751
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2750
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2720
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method public shutdownLocked()V
    .locals 4

    .prologue
    .line 8925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordShutdownLocked(JJ)V

    .line 8926
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 8927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    .line 8924
    return-void
.end method

.method public startAddingCpuLocked()Z
    .locals 2

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2920
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    return v0
.end method

.method public startIteratingHistoryLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7343
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-gtz v4, :cond_0

    .line 7344
    return v5

    .line 7346
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7347
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7348
    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7349
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 7350
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    .line 7351
    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    .line 7352
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7353
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    .line 7354
    .local v3, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7355
    .local v2, "idx":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 7356
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    iget v5, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    aput v5, v4, v2

    .line 7357
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    goto :goto_0

    .line 7359
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    return v6
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v0, :cond_0

    .line 7282
    return v1

    .line 7284
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7285
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7286
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7287
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7288
    return v2
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3323
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 3324
    if-ne v2, p1, :cond_1

    .line 3323
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3327
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3328
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3321
    :cond_2
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3874
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 3875
    if-ne v2, p1, :cond_1

    .line 3874
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3878
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3879
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3872
    :cond_2
    return-void
.end method

.method public updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .prologue
    const/4 v3, 0x1

    .line 7975
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_0

    .line 7976
    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 7977
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v3

    .line 7978
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    .line 7977
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7979
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 7980
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    .line 7979
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7981
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 7982
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    .line 7981
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7985
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 7986
    const-string/jumbo v3, "bluetooth.controller.voltage"

    .line 7985
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 7986
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 7985
    div-double v0, v2, v4

    .line 7987
    .local v0, "opVolt":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 7989
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 7990
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    double-to-long v4, v4

    .line 7989
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7970
    .end local v0    # "opVolt":D
    :cond_0
    return-void
.end method

.method public updateCpuTimeLocked()V
    .locals 24

    .prologue
    .line 8062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 8063
    return-void

    .line 8074
    :cond_0
    const/16 v18, 0x32

    .line 8077
    .local v18, "wakelockWeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v5, v0, [[J

    .line 8078
    .local v5, "clusterSpeeds":[[J
    const/4 v4, 0x0

    .local v4, "cluster":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    .line 8079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/KernelCpuSpeedReader;->readDelta()[J

    move-result-object v19

    aput-object v19, v5, v4

    .line 8078
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8082
    :cond_1
    const/4 v9, 0x0

    .line 8086
    .local v9, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 8087
    .local v8, "numPartialTimers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 8088
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 8089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8090
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 8096
    add-int/lit8 v9, v9, 0x1

    .line 8088
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8101
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_3
    move v10, v9

    .line 8102
    .local v10, "numWakelocksF":I
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8103
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 8109
    .local v12, "startTimeMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    .line 8184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    if-lez v9, :cond_8

    .line 8186
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8188
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    .line 8187
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8190
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v8, :cond_6

    .line 8191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8195
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 8196
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 8197
    .local v17, "userTimeUs":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 8209
    .local v14, "systemTimeUs":I
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8210
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    int-to-long v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8212
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    const-string/jumbo v20, "*wakelock*"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8213
    .local v11, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    div-int/lit16 v0, v14, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8215
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8216
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8217
    add-int/lit8 v9, v9, -0x1

    .line 8190
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v14    # "systemTimeUs":I
    .end local v17    # "userTimeUs":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 8110
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_5
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v5}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I[[J)V

    goto/16 :goto_2

    .line 8221
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gtz v19, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_8

    .line 8232
    :cond_7
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v16

    .line 8233
    .local v16, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8234
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8236
    const-string/jumbo v19, "*lost*"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8237
    .restart local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    .line 8238
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    .line 8237
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8244
    .end local v6    # "i":I
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v16    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 8246
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v8, :cond_b

    .line 8247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8246
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 8252
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 8253
    .local v7, "numLastPartialTimers":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v7, :cond_a

    .line 8254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8253
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 8256
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 8259
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v8, :cond_b

    .line 8260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8261
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8259
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 8061
    .end local v7    # "numLastPartialTimers":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_b
    return-void
.end method

.method public updateDailyDeadlineLocked()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 6959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 6960
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6961
    .local v0, "calDeadline":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6964
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 6965
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6966
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6967
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6968
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6969
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 6970
    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6971
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 6957
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .locals 4
    .param p1, "oldScreenOn"    # Z
    .param p2, "newScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 7590
    if-eqz p1, :cond_1

    .line 7591
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7592
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 7593
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7594
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7603
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 7604
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7605
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 7589
    :goto_1
    return-void

    .line 7597
    .end local v0    # "diff":I
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7598
    .restart local v0    # "diff":I
    if-lez v0, :cond_0

    .line 7599
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7600
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    goto :goto_0

    .line 7607
    :cond_2
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7608
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_1
.end method

.method public updateKernelWakelocksLocked()V
    .locals 14

    .prologue
    .line 7999
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 8000
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 7999
    invoke-virtual {v10, v11}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v9

    .line 8001
    .local v9, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    if-nez v9, :cond_0

    .line 8003
    const-string/jumbo v10, "BatteryStatsImpl"

    const-string/jumbo v11, "Couldn\'t get kernel wake lock stats"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8004
    return-void

    .line 8008
    :cond_0
    const/4 v7, 0x0

    .line 8009
    .local v7, "seenNonZeroTime":Z
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v7    # "seenNonZeroTime":Z
    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8010
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8011
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 8013
    .local v4, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8014
    .local v3, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_2

    .line 8015
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 8016
    const/4 v11, 0x1

    .line 8015
    invoke-direct {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 8017
    .restart local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8019
    :cond_2
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 8020
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 8021
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    .line 8023
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_1

    .line 8024
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    or-int/2addr v7, v10

    .local v7, "seenNonZeroTime":Z
    goto :goto_0

    .end local v7    # "seenNonZeroTime":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 8027
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 8028
    .local v6, "numWakelocksSetStale":I
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v10, v11, :cond_6

    .line 8030
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8031
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8032
    .local v8, "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v10

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_5

    .line 8033
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    .line 8034
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 8039
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v8    # "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_6
    if-nez v7, :cond_7

    .line 8040
    const-string/jumbo v10, "BatteryStatsImpl"

    const-string/jumbo v11, "All kernel wakelocks had time of zero"

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8043
    :cond_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-ne v6, v10, :cond_8

    .line 8044
    const-string/jumbo v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "All kernel wakelocks were set stale. new version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 8045
    iget v12, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 8044
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7998
    :cond_8
    return-void
.end method

.method public updateMobileRadioStateLocked(J)V
    .locals 23
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7899
    const/4 v12, 0x0

    .line 7901
    .local v12, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 7909
    .end local v12    # "delta":Landroid/net/NetworkStats;
    :cond_0
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v3, :cond_2

    .line 7913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7914
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    .line 7913
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v16

    .line 7915
    .local v16, "radioTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7916
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v20

    .line 7918
    .local v20, "totalPackets":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v18

    .line 7919
    .local v18, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 7920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7922
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 7919
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 7904
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v16    # "radioTime":J
    .end local v18    # "size":I
    .end local v20    # "totalPackets":J
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v13

    .line 7905
    .local v13, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsImpl"

    const-string/jumbo v4, "Failed to get mobile network stats"

    invoke-static {v3, v4, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7906
    return-void

    .line 7910
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v13    # "e":Ljava/io/IOException;
    :cond_2
    return-void

    .line 7932
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "i":I
    .restart local v16    # "radioTime":J
    .restart local v18    # "size":I
    .restart local v20    # "totalPackets":J
    :cond_3
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 7933
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7934
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7933
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7935
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7936
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7935
    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7938
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_4

    .line 7940
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v8, v4, v6

    .line 7941
    .local v8, "appPackets":J
    mul-long v4, v16, v8

    div-long v10, v4, v20

    .line 7942
    .local v10, "appRadioTime":J
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    .line 7945
    sub-long v16, v16, v10

    .line 7946
    sub-long v20, v20, v8

    .line 7949
    .end local v8    # "appPackets":J
    .end local v10    # "appRadioTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 7950
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7949
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 7952
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7951
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 7954
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7953
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 7956
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7955
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_1

    .line 7959
    .end local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_6

    .line 7961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7894
    :cond_6
    return-void
.end method

.method public updateTimeBasesLocked(ZZJJ)V
    .locals 7
    .param p1, "unplugged"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "uptime"    # J
    .param p5, "realtime"    # J

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2511
    if-eqz p1, :cond_1

    move v1, p2

    .line 2512
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 2518
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 2519
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2508
    :cond_0
    return-void

    .line 2511
    :cond_1
    const/4 v1, 0x0

    .local v1, "unpluggedScreenOff":Z
    goto :goto_0
.end method

.method public updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 58
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    .prologue
    .line 7671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 7672
    .local v12, "elapsedRealtimeMs":J
    const/4 v10, 0x0

    .line 7674
    .local v10, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7675
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 7682
    .end local v10    # "delta":Landroid/net/NetworkStats;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-nez v5, :cond_1

    .line 7683
    return-void

    .line 7677
    .restart local v10    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v11

    .line 7678
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v6, "Failed to get wifi network stats"

    invoke-static {v5, v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7679
    return-void

    .line 7686
    .end local v10    # "delta":Landroid/net/NetworkStats;
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v30, Landroid/util/SparseLongArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/SparseLongArray;-><init>()V

    .line 7687
    .local v30, "rxPackets":Landroid/util/SparseLongArray;
    new-instance v50, Landroid/util/SparseLongArray;

    invoke-direct/range {v50 .. v50}, Landroid/util/SparseLongArray;-><init>()V

    .line 7688
    .local v50, "txPackets":Landroid/util/SparseLongArray;
    const-wide/16 v46, 0x0

    .line 7689
    .local v46, "totalTxPackets":J
    const-wide/16 v40, 0x0

    .line 7690
    .local v40, "totalRxPackets":J
    if-eqz v10, :cond_5

    .line 7691
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v31

    .line 7692
    .local v31, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v31

    if-ge v15, v0, :cond_5

    .line 7693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v10, v15, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7701
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 7692
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 7705
    :cond_3
    iget v5, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    .line 7706
    .local v4, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 7707
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7708
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7707
    const/4 v5, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7710
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7709
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7712
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7711
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7714
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7718
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long v40, v40, v6

    .line 7721
    :cond_4
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 7722
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7723
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7722
    const/4 v5, 0x3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7725
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7724
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7726
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7727
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7726
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7729
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7733
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v46, v46, v6

    goto :goto_1

    .line 7738
    .end local v4    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v31    # "size":I
    :cond_5
    if-eqz p1, :cond_e

    .line 7739
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 7742
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v52

    .line 7743
    .local v52, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v32

    .line 7744
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v16

    .line 7745
    .local v16, "idleTimeMs":J
    add-long v6, v52, v32

    add-long v44, v6, v16

    .line 7747
    .local v44, "totalTimeMs":J
    move-wide/from16 v18, v32

    .line 7748
    .local v18, "leftOverRxTimeMs":J
    move-wide/from16 v20, v52

    .line 7758
    .local v20, "leftOverTxTimeMs":J
    const-wide/16 v48, 0x0

    .line 7759
    .local v48, "totalWifiLockTimeMs":J
    const-wide/16 v42, 0x0

    .line 7763
    .local v42, "totalScanTimeMs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v54

    .line 7764
    .local v54, "uidStatsSize":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v54

    if-ge v15, v0, :cond_6

    .line 7765
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7768
    .local v51, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7769
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7768
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7769
    const-wide/16 v8, 0x3e8

    .line 7768
    div-long/2addr v6, v8

    add-long v42, v42, v6

    .line 7772
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7773
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7772
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7773
    const-wide/16 v8, 0x3e8

    .line 7772
    div-long/2addr v6, v8

    add-long v48, v48, v6

    .line 7764
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 7786
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v54

    if-ge v15, v0, :cond_b

    .line 7787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7789
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7790
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7789
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7790
    const-wide/16 v8, 0x3e8

    .line 7789
    div-long v36, v6, v8

    .line 7791
    .local v36, "scanTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v36, v6

    if-lez v5, :cond_9

    .line 7793
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7795
    move-wide/from16 v34, v36

    .line 7796
    .local v34, "scanRxTimeSinceMarkMs":J
    move-wide/from16 v38, v36

    .line 7805
    .local v38, "scanTxTimeSinceMarkMs":J
    cmp-long v5, v42, v32

    if-lez v5, :cond_7

    .line 7806
    mul-long v6, v32, v34

    div-long v34, v6, v42

    .line 7809
    :cond_7
    cmp-long v5, v42, v52

    if-lez v5, :cond_8

    .line 7810
    mul-long v6, v52, v38

    div-long v38, v6, v42

    .line 7819
    :cond_8
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v34

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7820
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7821
    sub-long v18, v18, v34

    .line 7822
    sub-long v20, v20, v38

    .line 7827
    .end local v34    # "scanRxTimeSinceMarkMs":J
    .end local v38    # "scanTxTimeSinceMarkMs":J
    :cond_9
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7828
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7827
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7828
    const-wide/16 v8, 0x3e8

    .line 7827
    div-long v56, v6, v8

    .line 7829
    .local v56, "wifiLockTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v56, v6

    if-lez v5, :cond_a

    .line 7831
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7833
    mul-long v6, v56, v16

    div-long v22, v6, v48

    .line 7839
    .local v22, "myIdleTimeMs":J
    const/4 v5, 0x0

    move-object/from16 v0, v51

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7786
    .end local v22    # "myIdleTimeMs":J
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 7850
    .end local v36    # "scanTimeSinceMarkMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v56    # "wifiLockTimeSinceMarkMs":J
    :cond_b
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_c

    .line 7851
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7852
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v20

    div-long v26, v6, v46

    .line 7856
    .local v26, "myTxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7850
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 7861
    .end local v26    # "myTxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_c
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_d

    .line 7862
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7863
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v18

    div-long v24, v6, v40

    .line 7867
    .local v24, "myRxTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7861
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 7873
    .end local v24    # "myRxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 7874
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    .line 7873
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7876
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    .line 7875
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 7878
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v6

    .line 7877
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 7882
    const-string/jumbo v6, "wifi.controller.voltage"

    .line 7881
    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 7882
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 7881
    div-double v28, v6, v8

    .line 7883
    .local v28, "opVolt":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v28, v6

    if-eqz v5, :cond_e

    .line 7885
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7886
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v6, v28

    double-to-long v6, v6

    .line 7885
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7666
    .end local v15    # "i":I
    .end local v16    # "idleTimeMs":J
    .end local v18    # "leftOverRxTimeMs":J
    .end local v20    # "leftOverTxTimeMs":J
    .end local v28    # "opVolt":D
    .end local v32    # "rxTimeMs":J
    .end local v42    # "totalScanTimeMs":J
    .end local v44    # "totalTimeMs":J
    .end local v48    # "totalWifiLockTimeMs":J
    .end local v52    # "txTimeMs":J
    .end local v54    # "uidStatsSize":I
    :cond_e
    return-void
.end method

.method public writeAsyncLocked()V
    .locals 1

    .prologue
    .line 8934
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 8933
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclData"    # Z
    .param p3, "andOldHistory"    # Z

    .prologue
    const/4 v8, 0x0

    .line 9146
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9147
    if-nez p2, :cond_0

    .line 9148
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9149
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9150
    return-void

    .line 9152
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9153
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9154
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 9155
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9156
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9157
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 9159
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9162
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9164
    if-eqz p3, :cond_2

    .line 9165
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    .line 9137
    :cond_2
    return-void
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 26
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1848
    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1849
    :cond_0
    const v21, 0x7fffd

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1851
    return-void

    .line 1854
    :cond_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    sub-long v8, v22, v24

    .line 1855
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1856
    .local v14, "lastBatteryLevelInt":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    .line 1859
    .local v15, "lastStateInt":I
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-ltz v21, :cond_2

    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v8, v22

    if-lez v21, :cond_12

    .line 1860
    :cond_2
    const v10, 0x7ffff

    .line 1866
    .local v10, "deltaTimeToken":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v21, v0

    const/high16 v22, -0x1000000

    and-int v21, v21, v22

    or-int v11, v10, v21

    .line 1867
    .local v11, "firstToken":I
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    .line 1868
    const/4 v12, 0x1

    .line 1869
    .local v12, "includeStepDetails":I
    :goto_1
    if-nez v12, :cond_15

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    if-nez v21, :cond_16

    const/4 v7, 0x1

    .line 1871
    .local v7, "computeStepDetails":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v21

    or-int v4, v21, v12

    .line 1872
    .local v4, "batteryLevelInt":I
    if-eq v4, v14, :cond_17

    const/4 v5, 0x1

    .line 1873
    .local v5, "batteryLevelIntChanged":Z
    :goto_3
    if-eqz v5, :cond_3

    .line 1874
    const/high16 v21, 0x80000

    or-int v11, v11, v21

    .line 1876
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v17

    .line 1877
    .local v17, "stateInt":I
    move/from16 v0, v17

    if-eq v0, v15, :cond_18

    const/16 v18, 0x1

    .line 1878
    .local v18, "stateIntChanged":Z
    :goto_4
    if-eqz v18, :cond_4

    .line 1879
    const/high16 v21, 0x100000

    or-int v11, v11, v21

    .line 1881
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    const/16 v16, 0x1

    .line 1882
    .local v16, "state2IntChanged":Z
    :goto_5
    if-eqz v16, :cond_5

    .line 1883
    const/high16 v21, 0x200000

    or-int v11, v11, v21

    .line 1885
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1886
    :cond_6
    const/high16 v21, 0x400000

    or-int v11, v11, v21

    .line 1888
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1889
    const/high16 v21, 0x800000

    or-int v11, v11, v21

    .line 1891
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    const v21, 0x7fffe

    move/from16 v0, v21

    if-lt v10, v0, :cond_9

    .line 1896
    const v21, 0x7fffe

    move/from16 v0, v21

    if-ne v10, v0, :cond_1a

    .line 1898
    long-to-int v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    .line 1905
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    :cond_a
    if-eqz v18, :cond_b

    .line 1913
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    :cond_b
    if-eqz v16, :cond_c

    .line 1922
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1929
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 1930
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v19

    .line 1936
    .local v19, "wakeLockIndex":I
    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 1937
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v20

    .line 1943
    .local v20, "wakeReasonIndex":I
    :goto_8
    shl-int/lit8 v21, v20, 0x10

    or-int v21, v21, v19

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1946
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v13

    .line 1947
    .local v13, "index":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    const v22, 0xffff

    and-int v21, v21, v22

    shl-int/lit8 v22, v13, 0x10

    or-int v6, v21, v22

    .line 1948
    .local v6, "codeAndIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    .end local v6    # "codeAndIndex":I
    .end local v13    # "index":I
    :cond_f
    if-eqz v7, :cond_1d

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V

    .line 1955
    if-eqz v12, :cond_10

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 1958
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1963
    :goto_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 1964
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1966
    :cond_11
    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 1847
    return-void

    .line 1861
    .end local v4    # "batteryLevelInt":I
    .end local v5    # "batteryLevelIntChanged":Z
    .end local v7    # "computeStepDetails":Z
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v12    # "includeStepDetails":I
    .end local v16    # "state2IntChanged":Z
    .end local v17    # "stateInt":I
    .end local v18    # "stateIntChanged":Z
    :cond_12
    const-wide/32 v22, 0x7fffd

    cmp-long v21, v8, v22

    if-ltz v21, :cond_13

    .line 1862
    const v10, 0x7fffe

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    .line 1864
    .end local v10    # "deltaTimeToken":I
    :cond_13
    long-to-int v10, v8

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    .line 1868
    .restart local v11    # "firstToken":I
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "includeStepDetails":I
    goto/16 :goto_1

    .line 1869
    :cond_15
    const/4 v7, 0x1

    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    .line 1870
    .end local v7    # "computeStepDetails":Z
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    .line 1872
    .restart local v4    # "batteryLevelInt":I
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "batteryLevelIntChanged":Z
    goto/16 :goto_3

    .line 1877
    .restart local v17    # "stateInt":I
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "stateIntChanged":Z
    goto/16 :goto_4

    .line 1881
    :cond_19
    const/16 v16, 0x0

    .restart local v16    # "state2IntChanged":Z
    goto/16 :goto_5

    .line 1901
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_6

    .line 1934
    :cond_1b
    const v19, 0xffff

    .restart local v19    # "wakeLockIndex":I
    goto/16 :goto_7

    .line 1941
    :cond_1c
    const v20, 0xffff

    .restart local v20    # "wakeReasonIndex":I
    goto/16 :goto_8

    .line 1961
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_1d
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto :goto_9
.end method

.method writeLocked(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .prologue
    .line 8942
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_0

    .line 8943
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v2, "writeLocked: no file associated with this instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8944
    return-void

    .line 8947
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    if-eqz v1, :cond_1

    .line 8948
    return-void

    .line 8951
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8952
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 8953
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 8955
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    .line 8956
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8958
    :cond_2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8960
    if-eqz p1, :cond_3

    .line 8961
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    .line 8941
    :goto_0
    return-void

    .line 8963
    :cond_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$5;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$5;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 9171
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 51
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .prologue
    .line 9519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 9523
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v38

    .line 9525
    .local v38, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v48, 0x3e8

    mul-long v6, v4, v48

    .line 9526
    .local v6, "NOW_SYS":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v48, 0x3e8

    mul-long v8, v4, v48

    .line 9528
    .local v8, "NOWREAL_SYS":J
    const/16 v4, 0x85

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9530
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 9532
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9533
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9534
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9535
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9541
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9542
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9543
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9545
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 9553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 9554
    .local v12, "NPKG":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 9555
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    if-ge v0, v12, :cond_2

    .line 9556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/BatteryStats$PackageChange;

    .line 9557
    .local v33, "pc":Landroid/os/BatteryStats$PackageChange;
    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9558
    move-object/from16 v0, v33

    iget-boolean v4, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9559
    move-object/from16 v0, v33

    iget v4, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9555
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 9558
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 9562
    .end local v12    # "NPKG":I
    .end local v23    # "i":I
    .end local v33    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9564
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9565
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9566
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9569
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_2
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_3

    .line 9570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9569
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 9572
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9577
    const/16 v23, 0x0

    :goto_3
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_4

    .line 9578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9577
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 9580
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9581
    const/16 v23, 0x0

    :goto_4
    const/16 v4, 0x11

    move/from16 v0, v23

    if-ge v0, v4, :cond_5

    .line 9582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9581
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 9584
    :cond_5
    const/16 v23, 0x0

    :goto_5
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_6

    .line 9585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9584
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 9588
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9595
    const/16 v23, 0x0

    :goto_6
    const/16 v4, 0x8

    move/from16 v0, v23

    if-ge v0, v4, :cond_7

    .line 9596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9595
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 9598
    :cond_7
    const/16 v23, 0x0

    :goto_7
    const/16 v4, 0xd

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 9599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9598
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 9601
    :cond_8
    const/16 v23, 0x0

    :goto_8
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 9602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9601
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 9604
    :cond_9
    const/16 v23, 0x0

    :goto_9
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_a

    .line 9605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9604
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 9607
    :cond_a
    const/16 v23, 0x0

    :goto_a
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_b

    .line 9608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9607
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 9610
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "ent$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 9616
    .local v20, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 9617
    .local v32, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v32, :cond_c

    .line 9618
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9619
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9620
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_b

    .line 9622
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 9626
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v32    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 9628
    .restart local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 9629
    .local v41, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v41, :cond_e

    .line 9630
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9631
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9632
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 9634
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 9638
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v41    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 9639
    .local v15, "NU":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 9640
    const/16 v28, 0x0

    .local v28, "iu":I
    :goto_d
    move/from16 v0, v28

    if-ge v0, v15, :cond_34

    .line 9641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 9644
    .local v44, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_10

    .line 9645
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9646
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9650
    :goto_e
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_11

    .line 9651
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9652
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9656
    :goto_f
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_12

    .line 9657
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9658
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9662
    :goto_10
    const/16 v23, 0x0

    :goto_11
    const/4 v4, 0x5

    move/from16 v0, v23

    if-ge v0, v4, :cond_14

    .line 9663
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    if-eqz v4, :cond_13

    .line 9664
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9665
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9662
    :goto_12
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 9648
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 9654
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 9660
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 9667
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 9670
    :cond_14
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_15

    .line 9671
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9672
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9676
    :goto_13
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_16

    .line 9677
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9678
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9682
    :goto_14
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_17

    .line 9683
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9684
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9688
    :goto_15
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_18

    .line 9689
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9690
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9694
    :goto_16
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_19

    .line 9695
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9696
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9700
    :goto_17
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_1a

    .line 9701
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9702
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9706
    :goto_18
    const/16 v23, 0x0

    :goto_19
    const/4 v4, 0x3

    move/from16 v0, v23

    if-ge v0, v4, :cond_1c

    .line 9707
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    if-eqz v4, :cond_1b

    .line 9708
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9709
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9706
    :goto_1a
    add-int/lit8 v23, v23, 0x1

    goto :goto_19

    .line 9674
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_13

    .line 9680
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_14

    .line 9686
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 9692
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 9698
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 9704
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 9711
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 9714
    :cond_1c
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v4, :cond_1e

    .line 9715
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9716
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9721
    :goto_1b
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v4, :cond_1f

    .line 9722
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9730
    :cond_1d
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_20

    .line 9731
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9742
    :goto_1c
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9743
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9744
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9746
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v4, :cond_25

    .line 9747
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9748
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9749
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v48, v0

    move v5, v4

    :goto_1d
    move/from16 v0, v48

    if-ge v5, v0, :cond_26

    aget-object v19, v47, v5

    .line 9750
    .local v19, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v19, :cond_23

    .line 9751
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9752
    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9753
    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v49, v0

    :goto_1e
    move/from16 v0, v49

    if-ge v4, v0, :cond_24

    aget-object v18, v19, v4

    .line 9754
    .local v18, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v18, :cond_22

    .line 9755
    const/16 v50, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9756
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9753
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 9718
    .end local v18    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v19    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1b

    .line 9724
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9725
    const/16 v23, 0x0

    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v23

    if-ge v0, v4, :cond_1d

    .line 9726
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9725
    add-int/lit8 v23, v23, 0x1

    goto :goto_20

    .line 9733
    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9734
    const/16 v23, 0x0

    :goto_21
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_21

    .line 9735
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9736
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v23

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9734
    add-int/lit8 v23, v23, 0x1

    goto :goto_21

    .line 9738
    :cond_21
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9739
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_1c

    .line 9758
    .restart local v18    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v19    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 9762
    .end local v18    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9749
    :cond_24
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_1d

    .line 9766
    .end local v19    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9769
    :cond_26
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v45

    .line 9770
    .local v45, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 9771
    .local v16, "NW":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9772
    const/16 v29, 0x0

    .local v29, "iw":I
    :goto_22
    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_2b

    .line 9773
    move-object/from16 v0, v45

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9774
    move-object/from16 v0, v45

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 9775
    .local v46, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_27

    .line 9776
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9777
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9781
    :goto_23
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_28

    .line 9782
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9783
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9787
    :goto_24
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_29

    .line 9788
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9789
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9793
    :goto_25
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_2a

    .line 9794
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9795
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9772
    :goto_26
    add-int/lit8 v29, v29, 0x1

    goto :goto_22

    .line 9779
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 9785
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 9791
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 9797
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 9801
    .end local v46    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_2b
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v40

    .line 9802
    .local v40, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9803
    .local v13, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9804
    const/16 v26, 0x0

    .local v26, "is":I
    :goto_27
    move/from16 v0, v26

    if-ge v0, v13, :cond_2c

    .line 9805
    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9806
    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9804
    add-int/lit8 v26, v26, 0x1

    goto :goto_27

    .line 9809
    :cond_2c
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v31

    .line 9810
    .local v31, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 9811
    .local v10, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 9812
    const/16 v24, 0x0

    .local v24, "ij":I
    :goto_28
    move/from16 v0, v24

    if-ge v0, v10, :cond_2d

    .line 9813
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9814
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9812
    add-int/lit8 v24, v24, 0x1

    goto :goto_28

    .line 9817
    :cond_2d
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 9818
    .local v14, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 9819
    const/16 v27, 0x0

    .local v27, "ise":I
    :goto_29
    move/from16 v0, v27

    if-ge v0, v14, :cond_2f

    .line 9820
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9821
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9822
    .local v36, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_2e

    .line 9823
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9824
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9819
    :goto_2a
    add-int/lit8 v27, v27, 0x1

    goto :goto_29

    .line 9826
    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 9830
    .end local v36    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2f
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9831
    .local v11, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9832
    const/16 v25, 0x0

    .local v25, "ip":I
    :goto_2b
    move/from16 v0, v25

    if-ge v0, v11, :cond_30

    .line 9833
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9834
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 9835
    .local v35, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v35

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9836
    move-object/from16 v0, v35

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9837
    move-object/from16 v0, v35

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9838
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9839
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9840
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9841
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 9832
    add-int/lit8 v25, v25, 0x1

    goto :goto_2b

    .line 9844
    .end local v35    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_30
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9845
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9846
    if-lez v11, :cond_33

    .line 9848
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 9847
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_31
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 9849
    .local v21, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9850
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 9851
    .local v34, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 9852
    .local v17, "NWA":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9853
    const/16 v30, 0x0

    .local v30, "iwa":I
    :goto_2c
    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_32

    .line 9854
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9855
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9853
    add-int/lit8 v30, v30, 0x1

    goto :goto_2c

    .line 9857
    :cond_32
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9858
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9859
    const/16 v26, 0x0

    :goto_2d
    move/from16 v0, v26

    if-ge v0, v13, :cond_31

    .line 9860
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9861
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 9863
    .local v37, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    .line 9862
    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v42

    .line 9864
    .local v42, "time":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9865
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9866
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9859
    add-int/lit8 v26, v26, 0x1

    goto :goto_2d

    .line 9640
    .end local v17    # "NWA":I
    .end local v21    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v30    # "iwa":I
    .end local v34    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v37    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v42    # "time":J
    :cond_33
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_d

    .line 9518
    .end local v10    # "NJ":I
    .end local v11    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "NSE":I
    .end local v16    # "NW":I
    .end local v24    # "ij":I
    .end local v25    # "ip":I
    .end local v26    # "is":I
    .end local v27    # "ise":I
    .end local v29    # "iw":I
    .end local v31    # "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v40    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v44    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v45    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_34
    return-void
.end method

.method public writeSyncLocked()V
    .locals 1

    .prologue
    .line 8938
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 8937
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 10026
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 10025
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .locals 26
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclUids"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 10036
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 10040
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v20

    .line 10042
    .local v20, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v6, v4, v24

    .line 10043
    .local v6, "uSecUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v8, v4, v24

    .line 10044
    .local v8, "uSecRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v10

    .line 10045
    .local v10, "batteryRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v12

    .line 10047
    .local v12, "batteryScreenOffRealtime":J
    const v4, -0x458a8b8b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10049
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 10051
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10052
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 10053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10055
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10056
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10057
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10058
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10059
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10064
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 10065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10064
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 10059
    .end local v16    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 10067
    .restart local v16    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10072
    const/16 v16, 0x0

    :goto_2
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 10073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10072
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 10075
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10076
    const/16 v16, 0x0

    :goto_3
    const/16 v4, 0x11

    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 10077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10076
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 10079
    :cond_3
    const/16 v16, 0x0

    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 10080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10079
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 10083
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10090
    const/16 v16, 0x0

    :goto_5
    const/16 v4, 0x8

    move/from16 v0, v16

    if-ge v0, v4, :cond_5

    .line 10091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10090
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 10093
    :cond_5
    const/16 v16, 0x0

    :goto_6
    const/16 v4, 0xd

    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 10094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10093
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 10096
    :cond_6
    const/16 v16, 0x0

    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 10097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10096
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 10099
    :cond_7
    const/16 v16, 0x0

    :goto_8
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_8

    .line 10100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10099
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 10102
    :cond_8
    const/16 v16, 0x0

    :goto_9
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 10103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10102
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 10105
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10106
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10107
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10108
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10109
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10112
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10113
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10114
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10115
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10116
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10117
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10118
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10119
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10120
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10124
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10126
    if-eqz p2, :cond_f

    .line 10127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "ent$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10129
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10130
    .local v17, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v17, :cond_c

    .line 10131
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10132
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10133
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 10105
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 10106
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 10135
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v15    # "ent$iterator":Ljava/util/Iterator;
    .restart local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 10138
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10140
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10141
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v19, :cond_e

    .line 10142
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10143
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10144
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 10146
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 10150
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10153
    :cond_10
    if-eqz p2, :cond_11

    .line 10154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 10155
    .local v18, "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10156
    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 10157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 10160
    .local v22, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10156
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 10163
    .end local v18    # "size":I
    .end local v22    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10034
    :cond_12
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 10030
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 10029
    return-void
.end method

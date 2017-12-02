.class public Lcom/android/server/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;,
        Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
    }
.end annotation


# static fields
.field public static final CLEAN_DUMP_ARG:Ljava/lang/String; = "clean"

.field private static final DBG:Z = false

.field private static final MAX_CONNECTION_EVENTS:I = 0x100

.field private static final MAX_RSSI_POLL:I = 0x0

.field private static final MAX_WIFI_SCORE:I = 0x3c

.field private static final MIN_RSSI_POLL:I = -0x7f

.field private static final MIN_WIFI_SCORE:I = 0x0

.field public static final PROTO_DUMP_ARG:Ljava/lang/String; = "wifiMetricsProto"

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"


# instance fields
.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectionEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

.field private final mLock:Ljava/lang/Object;

.field private mRecordStartTimeSec:J

.field private final mRssiPollCounts:Landroid/util/SparseIntArray;

.field private final mScanReturnEntries:Landroid/util/SparseIntArray;

.field private mScreenOn:Z

.field private final mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

.field private final mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

.field private final mWifiScoreCounts:Landroid/util/SparseIntArray;

.field private mWifiState:I

.field private final mWifiSystemStateEntries:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    const/4 v1, 0x1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    .line 321
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 323
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    .line 324
    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    .line 320
    return-void
.end method

.method private clear()V
    .locals 6

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1201
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1206
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    .line 1207
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1208
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1209
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1210
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1198
    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private consolidateProto(Z)V
    .locals 20
    .param p1, "incremental"    # Z

    .prologue
    .line 1108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    .local v10, "rssis":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v2, "alertReasons":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v12, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1113
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 1116
    .local v3, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eq v13, v3, :cond_0

    .line 1117
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget-boolean v13, v13, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-nez v13, :cond_0

    .line 1120
    :cond_1
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1112
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1126
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 1127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-interface {v5, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 1131
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    new-array v15, v15, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1131
    iput-object v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1133
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    new-instance v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v15}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v15, v13, v6

    .line 1135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    .line 1133
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1142
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    .line 1143
    new-array v15, v15, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1142
    iput-object v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1145
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 1146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1147
    new-instance v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v15}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    .line 1146
    aput-object v15, v13, v6

    .line 1148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v13, v13, v6

    .line 1149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    .line 1148
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v13, v13, v6

    .line 1151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 1150
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    .line 1152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v15, v13, v6

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    rem-int/lit8 v13, v13, 0x2

    if-lez v13, :cond_5

    const/4 v13, 0x1

    .line 1152
    :goto_3
    iput-boolean v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    .line 1145
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1153
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 1155
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v15}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    .line 1156
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    move-wide/from16 v18, v0

    .line 1155
    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 1162
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 1163
    new-instance v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v8}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    .line 1164
    .local v8, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    iput v13, v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 1165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    iput v13, v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    .line 1166
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1168
    .end local v8    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    .line 1174
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_8

    .line 1175
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    .line 1176
    .local v7, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 1177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    .line 1178
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1180
    .end local v7    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-interface {v2, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    .line 1185
    const/4 v11, 0x0

    .local v11, "score":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v11, v13, :cond_9

    .line 1186
    new-instance v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v9}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    .line 1187
    .local v9, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    iput v13, v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    iput v13, v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    .line 1189
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1191
    .end local v9    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    .line 1107
    return-void
.end method

.method private returnCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scanReturnCode"    # I

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 631
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 621
    :pswitch_0
    const-string/jumbo v0, "SCAN_UNKNOWN"

    return-object v0

    .line 623
    :pswitch_1
    const-string/jumbo v0, "SCAN_SUCCESS"

    return-object v0

    .line 625
    :pswitch_2
    const-string/jumbo v0, "SCAN_FAILURE_INTERRUPTED"

    return-object v0

    .line 627
    :pswitch_3
    const-string/jumbo v0, "SCAN_FAILURE_INVALID_CONFIGURATION"

    return-object v0

    .line 629
    :pswitch_4
    const-string/jumbo v0, "FAILURE_WIFI_DISABLED"

    return-object v0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 3
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    .line 444
    .local v1, "dtimInterval":I
    if-lez v1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v2

    iput v1, v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 469
    const/4 v0, 0x6

    .line 472
    .local v0, "connectionWifiMode":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v2

    iput v0, v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 442
    return-void

    .line 451
    .end local v0    # "connectionWifiMode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 452
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 454
    .end local v0    # "connectionWifiMode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 455
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 457
    .end local v0    # "connectionWifiMode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 458
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 460
    .end local v0    # "connectionWifiMode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 461
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 463
    .end local v0    # "connectionWifiMode":I
    :pswitch_4
    const/4 v0, 0x4

    .line 464
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 466
    .end local v0    # "connectionWifiMode":I
    :pswitch_5
    const/4 v0, 0x5

    .line 467
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x2

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    .line 482
    const/4 v1, 0x1

    .line 481
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 496
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    .line 497
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 496
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 479
    return-void

    .line 488
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    .line 493
    const/4 v1, 0x3

    .line 492
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0
.end method

.method private wifiSystemStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 659
    packed-switch p1, :pswitch_data_0

    .line 669
    const-string/jumbo v0, "default"

    return-object v0

    .line 661
    :pswitch_0
    const-string/jumbo v0, "WIFI_UNKNOWN"

    return-object v0

    .line 663
    :pswitch_1
    const-string/jumbo v0, "WIFI_DISABLED"

    return-object v0

    .line 665
    :pswitch_2
    const-string/jumbo v0, "WIFI_DISCONNECTED"

    return-object v0

    .line 667
    :pswitch_3
    const-string/jumbo v0, "WIFI_ASSOCIATED"

    return-object v0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 745
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 713
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 721
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 729
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadOtherNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 737
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public countScanResults(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    if-nez p1, :cond_0

    .line 860
    return-void

    .line 862
    :cond_0
    const/4 v10, 0x0

    .line 863
    .local v10, "totalResults":I
    const/4 v5, 0x0

    .line 864
    .local v5, "openNetworks":I
    const/4 v6, 0x0

    .line 865
    .local v6, "personalNetworks":I
    const/4 v0, 0x0

    .line 866
    .local v0, "enterpriseNetworks":I
    const/4 v1, 0x0

    .line 867
    .local v1, "hiddenNetworks":I
    const/4 v2, 0x0

    .line 868
    .local v2, "hotspot2r1Networks":I
    const/4 v3, 0x0

    .line 869
    .local v3, "hotspot2r2Networks":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .line 870
    .local v7, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    .line 871
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    .line 872
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    add-int/lit8 v10, v10, 0x1

    .line 873
    if-eqz v4, :cond_3

    .line 874
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isHiddenBeaconFrame()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 875
    add-int/lit8 v1, v1, 0x1

    .line 877
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 878
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_4

    .line 879
    add-int/lit8 v2, v2, 0x1

    .line 885
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 886
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_3

    .line 881
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 888
    :cond_5
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 889
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 888
    if-eqz v11, :cond_7

    .line 890
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 892
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 896
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v7    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v12, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 897
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    add-int/2addr v13, v10

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 898
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    add-int/2addr v13, v5

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 899
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    add-int/2addr v13, v6

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 900
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    add-int/2addr v13, v0

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 901
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    add-int/2addr v13, v1

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 902
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    add-int/2addr v13, v2

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 903
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    add-int/2addr v13, v3

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 904
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 858
    return-void

    .line 896
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 936
    :try_start_0
    move-object/from16 v0, p3

    array-length v10, v0

    if-lez v10, :cond_3

    const-string/jumbo v10, "wifiMetricsProto"

    const/4 v12, 0x0

    aget-object v12, p3, v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 938
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wifi/WifiMetrics;->consolidateProto(Z)V

    .line 939
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 940
    .local v3, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eq v10, v3, :cond_0

    .line 943
    iget-object v10, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 935
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 946
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-static {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v9

    .line 947
    .local v9, "wifiMetricsProto":[B
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "metricsProtoDump":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v10, v0

    const/4 v12, 0x1

    if-le v10, v12, :cond_2

    const-string/jumbo v10, "clean"

    const/4 v12, 0x1

    aget-object v12, p3, v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 950
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMetrics;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "metricsProtoDump":Ljava/lang/String;
    .end local v9    # "wifiMetricsProto":[B
    :goto_2
    monitor-exit v11

    .line 934
    return-void

    .line 953
    .restart local v7    # "metricsProtoDump":Ljava/lang/String;
    .restart local v9    # "wifiMetricsProto":[B
    :cond_2
    :try_start_2
    const-string/jumbo v10, "WifiMetrics:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    const-string/jumbo v10, "EndWifiMetrics"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 959
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    .end local v7    # "metricsProtoDump":Ljava/lang/String;
    .end local v9    # "wifiMetricsProto":[B
    :cond_3
    const-string/jumbo v10, "WifiMetrics:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    const-string/jumbo v10, "mConnectionEvents:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 962
    .restart local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "eventLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-ne v3, v10, :cond_4

    .line 964
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "CURRENTLY OPEN EVENT"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 966
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 968
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v5    # "eventLine":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numSavedNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numOpenNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numPersonalNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 970
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numEnterpriseNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 973
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 972
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numHiddenNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numPasspointNetworks="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 976
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 975
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.isLocationEnabled="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.isScanningAlwaysEnabled="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 978
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numNetworksAddedByUser="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 980
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numNetworksAddedByApps="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 983
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 982
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numNonEmptyScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 985
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 984
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numEmptyScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 986
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numOneshotScans="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 988
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numBackgroundScans="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 990
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v10, "mScanReturnEntries:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  SCAN_UNKNOWN: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 995
    const/4 v12, 0x0

    .line 994
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  SCAN_SUCCESS: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 997
    const/4 v12, 0x1

    .line 996
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  SCAN_FAILURE_INTERRUPTED: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 999
    const/4 v12, 0x2

    .line 998
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  SCAN_FAILURE_INVALID_CONFIGURATION: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1001
    const/4 v12, 0x3

    .line 1000
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  FAILURE_WIFI_DISABLED: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1003
    const/4 v12, 0x4

    .line 1002
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v10, "mSystemStateEntries: <state><screenOn> : <scansInitiated>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_UNKNOWN       ON: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1007
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1006
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_DISABLED      ON: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1009
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1008
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_DISCONNECTED  ON: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1011
    const/4 v12, 0x2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1010
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_ASSOCIATED    ON: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1013
    const/4 v12, 0x3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1012
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_UNKNOWN      OFF: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1015
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1014
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_DISABLED     OFF: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1017
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1016
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_DISCONNECTED OFF: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1019
    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1018
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  WIFI_ASSOCIATED   OFF: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1021
    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v12

    .line 1020
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogPnoGood="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 1022
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogPnoBad="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 1024
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogBackgroundGood="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1027
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 1026
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogBackgroundBad="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1029
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 1028
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggers="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 1030
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadAssociationNetworksTotal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 1032
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadAuthenticationNetworksTotal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1035
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 1034
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadDhcpNetworksTotal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1037
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 1036
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadOtherNetworksTotal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1039
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 1038
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogAvailableNetworksTotal="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1041
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 1040
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAssociation="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1043
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 1042
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAuthentication="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 1044
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadDhcp="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 1046
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadOther="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1049
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 1048
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogSuccesses="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1051
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 1050
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.recordDurationSec="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1053
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    sub-long/2addr v12, v14

    .line 1052
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v10, "mWifiLogProto.rssiPollRssiCount: Printing counts for [-127, 0]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/16 v6, -0x7f

    .local v6, "i":I
    :goto_4
    if-gtz v6, :cond_6

    .line 1058
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1060
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v10, "mWifiLogProto.alertReasonCounts="

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1063
    const/4 v6, 0x0

    .line 1064
    :goto_5
    const/16 v10, 0x40

    .line 1063
    if-gt v6, v10, :cond_8

    .line 1065
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1066
    .local v2, "count":I
    if-lez v2, :cond_7

    .line 1067
    const-string/jumbo v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "),"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1070
    .end local v2    # "count":I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v12, 0x1

    if-le v10, v12, :cond_9

    .line 1071
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1072
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numTotalScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 1076
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numOpenNetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 1078
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numPersonalNetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1081
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 1080
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numEnterpriseNetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 1082
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numHiddenNetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 1084
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numHotspot2R1NetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 1086
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numHotspot2R2NetworkScanResults="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1089
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 1088
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mWifiLogProto.numScans="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v10, "mWifiLogProto.WifiScoreCount: [0, 60]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    const/4 v6, 0x0

    :goto_7
    const/16 v10, 0x3c

    if-gt v6, v10, :cond_a

    .line 1094
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1074
    :cond_9
    const-string/jumbo v10, "()"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1096
    :cond_a
    const-string/jumbo v10, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public endConnectionEvent(II)V
    .locals 8
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 421
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v3, :cond_0

    .line 423
    if-ne p1, v1, :cond_2

    .line 424
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 425
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v3, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-eqz v0, :cond_3

    :goto_1
    iput v1, v3, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    .line 426
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    .line 427
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 428
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v4

    .line 429
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v6

    .line 428
    sub-long/2addr v4, v6

    .line 427
    long-to-int v3, v4

    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    .line 430
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput p1, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    .line 431
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput p2, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Z
    :cond_0
    monitor-exit v2

    .line 420
    return-void

    .line 424
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 423
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 425
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 421
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getBackgroundScanCount()I
    .locals 2

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v0, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOneshotScanCount()I
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v0, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getScanReturnEntry(I)I
    .locals 2
    .param p1, "scanReturnCode"    # I

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemStateCount(IZ)I
    .locals 4
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 697
    mul-int/lit8 v3, p1, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v3, v1

    .line 698
    .local v0, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 697
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    .restart local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementAlertReasonCount(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 845
    const/16 v1, 0x40

    if-gt p1, v1, :cond_0

    .line 846
    if-gez p1, :cond_1

    .line 847
    :cond_0
    const/4 p1, 0x0

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 851
    .local v0, "alertCount":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 844
    return-void

    .line 849
    .end local v0    # "alertCount":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementBackgroundScanCount()V
    .locals 3

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 583
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementEmptyScanResultCount()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 573
    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNonEmptyScanResultCount()V
    .locals 3

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 563
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundBad()V
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 810
    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundGood()V
    .locals 3

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 802
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogPnoBad()V
    .locals 3

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 794
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogPnoGood()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 786
    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogSuccesses()V
    .locals 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 833
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggers()V
    .locals 3

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 705
    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAssociation()V
    .locals 3

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 753
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAuthentication()V
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 761
    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadDhcp()V
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 769
    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadOther()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 777
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementOneshotScanCount()V
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 606
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiSystemScanStateCount(IZ)V

    .line 602
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementRssiPollRssiCount(I)V
    .locals 4
    .param p1, "rssi"    # I

    .prologue
    .line 821
    const/16 v1, -0x7f

    if-lt p1, v1, :cond_0

    if-lez p1, :cond_1

    .line 822
    :cond_0
    return-void

    .line 824
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 826
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 820
    return-void

    .line 824
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementScanReturnEntry(II)V
    .locals 3
    .param p1, "scanReturnCode"    # I
    .param p2, "countToAdd"    # I

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 644
    .local v0, "entry":I
    add-int/2addr v0, p2

    .line 645
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 640
    return-void

    .line 641
    .end local v0    # "entry":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementWifiScoreCount(I)V
    .locals 4
    .param p1, "score"    # I

    .prologue
    .line 914
    if-ltz p1, :cond_0

    const/16 v1, 0x3c

    if-le p1, v1, :cond_1

    .line 915
    :cond_0
    return-void

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 919
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 913
    return-void

    .line 917
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementWifiSystemScanStateCount(IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    .prologue
    .line 680
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 685
    mul-int/lit8 v4, p1, 0x2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int v1, v4, v2

    .line 686
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 687
    .local v0, "entry":I
    add-int/lit8 v0, v0, 0x1

    .line 688
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 679
    return-void

    .line 685
    .end local v0    # "entry":I
    .end local v1    # "index":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 680
    .restart local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setConnectionEventRoamType(I)V
    .locals 2
    .param p1, "roamType"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 383
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    .line 395
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v0

    .line 398
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 401
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 401
    if-eqz v2, :cond_0

    .line 405
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    .line 406
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    monitor-exit v3

    .line 394
    return-void

    .line 395
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setIsLocationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 548
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setIsScanningAlwaysEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 554
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumEnterpriseNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 518
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumHiddenNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 524
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumNetworksAddedByApps(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 542
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumNetworksAddedByUser(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 536
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumOpenNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 506
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumPasspointNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 530
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumPersonalNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 512
    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setNumSavedNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 500
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setScreenState(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1217
    return-void

    .line 1218
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setWifiState(I)V
    .locals 2
    .param p1, "wifiState"    # I

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1226
    return-void

    .line 1227
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "targetBSSID"    # Ljava/lang/String;
    .param p3, "roamType"    # I

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    if-eqz p1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "any"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    if-eqz v0, :cond_2

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    const/16 v0, 0x8

    .line 355
    const/4 v2, 0x1

    .line 354
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x100

    if-lt v0, v2, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 358
    :cond_2
    const/4 v0, 0x7

    .line 359
    const/4 v2, 0x1

    .line 358
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    goto :goto_0

    .line 366
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 368
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 367
    iput-wide v2, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput p3, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    .line 371
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const-string/jumbo v2, "any"

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z

    .line 376
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 341
    return-void
.end method

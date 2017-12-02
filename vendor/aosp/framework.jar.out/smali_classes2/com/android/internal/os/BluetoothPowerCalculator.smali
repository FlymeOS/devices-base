.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private mAppTotalPowerMah:D

.field private mAppTotalTimeMs:J

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 31
    const-string/jumbo v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 32
    const-string/jumbo v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 33
    const-string/jumbo v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 30
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 20
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 41
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-nez v2, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 46
    .local v4, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    .line 47
    .local v8, "rxTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v14, 0x0

    aget-object v3, v3, v14

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 48
    .local v12, "txTimeMs":J
    add-long v14, v4, v12

    add-long v10, v14, v8

    .line 49
    .local v10, "totalTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    long-to-double v14, v14

    .line 50
    const-wide v16, 0x414b774000000000L    # 3600000.0

    .line 49
    div-double v6, v14, v16

    .line 52
    .local v6, "powerMah":D
    const-wide/16 v14, 0x0

    cmpl-double v3, v6, v14

    if-nez v3, :cond_1

    .line 53
    long-to-double v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    long-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    long-to-double v0, v12

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 54
    const-wide v16, 0x414b774000000000L    # 3600000.0

    .line 53
    div-double v6, v14, v16

    .line 57
    :cond_1
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 58
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 59
    const/4 v3, 0x4

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 60
    const/4 v3, 0x5

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 62
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    add-double/2addr v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 63
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    add-long/2addr v14, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 38
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 20
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 72
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 73
    .local v4, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v14, 0x0

    aget-object v3, v3, v14

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 74
    .local v12, "txTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    .line 75
    .local v8, "rxTimeMs":J
    add-long v14, v4, v12

    add-long v10, v14, v8

    .line 76
    .local v10, "totalTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    long-to-double v14, v14

    .line 77
    const-wide v16, 0x414b774000000000L    # 3600000.0

    .line 76
    div-double v6, v14, v16

    .line 79
    .local v6, "powerMah":D
    const-wide/16 v14, 0x0

    cmpl-double v3, v6, v14

    if-nez v3, :cond_0

    .line 81
    long-to-double v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    long-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    long-to-double v0, v12

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 82
    const-wide v16, 0x414b774000000000L    # 3600000.0

    .line 81
    div-double v6, v14, v16

    .line 86
    :cond_0
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    move-wide/from16 v16, v0

    sub-double v16, v6, v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 93
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 94
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 68
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 98
    return-void
.end method

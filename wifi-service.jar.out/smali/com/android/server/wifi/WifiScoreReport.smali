.class public Lcom/android/server/wifi/WifiScoreReport;
.super Ljava/lang/Object;
.source "WifiScoreReport.java"


# static fields
.field private static final AGGRESSIVE_HANDOVER_PENALTY:I = 0x6

.field private static final BAD_LINKSPEED_PENALTY:I = 0x4

.field private static final BAD_RSSI_COUNT_PENALTY:I = 0x2

.field private static final GOOD_LINKSPEED_BONUS:I = 0x4

.field private static final HOME_VISIBLE_NETWORK_MAX_COUNT:I = 0x6

.field private static final LINK_STUCK_PENALTY:I = 0x2

.field private static final MAX_BAD_LINKSPEED_COUNT:I = 0x6

.field private static final MAX_BAD_RSSI_COUNT:I = 0x7

.field private static final MAX_LOW_RSSI_COUNT:I = 0x1

.field private static final MAX_STUCK_LINK_COUNT:I = 0x5

.field private static final MAX_SUCCESS_COUNT_OF_STUCK_LINK:I = 0x3

.field private static final MIN_NUM_TICKS_AT_STATE:I = 0x3e8

.field private static final MIN_SUCCESS_COUNT:I = 0x5

.field private static final MIN_SUSTAINED_LINK_STUCK_COUNT:I = 0x1

.field private static final MIN_TX_RATE_FOR_WORKING_LINK:D = 0.3

.field private static final SCAN_CACHE_COUNT_PENALTY:I = 0x2

.field private static final SCAN_CACHE_VISIBILITY_MS:I = 0x2ee0

.field private static final STARTING_SCORE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final USER_DISCONNECT_PENALTY:I = 0x5


# instance fields
.field private mBadLinkspeedcount:I

.field private mReport:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "report"    # Ljava/lang/String;
    .param p2, "badLinkspeedcount"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    .line 59
    return-void
.end method

.method public static calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;ILcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiScoreReport;
    .locals 24
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p1, "currentConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p4, "lastReport"    # Lcom/android/server/wifi/WifiScoreReport;
    .param p5, "aggressiveHandover"    # I
    .param p6, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "debugLogging":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-lez v18, :cond_0

    .line 104
    const/4 v3, 0x1

    .line 107
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x38

    .line 110
    .local v16, "score":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_23

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    .line 110
    const/4 v6, 0x1

    .line 114
    .local v6, "isBadLinkspeed":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_25

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_25

    .line 114
    const/4 v8, 0x1

    .line 119
    .local v8, "isGoodLinkspeed":Z
    :goto_1
    const/4 v2, 0x0

    .line 120
    .local v2, "badLinkspeedcount":I
    if-eqz p4, :cond_1

    .line 121
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/WifiScoreReport;->getBadLinkspeedcount()I

    move-result v2

    .line 124
    :cond_1
    if-eqz v6, :cond_27

    .line 125
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 134
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    const-string/jumbo v18, " bl("

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    if-eqz v8, :cond_4

    const-string/jumbo v18, " gl"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_4
    const/16 v17, 0x0

    .line 146
    .local v17, "use24Thresholds":Z
    const/4 v4, 0x0

    .line 148
    .local v4, "homeNetworkBoost":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    .line 149
    .local v15, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz p1, :cond_6

    if-eqz v15, :cond_6

    .line 151
    const-wide/16 v18, 0x2ee0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v18

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 152
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 153
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    sget v19, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 154
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    .line 155
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    .line 154
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 156
    const/16 v17, 0x1

    .line 159
    :cond_5
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 160
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    .line 162
    const/16 v19, 0x1

    .line 161
    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->get(I)Z

    move-result v18

    .line 159
    if-eqz v18, :cond_6

    .line 165
    const/4 v4, 0x1

    .line 168
    :cond_6
    if-eqz v4, :cond_7

    const-string/jumbo v18, " hn"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_7
    if-eqz v17, :cond_8

    const-string/jumbo v18, " u24"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    mul-int/lit8 v19, p5, 0x6

    sub-int v19, v18, v19

    .line 172
    if-eqz v4, :cond_28

    const/16 v18, 0x5

    .line 171
    :goto_3
    add-int v12, v19, v18

    .line 173
    .local v12, "rssi":I
    const-string/jumbo v18, " rssi=%d ag=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    if-nez v17, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v5

    .line 177
    .local v5, "is24GHz":Z
    :goto_4
    if-eqz v5, :cond_2a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2a

    const/4 v7, 0x1

    .line 179
    .local v7, "isBadRSSI":Z
    :goto_5
    if-eqz v5, :cond_2c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2c

    const/4 v10, 0x1

    .line 182
    .local v10, "isLowRSSI":Z
    :goto_6
    if-eqz v5, :cond_2f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_2f

    const/4 v9, 0x1

    .line 186
    .local v9, "isHighRSSI":Z
    :goto_7
    if-eqz v7, :cond_9

    const-string/jumbo v18, " br"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_9
    if-eqz v10, :cond_a

    const-string/jumbo v18, " lr"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_a
    if-eqz v9, :cond_b

    const-string/jumbo v18, " hr"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_b
    const/4 v11, 0x0

    .line 191
    .local v11, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz p1, :cond_13

    .line 192
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_c

    .line 193
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_13

    .line 194
    :cond_c
    if-eqz v7, :cond_33

    .line 195
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 196
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 199
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 200
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 202
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_e

    .line 203
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 205
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_f

    .line 206
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 208
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 210
    :cond_10
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 211
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_11

    .line 212
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_32

    .line 215
    :cond_11
    :goto_8
    const/16 v16, 0x33

    .line 216
    const/4 v11, 0x1

    .line 217
    const-string/jumbo v18, " p1"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_12
    :goto_9
    const-string/jumbo v18, " ticks %d,%d,%d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 258
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v19, v21

    .line 257
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_13
    if-eqz v3, :cond_16

    .line 263
    const-string/jumbo v13, ""

    .line 264
    .local v13, "rssiStatus":Ljava/lang/String;
    if-eqz v7, :cond_3b

    .line 265
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " badRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 271
    :cond_14
    :goto_a
    if-eqz v6, :cond_15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " lowSpeed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 272
    :cond_15
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "calculateWifiScore freq="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 273
    const-string/jumbo v20, " speed="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 274
    const-string/jumbo v20, " score="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 276
    const-string/jumbo v20, " -> txbadrate="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 276
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 277
    const-string/jumbo v20, " txgoodrate="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 277
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 278
    const-string/jumbo v20, " txretriesrate="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 278
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 279
    const-string/jumbo v20, " rxrate="

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 279
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 280
    const-string/jumbo v20, " userTriggerdPenalty"

    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_3d

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3d

    .line 284
    if-nez v7, :cond_17

    .line 283
    if-eqz v10, :cond_3d

    .line 286
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 289
    :cond_18
    const-string/jumbo v18, " ls+=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-eqz v3, :cond_19

    .line 291
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " bad link -> stuck count ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 291
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_19
    :goto_b
    const-string/jumbo v18, " [%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x2

    sub-int v16, v16, v18

    .line 311
    :cond_1a
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    if-eqz v6, :cond_3f

    .line 314
    add-int/lit8 v16, v16, -0x4

    .line 315
    if-eqz v3, :cond_1b

    .line 316
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " isBadLinkspeed   ---> count="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 317
    const-string/jumbo v20, " score="

    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 317
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1b
    :goto_c
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    if-eqz v7, :cond_40

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 339
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v16, v16, v18

    .line 340
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    if-eqz v3, :cond_1d

    .line 343
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " badRSSI count"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 344
    const-string/jumbo v20, " lowRSSI count"

    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 345
    const-string/jumbo v20, " --> score "

    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 345
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1d
    if-eqz v9, :cond_1e

    .line 349
    add-int/lit8 v16, v16, 0x5

    .line 350
    if-eqz v3, :cond_1e

    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " isHighRSSI       ---> score="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1e
    const-string/jumbo v18, ",%d]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string/jumbo v18, " brc=%d lrc=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1f

    .line 358
    const/16 v16, 0x3c

    .line 360
    :cond_1f
    if-gez v16, :cond_20

    .line 361
    const/16 v16, 0x0

    .line 365
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_22

    .line 366
    if-eqz v3, :cond_21

    .line 367
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "calculateWifiScore() report new score "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_21
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->score:I

    .line 370
    if-eqz p3, :cond_22

    .line 371
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    .line 374
    :cond_22
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiScoreCount(I)V

    .line 375
    new-instance v18, Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Ljava/lang/String;I)V

    return-object v18

    .line 112
    .end local v2    # "badLinkspeedcount":I
    .end local v4    # "homeNetworkBoost":Z
    .end local v5    # "is24GHz":Z
    .end local v6    # "isBadLinkspeed":Z
    .end local v7    # "isBadRSSI":Z
    .end local v8    # "isGoodLinkspeed":Z
    .end local v9    # "isHighRSSI":Z
    .end local v10    # "isLowRSSI":Z
    .end local v11    # "penalizedDueToUserTriggeredDisconnect":I
    .end local v12    # "rssi":I
    .end local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v17    # "use24Thresholds":Z
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    .line 113
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    move/from16 v19, v0

    .line 112
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_24

    const/4 v6, 0x1

    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .end local v6    # "isBadLinkspeed":Z
    :cond_24
    const/4 v6, 0x0

    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .line 116
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    .line 117
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    move/from16 v19, v0

    .line 116
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_26

    const/4 v8, 0x1

    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .end local v8    # "isGoodLinkspeed":Z
    :cond_26
    const/4 v8, 0x0

    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .line 129
    .restart local v2    # "badLinkspeedcount":I
    :cond_27
    if-lez v2, :cond_2

    .line 130
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 172
    .restart local v4    # "homeNetworkBoost":Z
    .restart local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "use24Thresholds":Z
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 175
    .restart local v12    # "rssi":I
    :cond_29
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 178
    .restart local v5    # "is24GHz":Z
    :cond_2a
    if-nez v5, :cond_2b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2b

    const/4 v7, 0x1

    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    .end local v7    # "isBadRSSI":Z
    :cond_2b
    const/4 v7, 0x0

    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    .line 180
    :cond_2c
    if-nez v5, :cond_2e

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2d

    const/4 v10, 0x1

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .end local v10    # "isLowRSSI":Z
    :cond_2d
    const/4 v10, 0x0

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .line 180
    .end local v10    # "isLowRSSI":Z
    :cond_2e
    const/4 v10, 0x0

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .line 183
    :cond_2f
    if-nez v5, :cond_31

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_30

    const/4 v9, 0x1

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .end local v9    # "isHighRSSI":Z
    :cond_30
    const/4 v9, 0x0

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .line 183
    .end local v9    # "isHighRSSI":Z
    :cond_31
    const/4 v9, 0x0

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .line 213
    .restart local v11    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    goto/16 :goto_8

    .line 219
    :cond_33
    if-eqz v10, :cond_38

    .line 220
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 221
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_36

    .line 224
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_34

    .line 225
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 227
    :cond_34
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_35

    .line 228
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 230
    :cond_35
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 232
    :cond_36
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 233
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_37

    .line 234
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    .line 236
    :cond_37
    const/16 v16, 0x33

    .line 237
    const/4 v11, 0x2

    .line 238
    const-string/jumbo v18, " p2"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 240
    :cond_38
    if-nez v9, :cond_12

    .line 241
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 242
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3a

    .line 245
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_39

    .line 246
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 248
    :cond_39
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 250
    :cond_3a
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 251
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    .line 252
    const/16 v16, 0x33

    .line 253
    const/4 v11, 0x3

    .line 254
    const-string/jumbo v18, " p3"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 266
    .restart local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3b
    if-eqz v9, :cond_3c

    .line 267
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " highRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 268
    :cond_3c
    if-eqz v10, :cond_14

    .line 269
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " lowRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 294
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd3333333333333L    # 0.3

    cmpg-double v18, v18, v20

    if-gez v18, :cond_19

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    if-lez v18, :cond_3e

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 298
    :cond_3e
    const-string/jumbo v18, " ls-=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    if-eqz v3, :cond_19

    .line 300
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " good link -> stuck count ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 300
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 319
    :cond_3f
    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1b

    .line 320
    add-int/lit8 v16, v16, 0x4

    goto/16 :goto_c

    .line 328
    :cond_40
    if-eqz v10, :cond_41

    .line 329
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    if-lez v18, :cond_1c

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    goto/16 :goto_d

    .line 335
    :cond_41
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 336
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    goto/16 :goto_d
.end method


# virtual methods
.method public getBadLinkspeedcount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    return v0
.end method

.method public getReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final FAILURE_ASSOCIATION_REJECTION:I = 0x2

.field public static final FAILURE_AUTHENTICATION_FAILURE:I = 0x3

.field public static final FAILURE_CONNECT_NETWORK_FAILED:I = 0x5

.field public static final FAILURE_DHCP:I = 0xa

.field public static final FAILURE_NETWORK_DISCONNECTION:I = 0x6

.field public static final FAILURE_NEW_CONNECTION_ATTEMPT:I = 0x7

.field public static final FAILURE_NONE:I = 0x1

.field public static final FAILURE_REDUNDANT_CONNECTION_ATTEMPT:I = 0x8

.field public static final FAILURE_ROAM_TIMEOUT:I = 0x9

.field public static final FAILURE_SSID_TEMP_DISABLED:I = 0x4

.field public static final FAILURE_UNKNOWN:I


# instance fields
.field private mConfigBssid:Ljava/lang/String;

.field private mConfigSsid:Ljava/lang/String;

.field mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

.field private mRealEndTime:J

.field private mRealStartTime:J

.field mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

.field private mScreenOn:Z

.field private mWifiState:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    return p1
.end method

.method private constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 195
    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    .line 196
    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    .line 197
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    .line 199
    const-string/jumbo v0, "<NULL>"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "<NULL>"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    .line 201
    iput v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    .line 202
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "c":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget-wide v4, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget-wide v4, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-string/jumbo v2, "            <null>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v2, ", SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v2, ", BSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v2, ", durationMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v2, ", roamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    packed-switch v2, :pswitch_data_0

    .line 237
    const-string/jumbo v2, "ROAM_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_1
    const-string/jumbo v2, ", connectionResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v2, ", level2FailureCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    packed-switch v2, :pswitch_data_1

    .line 273
    :goto_2
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_3
    const-string/jumbo v2, ", connectivityLevelFailureCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    packed-switch v2, :pswitch_data_2

    .line 291
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_4
    const-string/jumbo v2, ", signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iget v2, v2, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v2, ", wifiState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    packed-switch v2, :pswitch_data_3

    .line 308
    const-string/jumbo v2, "WIFI_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :goto_5
    const-string/jumbo v2, ", screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v2, ". mRouterFingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 212
    :cond_0
    :try_start_1
    const-string/jumbo v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 222
    :pswitch_0
    const-string/jumbo v2, "ROAM_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 209
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 225
    :pswitch_1
    :try_start_2
    const-string/jumbo v2, "ROAM_DBDC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 228
    :pswitch_2
    const-string/jumbo v2, "ROAM_ENTERPRISE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 231
    :pswitch_3
    const-string/jumbo v2, "ROAM_USER_SELECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 234
    :pswitch_4
    const-string/jumbo v2, "ROAM_UNRELATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 244
    :pswitch_5
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 247
    :pswitch_6
    const-string/jumbo v2, "ASSOCIATION_REJECTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 250
    :pswitch_7
    const-string/jumbo v2, "AUTHENTICATION_FAILURE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 253
    :pswitch_8
    const-string/jumbo v2, "SSID_TEMP_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 256
    :pswitch_9
    const-string/jumbo v2, "CONNECT_NETWORK_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 259
    :pswitch_a
    const-string/jumbo v2, "NETWORK_DISCONNECTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 262
    :pswitch_b
    const-string/jumbo v2, "NEW_CONNECTION_ATTEMPT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 265
    :pswitch_c
    const-string/jumbo v2, "REDUNDANT_CONNECTION_ATTEMPT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 268
    :pswitch_d
    const-string/jumbo v2, "ROAM_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 271
    :pswitch_e
    const-string/jumbo v2, "DHCP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 279
    :pswitch_f
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 282
    :pswitch_10
    const-string/jumbo v2, "DHCP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 285
    :pswitch_11
    const-string/jumbo v2, "NO_INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 288
    :pswitch_12
    const-string/jumbo v2, "UNWANTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 299
    :pswitch_13
    const-string/jumbo v2, "WIFI_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 302
    :pswitch_14
    const-string/jumbo v2, "WIFI_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 305
    :pswitch_15
    const-string/jumbo v2, "WIFI_ASSOCIATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 242
    :pswitch_data_1
    .packed-switch 0x1
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

    .line 277
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 297
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

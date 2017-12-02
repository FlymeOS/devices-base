.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public recordDurationSec:I

.field public rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    .line 420
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    .line 264
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 271
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    return-object v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1246
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 426
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 427
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 428
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 429
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 430
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 431
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 432
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 433
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 434
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 435
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 436
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 437
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 438
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 439
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 440
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 441
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 442
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 443
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 444
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 445
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 446
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 447
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 448
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 449
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 450
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 451
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 452
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 453
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 454
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 455
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 456
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 457
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 458
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 459
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    .line 460
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 461
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    .line 462
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 463
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 464
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 465
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 466
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 467
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 468
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 469
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 470
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 471
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    .line 472
    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    .line 473
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->cachedSize:I

    .line 474
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 10

    .prologue
    .line 669
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v7

    .line 670
    .local v7, "size":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 671
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v8, v8

    if-ge v6, v8, :cond_1

    .line 672
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v8, v6

    .line 673
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    .line 675
    const/4 v8, 0x1

    .line 674
    invoke-static {v8, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 671
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v8, :cond_2

    .line 681
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v9, 0x2

    .line 680
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 683
    :cond_2
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v8, :cond_3

    .line 685
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v9, 0x3

    .line 684
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 687
    :cond_3
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v8, :cond_4

    .line 689
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v9, 0x4

    .line 688
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 691
    :cond_4
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v8, :cond_5

    .line 693
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v9, 0x5

    .line 692
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 695
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v8, :cond_6

    .line 697
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v9, 0x6

    .line 696
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    .line 699
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v8, :cond_7

    .line 701
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v9, 0x7

    .line 700
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    .line 703
    :cond_7
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v8, :cond_8

    .line 705
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v9, 0x8

    .line 704
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 707
    :cond_8
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v8, :cond_9

    .line 709
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v9, 0x9

    .line 708
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 711
    :cond_9
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v8, :cond_a

    .line 713
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v9, 0xa

    .line 712
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 715
    :cond_a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v8, :cond_b

    .line 717
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v9, 0xb

    .line 716
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 719
    :cond_b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v8, :cond_c

    .line 721
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v9, 0xc

    .line 720
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 723
    :cond_c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v8, :cond_d

    .line 725
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v9, 0xd

    .line 724
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 727
    :cond_d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v8, :cond_e

    .line 729
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v9, 0xe

    .line 728
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 731
    :cond_e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v8, :cond_f

    .line 733
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v9, 0xf

    .line 732
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 735
    :cond_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-lez v8, :cond_11

    .line 736
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_11

    .line 737
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v8, v6

    .line 738
    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    .line 740
    const/16 v8, 0x10

    .line 739
    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 736
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 744
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-lez v8, :cond_13

    .line 745
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_13

    .line 746
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v8, v6

    .line 747
    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    .line 749
    const/16 v8, 0x11

    .line 748
    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 745
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 753
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-lez v8, :cond_15

    .line 754
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_15

    .line 755
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v8, v6

    .line 756
    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    .line 758
    const/16 v8, 0x12

    .line 757
    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 754
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 762
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-lez v8, :cond_17

    .line 763
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_17

    .line 764
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v8, v6

    .line 765
    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    .line 767
    const/16 v8, 0x13

    .line 766
    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 763
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 771
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v8, :cond_18

    .line 773
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v9, 0x14

    .line 772
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 775
    :cond_18
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v8, :cond_19

    .line 777
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v9, 0x15

    .line 776
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 779
    :cond_19
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v8, :cond_1a

    .line 781
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v9, 0x16

    .line 780
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 783
    :cond_1a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v8, :cond_1b

    .line 785
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v9, 0x17

    .line 784
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 787
    :cond_1b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v8, :cond_1c

    .line 789
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v9, 0x18

    .line 788
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 791
    :cond_1c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v8, :cond_1d

    .line 793
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v9, 0x19

    .line 792
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 795
    :cond_1d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v8, :cond_1e

    .line 797
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v9, 0x1a

    .line 796
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 799
    :cond_1e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v8, :cond_1f

    .line 801
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v9, 0x1b

    .line 800
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 803
    :cond_1f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v8, :cond_20

    .line 805
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v9, 0x1c

    .line 804
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 807
    :cond_20
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v8, :cond_21

    .line 809
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v9, 0x1d

    .line 808
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 811
    :cond_21
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v8, :cond_22

    .line 813
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v9, 0x1e

    .line 812
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 815
    :cond_22
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v8, :cond_23

    .line 817
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v9, 0x1f

    .line 816
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 819
    :cond_23
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v8, :cond_24

    .line 821
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v9, 0x20

    .line 820
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 823
    :cond_24
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v8, :cond_25

    .line 825
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v9, 0x21

    .line 824
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 827
    :cond_25
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v8, :cond_26

    .line 829
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v9, 0x22

    .line 828
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 831
    :cond_26
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-eqz v8, :cond_28

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v8, v8

    if-lez v8, :cond_28

    .line 832
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v8, v8

    if-ge v6, v8, :cond_28

    .line 833
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    aget-object v2, v8, v6

    .line 834
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    .line 836
    const/16 v8, 0x23

    .line 835
    invoke-static {v8, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 832
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 840
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v8, :cond_29

    .line 842
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v9, 0x24

    .line 841
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 844
    :cond_29
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v8, :cond_2a

    .line 846
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v9, 0x25

    .line 845
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 848
    :cond_2a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v8, :cond_2b

    .line 850
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v9, 0x26

    .line 849
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 852
    :cond_2b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v8, :cond_2c

    .line 854
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v9, 0x27

    .line 853
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 856
    :cond_2c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v8, :cond_2d

    .line 858
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v9, 0x28

    .line 857
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 860
    :cond_2d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v8, :cond_2e

    .line 862
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v9, 0x29

    .line 861
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 864
    :cond_2e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v8, :cond_2f

    .line 866
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v9, 0x2a

    .line 865
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 868
    :cond_2f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v8, :cond_30

    .line 870
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v9, 0x2b

    .line 869
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 872
    :cond_30
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v8, :cond_31

    .line 874
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v9, 0x2c

    .line 873
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 876
    :cond_31
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v8, :cond_32

    .line 878
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v9, 0x2d

    .line 877
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 880
    :cond_32
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v8, :cond_33

    .line 882
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v9, 0x2e

    .line 881
    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 884
    :cond_33
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-eqz v8, :cond_35

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v8, v8

    if-lez v8, :cond_35

    .line 885
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v8, v8

    if-ge v6, v8, :cond_35

    .line 886
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v8, v6

    .line 887
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    .line 889
    const/16 v8, 0x2f

    .line 888
    invoke-static {v8, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 885
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 893
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-eqz v8, :cond_37

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v8, v8

    if-lez v8, :cond_37

    .line 894
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v8, v8

    if-ge v6, v8, :cond_37

    .line 895
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    aget-object v5, v8, v6

    .line 896
    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    .line 898
    const/16 v8, 0x30

    .line 897
    invoke-static {v8, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 894
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 902
    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    return v7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 910
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v8

    .line 911
    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    .line 915
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 916
    return-object p0

    .line 913
    :sswitch_0
    return-object p0

    .line 922
    :sswitch_1
    const/16 v10, 0xa

    .line 921
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 923
    .local v0, "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-nez v10, :cond_2

    move v1, v9

    .line 925
    .local v1, "i":I
    :goto_1
    add-int v10, v1, v0

    new-array v3, v10, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 926
    .local v3, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_1

    .line 927
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-static {v10, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    :cond_1
    :goto_2
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_3

    .line 930
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v10, v3, v1

    .line 931
    aget-object v10, v3, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 932
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 923
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v1, v10

    goto :goto_1

    .line 935
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_3
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v10, v3, v1

    .line 936
    aget-object v10, v3, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 937
    iput-object v3, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    goto :goto_0

    .line 941
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto :goto_0

    .line 945
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto :goto_0

    .line 949
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto :goto_0

    .line 953
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_0

    .line 957
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto :goto_0

    .line 961
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto :goto_0

    .line 965
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto :goto_0

    .line 969
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    .line 973
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    .line 977
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    .line 981
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    .line 985
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    .line 989
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    .line 993
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    .line 998
    :sswitch_10
    const/16 v10, 0x82

    .line 997
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 999
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v10, :cond_5

    move v1, v9

    .line 1001
    .restart local v1    # "i":I
    :goto_3
    add-int v10, v1, v0

    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1002
    .local v5, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_4

    .line 1003
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    :cond_4
    :goto_4
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_6

    .line 1006
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    .line 1007
    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1008
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 999
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v10

    goto :goto_3

    .line 1011
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_6
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    .line 1012
    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1013
    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .line 1018
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_11
    const/16 v10, 0x8a

    .line 1017
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1019
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v10, :cond_8

    move v1, v9

    .line 1021
    .restart local v1    # "i":I
    :goto_5
    add-int v10, v1, v0

    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1022
    .local v6, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_7

    .line 1023
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1025
    :cond_7
    :goto_6
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_9

    .line 1026
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    .line 1027
    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1028
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1019
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v10

    goto :goto_5

    .line 1031
    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_9
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    .line 1032
    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1033
    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .line 1038
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_12
    const/16 v10, 0x92

    .line 1037
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1039
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v10, :cond_b

    move v1, v9

    .line 1041
    .restart local v1    # "i":I
    :goto_7
    add-int v10, v1, v0

    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1042
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_a

    .line 1043
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    :cond_a
    :goto_8
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_c

    .line 1046
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    .line 1047
    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1048
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1039
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_b
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v10

    goto :goto_7

    .line 1051
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_c
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    .line 1052
    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1053
    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .line 1058
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_13
    const/16 v10, 0x9a

    .line 1057
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1059
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v10, :cond_e

    move v1, v9

    .line 1061
    .restart local v1    # "i":I
    :goto_9
    add-int v10, v1, v0

    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1062
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_d

    .line 1063
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    :cond_d
    :goto_a
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_f

    .line 1066
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    .line 1067
    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1068
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1059
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_e
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v10

    goto :goto_9

    .line 1071
    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_f
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    .line 1072
    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1073
    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .line 1077
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    .line 1081
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    .line 1085
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    .line 1089
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    .line 1093
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    .line 1097
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    .line 1101
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    .line 1105
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    .line 1109
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    .line 1113
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    .line 1117
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    .line 1121
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    .line 1125
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    .line 1129
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    .line 1133
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    .line 1138
    :sswitch_23
    const/16 v10, 0x11a

    .line 1137
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1139
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-nez v10, :cond_11

    move v1, v9

    .line 1141
    .restart local v1    # "i":I
    :goto_b
    add-int v10, v1, v0

    new-array v4, v10, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    .line 1142
    .local v4, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v1, :cond_10

    .line 1143
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-static {v10, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1145
    :cond_10
    :goto_c
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_12

    .line 1146
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v10, v4, v1

    .line 1147
    aget-object v10, v4, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1148
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1145
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1139
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_11
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v1, v10

    goto :goto_b

    .line 1151
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_12
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v10, v4, v1

    .line 1152
    aget-object v10, v4, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1153
    iput-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    .line 1157
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    .line 1161
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    .line 1165
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    .line 1169
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    .line 1173
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    .line 1177
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    .line 1181
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    .line 1185
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    .line 1189
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    .line 1193
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    .line 1197
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    .line 1202
    :sswitch_2f
    const/16 v10, 0x17a

    .line 1201
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1203
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-nez v10, :cond_14

    move v1, v9

    .line 1205
    .restart local v1    # "i":I
    :goto_d
    add-int v10, v1, v0

    new-array v2, v10, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    .line 1206
    .local v2, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v1, :cond_13

    .line 1207
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-static {v10, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    :cond_13
    :goto_e
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_15

    .line 1210
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v10, v2, v1

    .line 1211
    aget-object v10, v2, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1212
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1203
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_14
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v1, v10

    goto :goto_d

    .line 1215
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_15
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v10, v2, v1

    .line 1216
    aget-object v10, v2, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1217
    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    .line 1222
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :sswitch_30
    const/16 v10, 0x182

    .line 1221
    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1223
    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-nez v10, :cond_17

    move v1, v9

    .line 1225
    .restart local v1    # "i":I
    :goto_f
    add-int v10, v1, v0

    new-array v7, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    .line 1226
    .local v7, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v1, :cond_16

    .line 1227
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-static {v10, v9, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1229
    :cond_16
    :goto_10
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_18

    .line 1230
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v10, v7, v1

    .line 1231
    aget-object v10, v7, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1232
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1223
    .end local v1    # "i":I
    .end local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_17
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v1, v10

    goto :goto_f

    .line 1235
    .restart local v1    # "i":I
    .restart local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_18
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v10, v7, v1

    .line 1236
    aget-object v10, v7, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1237
    iput-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    .line 911
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x158 -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x168 -> :sswitch_2d
        0x170 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x182 -> :sswitch_30
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v7, v7

    if-lez v7, :cond_1

    .line 481
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 482
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v7, v6

    .line 483
    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    .line 484
    const/4 v7, 0x1

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 481
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v7, :cond_2

    .line 489
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v8, 0x2

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 491
    :cond_2
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v7, :cond_3

    .line 492
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v8, 0x3

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 494
    :cond_3
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v7, :cond_4

    .line 495
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v8, 0x4

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 497
    :cond_4
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v7, :cond_5

    .line 498
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v8, 0x5

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 500
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v7, :cond_6

    .line 501
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 503
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v7, :cond_7

    .line 504
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v8, 0x7

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 506
    :cond_7
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v7, :cond_8

    .line 507
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v8, 0x8

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 509
    :cond_8
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v7, :cond_9

    .line 510
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v8, 0x9

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 512
    :cond_9
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v7, :cond_a

    .line 513
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v8, 0xa

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 515
    :cond_a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v7, :cond_b

    .line 516
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v8, 0xb

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 518
    :cond_b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v7, :cond_c

    .line 519
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v8, 0xc

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 521
    :cond_c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v7, :cond_d

    .line 522
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v8, 0xd

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 524
    :cond_d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v7, :cond_e

    .line 525
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v8, 0xe

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 527
    :cond_e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v7, :cond_f

    .line 528
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v8, 0xf

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 530
    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-lez v7, :cond_11

    .line 531
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_11

    .line 532
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v7, v6

    .line 533
    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    .line 534
    const/16 v7, 0x10

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 531
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 538
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-lez v7, :cond_13

    .line 539
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_13

    .line 540
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v7, v6

    .line 541
    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    .line 542
    const/16 v7, 0x11

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 539
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 546
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-lez v7, :cond_15

    .line 547
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_15

    .line 548
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v7, v6

    .line 549
    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    .line 550
    const/16 v7, 0x12

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 547
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 554
    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-lez v7, :cond_17

    .line 555
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_17

    .line 556
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v7, v6

    .line 557
    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    .line 558
    const/16 v7, 0x13

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 555
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 562
    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v7, :cond_18

    .line 563
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v8, 0x14

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 565
    :cond_18
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v7, :cond_19

    .line 566
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v8, 0x15

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 568
    :cond_19
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v7, :cond_1a

    .line 569
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v8, 0x16

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 571
    :cond_1a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v7, :cond_1b

    .line 572
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v8, 0x17

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 574
    :cond_1b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v7, :cond_1c

    .line 575
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v8, 0x18

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 577
    :cond_1c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v7, :cond_1d

    .line 578
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v8, 0x19

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 580
    :cond_1d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v7, :cond_1e

    .line 581
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v8, 0x1a

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 583
    :cond_1e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v7, :cond_1f

    .line 584
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v8, 0x1b

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 586
    :cond_1f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v7, :cond_20

    .line 587
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v8, 0x1c

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 589
    :cond_20
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v7, :cond_21

    .line 590
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v8, 0x1d

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 592
    :cond_21
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v7, :cond_22

    .line 593
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v8, 0x1e

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 595
    :cond_22
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v7, :cond_23

    .line 596
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v8, 0x1f

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 598
    :cond_23
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v7, :cond_24

    .line 599
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v8, 0x20

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 601
    :cond_24
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v7, :cond_25

    .line 602
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v8, 0x21

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 604
    :cond_25
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v7, :cond_26

    .line 605
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v8, 0x22

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 607
    :cond_26
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v7, v7

    if-lez v7, :cond_28

    .line 608
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v7, v7

    if-ge v6, v7, :cond_28

    .line 609
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    aget-object v2, v7, v6

    .line 610
    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    .line 611
    const/16 v7, 0x23

    invoke-virtual {p1, v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 608
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 615
    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v7, :cond_29

    .line 616
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v8, 0x24

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 618
    :cond_29
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v7, :cond_2a

    .line 619
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v8, 0x25

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 621
    :cond_2a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v7, :cond_2b

    .line 622
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v8, 0x26

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 624
    :cond_2b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v7, :cond_2c

    .line 625
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v8, 0x27

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 627
    :cond_2c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v7, :cond_2d

    .line 628
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v8, 0x28

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 630
    :cond_2d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v7, :cond_2e

    .line 631
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v8, 0x29

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 633
    :cond_2e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v7, :cond_2f

    .line 634
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v8, 0x2a

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 636
    :cond_2f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v7, :cond_30

    .line 637
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v8, 0x2b

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 639
    :cond_30
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v7, :cond_31

    .line 640
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v8, 0x2c

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 642
    :cond_31
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v7, :cond_32

    .line 643
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v8, 0x2d

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 645
    :cond_32
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v7, :cond_33

    .line 646
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v8, 0x2e

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 648
    :cond_33
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-eqz v7, :cond_35

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v7, v7

    if-lez v7, :cond_35

    .line 649
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v7, v7

    if-ge v6, v7, :cond_35

    .line 650
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v7, v6

    .line 651
    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    .line 652
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 649
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 656
    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v7, v7

    if-lez v7, :cond_37

    .line 657
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v7, v7

    if-ge v6, v7, :cond_37

    .line 658
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    aget-object v5, v7, v6

    .line 659
    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    .line 660
    const/16 v7, 0x30

    invoke-virtual {p1, v7, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 657
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 664
    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 479
    return-void
.end method

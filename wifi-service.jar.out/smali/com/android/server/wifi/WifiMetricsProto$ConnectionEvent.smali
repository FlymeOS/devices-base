.class public final Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final HLF_DHCP:I = 0x2

.field public static final HLF_NONE:I = 0x1

.field public static final HLF_NO_INTERNET:I = 0x3

.field public static final HLF_UNKNOWN:I = 0x0

.field public static final HLF_UNWANTED:I = 0x4

.field public static final ROAM_DBDC:I = 0x2

.field public static final ROAM_ENTERPRISE:I = 0x3

.field public static final ROAM_NONE:I = 0x1

.field public static final ROAM_UNKNOWN:I = 0x0

.field public static final ROAM_UNRELATED:I = 0x5

.field public static final ROAM_USER_SELECTED:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;


# instance fields
.field public automaticBugReportTaken:Z

.field public connectionResult:I

.field public connectivityLevelFailureCode:I

.field public durationTakenToConnectMillis:I

.field public level2FailureCode:I

.field public roamType:I

.field public routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

.field public signalStrength:I

.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1557
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .line 1556
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 2

    .prologue
    .line 1516
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-nez v0, :cond_1

    .line 1517
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1519
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-nez v0, :cond_0

    .line 1520
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1524
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    return-object v0

    .line 1517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1734
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1728
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1561
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    .line 1562
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    .line 1563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    .line 1564
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    .line 1565
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    .line 1566
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    .line 1567
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    .line 1568
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    .line 1569
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    .line 1570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->cachedSize:I

    .line 1571
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 1609
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1610
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1612
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const/4 v1, 0x1

    .line 1611
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1614
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    if-eqz v1, :cond_1

    .line 1616
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    const/4 v2, 0x2

    .line 1615
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1618
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    if-eqz v1, :cond_2

    .line 1620
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    const/4 v2, 0x3

    .line 1619
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    if-eqz v1, :cond_3

    .line 1624
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    const/4 v2, 0x4

    .line 1623
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1626
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    if-eqz v1, :cond_4

    .line 1628
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    const/4 v2, 0x5

    .line 1627
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1630
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    if-eqz v1, :cond_5

    .line 1632
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    const/4 v2, 0x6

    .line 1631
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1634
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    if-eqz v1, :cond_6

    .line 1636
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    const/4 v2, 0x7

    .line 1635
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1638
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    if-eqz v1, :cond_7

    .line 1640
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    const/16 v2, 0x8

    .line 1639
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1642
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-eqz v1, :cond_8

    .line 1644
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    const/16 v2, 0x9

    .line 1643
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1646
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1655
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1659
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1660
    return-object p0

    .line 1657
    :sswitch_0
    return-object p0

    .line 1665
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    goto :goto_0

    .line 1669
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    goto :goto_0

    .line 1673
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    if-nez v2, :cond_1

    .line 1674
    new-instance v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    .line 1676
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1680
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    goto :goto_0

    .line 1684
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1685
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1692
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    goto :goto_0

    .line 1698
    .end local v1    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    goto :goto_0

    .line 1702
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    goto :goto_0

    .line 1706
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1707
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1713
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    goto :goto_0

    .line 1719
    .end local v1    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    goto :goto_0

    .line 1655
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 1685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1707
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1578
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1580
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    if-eqz v0, :cond_1

    .line 1581
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    if-eqz v0, :cond_2

    .line 1584
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1586
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    if-eqz v0, :cond_3

    .line 1587
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1589
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    if-eqz v0, :cond_4

    .line 1590
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1592
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    if-eqz v0, :cond_5

    .line 1593
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1595
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    if-eqz v0, :cond_6

    .line 1596
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1598
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    if-eqz v0, :cond_7

    .line 1599
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1601
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-eqz v0, :cond_8

    .line 1602
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1604
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1576
    return-void
.end method

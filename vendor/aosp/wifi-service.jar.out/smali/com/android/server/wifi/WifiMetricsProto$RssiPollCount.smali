.class public final Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssiPollCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;


# instance fields
.field public count:I

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1763
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->clear()Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    .line 1763
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .locals 2

    .prologue
    .line 1744
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-nez v0, :cond_1

    .line 1745
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1747
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-nez v0, :cond_0

    .line 1748
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1752
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    return-object v0

    .line 1745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1829
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1768
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 1769
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    .line 1770
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->cachedSize:I

    .line 1771
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1788
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1789
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v1, :cond_0

    .line 1791
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    const/4 v2, 0x1

    .line 1790
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1793
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v1, :cond_1

    .line 1795
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    const/4 v2, 0x2

    .line 1794
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1797
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1806
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1810
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1811
    return-object p0

    .line 1808
    :sswitch_0
    return-object p0

    .line 1816
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    goto :goto_0

    .line 1820
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    goto :goto_0

    .line 1806
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1801
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v0, :cond_0

    .line 1778
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1780
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v0, :cond_1

    .line 1781
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1783
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1776
    return-void
.end method

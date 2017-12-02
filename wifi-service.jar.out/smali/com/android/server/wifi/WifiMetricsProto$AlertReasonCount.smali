.class public final Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertReasonCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;


# instance fields
.field public count:I

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1864
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->clear()Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    .line 1864
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .locals 2

    .prologue
    .line 1845
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-nez v0, :cond_1

    .line 1846
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1848
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-nez v0, :cond_0

    .line 1849
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1853
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    return-object v0

    .line 1846
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1936
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1930
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1869
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 1870
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    .line 1871
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->cachedSize:I

    .line 1872
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1889
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1890
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v1, :cond_0

    .line 1892
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    const/4 v2, 0x1

    .line 1891
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1894
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v1, :cond_1

    .line 1896
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    const/4 v2, 0x2

    .line 1895
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1898
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1907
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1911
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1912
    return-object p0

    .line 1909
    :sswitch_0
    return-object p0

    .line 1917
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    goto :goto_0

    .line 1921
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    goto :goto_0

    .line 1907
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
    .line 1902
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

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
    .line 1878
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v0, :cond_0

    .line 1879
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1881
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v0, :cond_1

    .line 1882
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1884
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1877
    return-void
.end method

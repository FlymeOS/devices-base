.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanReturnEntry"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;


# instance fields
.field public scanResultsCount:I

.field public scanReturnCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 51
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 40
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    .line 57
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->cachedSize:I

    .line 59
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 77
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    if-eqz v1, :cond_0

    .line 79
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    const/4 v2, 0x1

    .line 78
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    if-eqz v1, :cond_1

    .line 83
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    const/4 v2, 0x2

    .line 82
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 94
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    return-object p0

    .line 96
    :sswitch_0
    return-object p0

    .line 104
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 105
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    goto :goto_0

    .line 117
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

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
    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    if-eqz v0, :cond_1

    .line 69
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method

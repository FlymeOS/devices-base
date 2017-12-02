.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;


# instance fields
.field public networkId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 39
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 31
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->cachedSize:I

    .line 46
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 61
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    if-eqz v1, :cond_0

    .line 63
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    const/4 v2, 0x1

    .line 62
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 74
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    return-object p0

    .line 76
    :sswitch_0
    return-object p0

    .line 84
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

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
    .line 52
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 51
    return-void
.end method

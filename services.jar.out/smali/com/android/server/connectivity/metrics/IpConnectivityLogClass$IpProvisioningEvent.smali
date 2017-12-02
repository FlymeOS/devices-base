.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpProvisioningEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;


# instance fields
.field public eventType:I

.field public ifName:Ljava/lang/String;

.field public latencyMs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2097
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    .line 2097
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 2

    .prologue
    .line 2075
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    if-nez v0, :cond_1

    .line 2076
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2078
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    if-nez v0, :cond_0

    .line 2079
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2083
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0

    .line 2076
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2181
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2175
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    .line 2103
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 2104
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 2105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->cachedSize:I

    .line 2106
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2126
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2127
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2129
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2128
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2131
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    if-eqz v1, :cond_1

    .line 2133
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    const/4 v2, 0x2

    .line 2132
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2135
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    if-eqz v1, :cond_2

    .line 2137
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    const/4 v2, 0x3

    .line 2136
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2139
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2148
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2152
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    return-object p0

    .line 2150
    :sswitch_0
    return-object p0

    .line 2158
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    goto :goto_0

    .line 2162
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    goto :goto_0

    .line 2166
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    goto :goto_0

    .line 2148
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 2143
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

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
    .line 2112
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2115
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    if-eqz v0, :cond_1

    .line 2116
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2118
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    if-eqz v0, :cond_2

    .line 2119
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2121
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2111
    return-void
.end method

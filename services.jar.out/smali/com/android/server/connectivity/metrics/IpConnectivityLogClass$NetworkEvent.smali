.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;


# instance fields
.field public eventType:I

.field public latencyMs:I

.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 529
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    .line 528
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-nez v0, :cond_1

    .line 507
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 514
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    return-object v0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 534
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 535
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->cachedSize:I

    .line 537
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 557
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 558
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    .line 559
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    if-eqz v1, :cond_1

    .line 564
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    const/4 v2, 0x2

    .line 563
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    if-eqz v1, :cond_2

    .line 568
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    const/4 v2, 0x3

    .line 567
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 570
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 579
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 583
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    return-object p0

    .line 581
    :sswitch_0
    return-object p0

    .line 589
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_1

    .line 590
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 596
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    goto :goto_0

    .line 600
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    goto :goto_0

    .line 579
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
    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

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
    .line 543
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 546
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    if-eqz v0, :cond_1

    .line 547
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 549
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    if-eqz v0, :cond_2

    .line 550
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 552
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 542
    return-void
.end method

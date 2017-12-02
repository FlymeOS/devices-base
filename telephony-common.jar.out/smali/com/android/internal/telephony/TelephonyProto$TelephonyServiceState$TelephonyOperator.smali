.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;


# instance fields
.field private alphaLong_:Ljava/lang/String;

.field private alphaShort_:Ljava/lang/String;

.field private bitField0_:I

.field private numeric_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1539
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 2

    .prologue
    .line 1458
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_1

    .line 1459
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1461
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_0

    .line 1462
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1466
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    return-object v0

    .line 1459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1628
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1622
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1545
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    .line 1546
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    .line 1547
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    .line 1548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->cachedSize:I

    .line 1550
    return-object p0
.end method

.method public clearAlphaLong()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    .prologue
    .line 1488
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    .line 1489
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1490
    return-object p0
.end method

.method public clearAlphaShort()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    .prologue
    .line 1510
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    .line 1511
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1512
    return-object p0
.end method

.method public clearNumeric()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    .prologue
    .line 1532
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    .line 1533
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1534
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1570
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1571
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1572
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1575
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    const/4 v2, 0x2

    .line 1576
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1579
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1581
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    const/4 v2, 0x3

    .line 1580
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_2
    return v0
.end method

.method public getAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlphaLong()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1485
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasAlphaShort()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1507
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNumeric()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1529
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1592
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1596
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    return-object p0

    .line 1594
    :sswitch_0
    return-object p0

    .line 1602
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    .line 1603
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    goto :goto_0

    .line 1607
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    .line 1608
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    goto :goto_0

    .line 1612
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    .line 1613
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    goto :goto_0

    .line 1592
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1477
    if-nez p1, :cond_0

    .line 1478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1480
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    .line 1481
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1482
    return-object p0
.end method

.method public setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1499
    if-nez p1, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1502
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    .line 1503
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1504
    return-object p0
.end method

.method public setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1521
    if-nez p1, :cond_0

    .line 1522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1524
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    .line 1525
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    .line 1526
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1556
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1559
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1562
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1565
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1555
    return-void
.end method

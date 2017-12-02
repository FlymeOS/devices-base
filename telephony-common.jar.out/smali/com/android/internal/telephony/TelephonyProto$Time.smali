.class public final Lcom/android/internal/telephony/TelephonyProto$Time;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;


# instance fields
.field private bitField0_:I

.field private elapsedTimestampMillis_:J

.field private systemTimestampMillis_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$Time;->clear()Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 467
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v0, :cond_1

    .line 415
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$Time;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 422
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$Time;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    .line 473
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    .line 474
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->cachedSize:I

    .line 477
    return-object p0
.end method

.method public clearElapsedTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    .prologue
    .line 460
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    .line 462
    return-object p0
.end method

.method public clearSystemTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    .line 442
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    .line 443
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 494
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 495
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 497
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    const/4 v1, 0x1

    .line 496
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 501
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    const/4 v1, 0x2

    .line 500
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_1
    return v0
.end method

.method public getElapsedTimestampMillis()J
    .locals 2

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    return-wide v0
.end method

.method public getSystemTimestampMillis()J
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    return-wide v0
.end method

.method public hasElapsedTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 457
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSystemTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 438
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

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
    .line 507
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$Time;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 512
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 516
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    return-object p0

    .line 514
    :sswitch_0
    return-object p0

    .line 522
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    .line 523
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    goto :goto_0

    .line 527
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    .line 528
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    goto :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 452
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    .line 453
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    .line 454
    return-object p0
.end method

.method public setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 433
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    .line 434
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    .line 435
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 484
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 486
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 487
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 489
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 482
    return-void
.end method

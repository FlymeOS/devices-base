.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModemRestart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;


# instance fields
.field private basebandVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private reason_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3546
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3547
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 3546
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 2

    .prologue
    .line 3487
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v0, :cond_1

    .line 3488
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3490
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v0, :cond_0

    .line 3491
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3495
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    return-object v0

    .line 3488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3622
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3616
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    .prologue
    .line 3551
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    .line 3552
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    .line 3553
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    .line 3554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 3555
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->cachedSize:I

    .line 3556
    return-object p0
.end method

.method public clearBasebandVersion()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    .prologue
    .line 3517
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    .line 3518
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    .line 3519
    return-object p0
.end method

.method public clearReason()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    .prologue
    .line 3539
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    .line 3540
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    .line 3541
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3573
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3574
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3576
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3575
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3578
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3580
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    const/4 v2, 0x2

    .line 3579
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3582
    :cond_1
    return v0
.end method

.method public getBasebandVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBasebandVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3514
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasReason()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3536
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

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
    .line 3586
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3590
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3591
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3595
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3596
    return-object p0

    .line 3593
    :sswitch_0
    return-object p0

    .line 3601
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    .line 3602
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    goto :goto_0

    .line 3606
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    .line 3607
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    goto :goto_0

    .line 3591
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setBasebandVersion(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3506
    if-nez p1, :cond_0

    .line 3507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3509
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    .line 3510
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    .line 3511
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3528
    if-nez p1, :cond_0

    .line 3529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3531
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    .line 3532
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    .line 3533
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
    .line 3562
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3565
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3566
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3568
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3561
    return-void
.end method

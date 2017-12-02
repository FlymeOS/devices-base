.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyCallSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;


# instance fields
.field private bitField0_:I

.field public events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

.field private eventsDropped_:Z

.field private phoneId_:I

.field private startTimeMinutes_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5511
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5512
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 5511
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 2

    .prologue
    .line 5436
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-nez v0, :cond_1

    .line 5437
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5439
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-nez v0, :cond_0

    .line 5440
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5444
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    return-object v0

    .line 5437
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5638
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5632
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5516
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5517
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    .line 5518
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    .line 5519
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 5520
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    .line 5521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 5522
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->cachedSize:I

    .line 5523
    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    .prologue
    .line 5504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    .line 5505
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5506
    return-object p0
.end method

.method public clearPhoneId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    .prologue
    .line 5482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    .line 5483
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5484
    return-object p0
.end method

.method public clearStartTimeMinutes()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    .prologue
    .line 5463
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    .line 5464
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5465
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 5551
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5552
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5554
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    const/4 v4, 0x1

    .line 5553
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5556
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5558
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    const/4 v4, 0x2

    .line 5557
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5560
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 5561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 5562
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    aget-object v0, v3, v1

    .line 5563
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v0, :cond_2

    .line 5565
    const/4 v3, 0x3

    .line 5564
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5561
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5569
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 5571
    iget-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    const/4 v4, 0x4

    .line 5570
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5573
    :cond_4
    return v2
.end method

.method public getEventsDropped()Z
    .locals 1

    .prologue
    .line 5493
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 5471
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    return v0
.end method

.method public getStartTimeMinutes()I
    .locals 1

    .prologue
    .line 5452
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5501
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5479
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasStartTimeMinutes()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5460
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

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
    .line 5577
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5582
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5586
    invoke-super {p0, p1, v3}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5587
    return-object p0

    .line 5584
    :sswitch_0
    return-object p0

    .line 5592
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    .line 5593
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    goto :goto_0

    .line 5597
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    .line 5598
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    goto :goto_0

    .line 5603
    :sswitch_3
    const/16 v5, 0x1a

    .line 5602
    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5604
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v5, :cond_2

    move v1, v4

    .line 5606
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 5607
    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v1, :cond_1

    .line 5608
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5610
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5611
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v5, v2, v1

    .line 5612
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5613
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5610
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5604
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    array-length v1, v5

    goto :goto_1

    .line 5616
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v5, v2, v1

    .line 5617
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5618
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    goto :goto_0

    .line 5622
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    .line 5623
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    goto :goto_0

    .line 5582
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5496
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    .line 5497
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5498
    return-object p0
.end method

.method public setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5474
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    .line 5475
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5476
    return-object p0
.end method

.method public setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5455
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    .line 5456
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    .line 5457
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5529
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5530
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5532
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5533
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5535
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 5536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 5537
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    aget-object v0, v2, v1

    .line 5538
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v0, :cond_2

    .line 5539
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5536
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5543
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 5544
    iget-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5546
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5528
    return-void
.end method

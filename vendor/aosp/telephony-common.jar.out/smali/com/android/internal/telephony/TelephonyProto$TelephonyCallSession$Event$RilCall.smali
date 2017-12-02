.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;


# instance fields
.field private bitField0_:I

.field private callEndReason_:I

.field private index_:I

.field private isMultiparty_:Z

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4350
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4351
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 4350
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 2

    .prologue
    .line 4240
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_1

    .line 4241
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4243
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_0

    .line 4244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4248
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0

    .line 4241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4496
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4490
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4355
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4356
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4357
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4358
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4359
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    .line 4360
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    .line 4361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 4362
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->cachedSize:I

    .line 4363
    return-object p0
.end method

.method public clearCallEndReason()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4324
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    .line 4325
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4326
    return-object p0
.end method

.method public clearIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4268
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4269
    return-object p0
.end method

.method public clearIsMultiparty()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    .line 4344
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4345
    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4287
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4288
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4306
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4307
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4389
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4390
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4392
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v2, 0x1

    .line 4391
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4394
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4396
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v2, 0x2

    .line 4395
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4398
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4400
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v2, 0x3

    .line 4399
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4402
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4404
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    const/4 v2, 0x4

    .line 4403
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4406
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4408
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    const/4 v2, 0x5

    .line 4407
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4410
    :cond_4
    return v0
.end method

.method public getCallEndReason()I
    .locals 1

    .prologue
    .line 4313
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 4256
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    return v0
.end method

.method public getIsMultiparty()Z
    .locals 1

    .prologue
    .line 4332
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 4275
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4294
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    return v0
.end method

.method public hasCallEndReason()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4321
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4264
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4340
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4283
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4302
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

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
    .line 4414
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4418
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 4419
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4423
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4424
    return-object p0

    .line 4421
    :sswitch_0
    return-object p0

    .line 4429
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4430
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4434
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 4435
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 4436
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 4451
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4452
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4447
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4448
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4458
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 4459
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 4460
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 4468
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4469
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4464
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4465
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4475
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    .line 4476
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4480
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    .line 4481
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4419
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 4436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4460
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setCallEndReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4316
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    .line 4317
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4318
    return-object p0
.end method

.method public setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4259
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4260
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4261
    return-object p0
.end method

.method public setIsMultiparty(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4335
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    .line 4336
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4337
    return-object p0
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4278
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4279
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4280
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4297
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4298
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4299
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
    .line 4369
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4370
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4372
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4373
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4375
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4376
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4378
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4379
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason_:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4381
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4382
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4384
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4368
    return-void
.end method

.class public final Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDataCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$RilDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;


# instance fields
.field private bitField0_:I

.field private cid_:I

.field private iframe_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2625
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->clear()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 2624
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 2

    .prologue
    .line 2549
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v0, :cond_1

    .line 2550
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2552
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v0, :cond_0

    .line 2553
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2557
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    return-object v0

    .line 2550
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2727
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2721
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2629
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2630
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    .line 2631
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    .line 2632
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    .line 2633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 2634
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cachedSize:I

    .line 2635
    return-object p0
.end method

.method public clearCid()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    .prologue
    .line 2576
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    .line 2577
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2578
    return-object p0
.end method

.method public clearIframe()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    .prologue
    .line 2617
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    .line 2618
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2619
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1

    .prologue
    .line 2595
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    .line 2596
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2597
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2655
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2656
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2658
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    const/4 v2, 0x1

    .line 2657
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2660
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2662
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    const/4 v2, 0x2

    .line 2661
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2664
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2666
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    const/4 v2, 0x3

    .line 2665
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    :cond_2
    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 2565
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    return v0
.end method

.method public getIframe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2584
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    return v0
.end method

.method public hasCid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2573
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIframe()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2614
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2592
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

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
    .line 2672
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2676
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 2677
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2681
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2682
    return-object p0

    .line 2679
    :sswitch_0
    return-object p0

    .line 2687
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    .line 2688
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    goto :goto_0

    .line 2692
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 2693
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 2694
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 2704
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2705
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 2700
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    .line 2701
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    goto :goto_0

    .line 2711
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    .line 2712
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    goto :goto_0

    .line 2677
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 2694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2568
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    .line 2569
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2570
    return-object p0
.end method

.method public setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2606
    if-nez p1, :cond_0

    .line 2607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2609
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    .line 2610
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2611
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2587
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    .line 2588
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    .line 2589
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
    .line 2641
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2642
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->cid_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2644
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2645
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->type_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2647
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->iframe_:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2650
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2640
    return-void
.end method

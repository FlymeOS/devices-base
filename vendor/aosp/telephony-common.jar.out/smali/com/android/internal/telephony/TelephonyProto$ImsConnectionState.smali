.class public final Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsConnectionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;


# instance fields
.field private bitField0_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2180
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 2179
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 2

    .prologue
    .line 2142
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_1

    .line 2143
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2145
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_0

    .line 2146
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2150
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    return-object v0

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2272
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2266
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2184
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    .line 2185
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    .line 2186
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 2187
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 2188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->cachedSize:I

    .line 2189
    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1

    .prologue
    .line 2169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    .line 2170
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    .line 2171
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2206
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2207
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2209
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    const/4 v2, 0x1

    .line 2208
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2211
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v1, :cond_1

    .line 2213
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/4 v2, 0x2

    .line 2212
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2215
    :cond_1
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2158
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    return v0
.end method

.method public hasState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2166
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

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
    .line 2219
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 2224
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2228
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2229
    return-object p0

    .line 2226
    :sswitch_0
    return-object p0

    .line 2234
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 2235
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 2236
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 2247
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2248
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 2243
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    .line 2244
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    goto :goto_0

    .line 2254
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v3, :cond_1

    .line 2255
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 2257
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 2236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2161
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    .line 2162
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    .line 2163
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
    .line 2195
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2196
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2201
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2194
    return-void
.end method

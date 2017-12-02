.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;


# instance fields
.field private bitField0_:I

.field public callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

.field public endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

.field public events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

.field private eventsDropped_:Z

.field public histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

.field public smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

.field public startTime:Lcom/android/internal/telephony/TelephonyProto$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    .line 159
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_1

    .line 108
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 115
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 166
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 168
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 171
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 172
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->cachedSize:I

    .line 174
    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    .line 147
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    .line 148
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v5

    .line 227
    .local v5, "size":I
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 228
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 229
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    aget-object v2, v6, v4

    .line 230
    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    .line 232
    const/4 v6, 0x1

    .line 231
    invoke-static {v6, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 228
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 237
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v6, v6

    if-ge v4, v6, :cond_3

    .line 238
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    aget-object v1, v6, v4

    .line 239
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    .line 241
    const/4 v6, 0x2

    .line 240
    invoke-static {v6, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 237
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v6, v6

    if-lez v6, :cond_5

    .line 246
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v6, v6

    if-ge v4, v6, :cond_5

    .line 247
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    aget-object v0, v6, v4

    .line 248
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    .line 250
    const/4 v6, 0x3

    .line 249
    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 246
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 254
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v6, v6

    if-lez v6, :cond_7

    .line 255
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v6, v6

    if-ge v4, v6, :cond_7

    .line 256
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v3, v6, v4

    .line 257
    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    .line 259
    const/4 v6, 0x4

    .line 258
    invoke-static {v6, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 255
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 263
    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    .line 265
    iget-boolean v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    const/4 v7, 0x5

    .line 264
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 267
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v6, :cond_9

    .line 269
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v7, 0x6

    .line 268
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 271
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v6, :cond_a

    .line 273
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v7, 0x7

    .line 272
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 275
    :cond_a
    return v5
.end method

.method public getEventsDropped()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

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
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 284
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 288
    invoke-super {p0, p1, v6}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 289
    return-object p0

    .line 286
    :sswitch_0
    return-object p0

    .line 295
    :sswitch_1
    const/16 v8, 0xa

    .line 294
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 296
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-nez v8, :cond_2

    move v1, v7

    .line 298
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 299
    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v1, :cond_1

    .line 300
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 303
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v8, v4, v1

    .line 304
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 305
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 296
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v1, v8

    goto :goto_1

    .line 308
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_3
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v8, v4, v1

    .line 309
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 310
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    goto :goto_0

    .line 315
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :sswitch_2
    const/16 v8, 0x12

    .line 314
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 316
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-nez v8, :cond_5

    move v1, v7

    .line 318
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    .line 319
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_4

    .line 320
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_4
    :goto_4
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 323
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v8, v3, v1

    .line 324
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 316
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v1, v8

    goto :goto_3

    .line 328
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v8, v3, v1

    .line 329
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 330
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    goto/16 :goto_0

    .line 335
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :sswitch_3
    const/16 v8, 0x1a

    .line 334
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 336
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-nez v8, :cond_8

    move v1, v7

    .line 338
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v2, v8, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 339
    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v1, :cond_7

    .line 340
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_7
    :goto_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 343
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    aput-object v8, v2, v1

    .line 344
    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 345
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 336
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v1, v8

    goto :goto_5

    .line 348
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_9
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    aput-object v8, v2, v1

    .line 349
    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 350
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    goto/16 :goto_0

    .line 355
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :sswitch_4
    const/16 v8, 0x22

    .line 354
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 356
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-nez v8, :cond_b

    move v1, v7

    .line 358
    .restart local v1    # "i":I
    :goto_7
    add-int v8, v1, v0

    new-array v5, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    .line 359
    .local v5, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v1, :cond_a

    .line 360
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-static {v8, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    :cond_a
    :goto_8
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c

    .line 363
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v8, v5, v1

    .line 364
    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 365
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 356
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v1, v8

    goto :goto_7

    .line 368
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_c
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v8, v5, v1

    .line 369
    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 370
    iput-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    goto/16 :goto_0

    .line 374
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    .line 375
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    goto/16 :goto_0

    .line 379
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v8, :cond_d

    .line 380
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 382
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 386
    :sswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-nez v8, :cond_e

    .line 387
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    .line 389
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    .line 139
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    .line 140
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 181
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    aget-object v2, v5, v4

    .line 183
    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    .line 184
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 181
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 189
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 190
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    aget-object v1, v5, v4

    .line 191
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    .line 192
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 189
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 197
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 198
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    aget-object v0, v5, v4

    .line 199
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    .line 200
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 197
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 204
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 205
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 206
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    aget-object v3, v5, v4

    .line 207
    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    .line 208
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 205
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 212
    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 213
    iget-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    const/4 v6, 0x5

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 215
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v5, :cond_9

    .line 216
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v6, 0x6

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 218
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    if-eqz v5, :cond_a

    .line 219
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    const/4 v6, 0x7

    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 221
    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 179
    return-void
.end method

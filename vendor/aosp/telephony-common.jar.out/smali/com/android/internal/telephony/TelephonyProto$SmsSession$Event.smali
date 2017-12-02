.class public final Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# instance fields
.field private bitField0_:I

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private errorCode_:I

.field private error_:I

.field private format_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private rilRequestId_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private tech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5842
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5843
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 5842
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 2

    .prologue
    .line 5679
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_1

    .line 5680
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5682
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_0

    .line 5683
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5687
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0

    .line 5680
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6192
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6186
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5847
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5848
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5849
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5850
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 5851
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 5852
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 5853
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 5854
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 5855
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5856
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5857
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5858
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5859
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5860
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 5861
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->cachedSize:I

    .line 5862
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5725
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5726
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5727
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5816
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5817
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5818
    return-object p0
.end method

.method public clearErrorCode()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5797
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5798
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5799
    return-object p0
.end method

.method public clearFormat()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5760
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5761
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5836
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5837
    return-object p0
.end method

.method public clearTech()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5778
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5779
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5780
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5706
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5707
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5708
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 5914
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5915
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5917
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    const/4 v4, 0x1

    .line 5916
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5919
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5921
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    const/4 v4, 0x2

    .line 5920
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5923
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_2

    .line 5925
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x3

    .line 5924
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5927
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_3

    .line 5929
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x4

    .line 5928
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5931
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_4

    .line 5933
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x5

    .line 5932
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5935
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_5

    .line 5937
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x6

    .line 5936
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5939
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 5940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 5941
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v1

    .line 5942
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 5944
    const/4 v3, 0x7

    .line 5943
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5940
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5948
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 5950
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    const/16 v4, 0x8

    .line 5949
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5952
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 5954
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    const/16 v4, 0x9

    .line 5953
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5956
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 5958
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    const/16 v4, 0xa

    .line 5957
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5960
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    .line 5962
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    const/16 v4, 0xb

    .line 5961
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5964
    :cond_b
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_c

    .line 5966
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    const/16 v4, 0xc

    .line 5965
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5968
    :cond_c
    return v2
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 5714
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 5805
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 5786
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 5748
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    .prologue
    .line 5824
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    return v0
.end method

.method public getTech()I
    .locals 1

    .prologue
    .line 5767
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5695
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    return v0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5722
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5813
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasErrorCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5794
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasFormat()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5756
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5832
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5775
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5703
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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
    .line 5972
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5976
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 5977
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5981
    invoke-super {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5982
    return-object p0

    .line 5979
    :sswitch_0
    return-object p0

    .line 5987
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5988
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5989
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 6003
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6004
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5999
    :pswitch_0
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 6000
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto :goto_0

    .line 6010
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6011
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6012
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 6037
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6038
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 6033
    :pswitch_1
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 6034
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto :goto_0

    .line 6044
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v7, :cond_1

    .line 6045
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 6047
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6051
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v7, :cond_2

    .line 6052
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 6054
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6058
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v7, :cond_3

    .line 6059
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 6061
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6065
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v7, :cond_4

    .line 6066
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 6068
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 6073
    :sswitch_7
    const/16 v7, 0x3a

    .line 6072
    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6074
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v7, :cond_6

    move v1, v6

    .line 6076
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 6077
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    .line 6078
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6080
    :cond_5
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_7

    .line 6081
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 6082
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6083
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6080
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6074
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v7

    goto :goto_1

    .line 6086
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 6087
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6088
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 6092
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6093
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6094
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_2

    .line 6102
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6103
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6098
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 6099
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6109
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6110
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6111
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_3

    .line 6120
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6121
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6116
    :pswitch_3
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 6117
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6127
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 6128
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6132
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6133
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6134
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_4

    .line 6169
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6170
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6165
    :pswitch_5
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 6166
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6176
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 6177
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5977
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 5989
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
    .end packed-switch

    .line 6012
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 6094
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 6111
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 6134
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5717
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5718
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5719
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5808
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5809
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5810
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5789
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5790
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5791
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5751
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5752
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5753
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5827
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5828
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5829
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5770
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5771
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5772
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5698
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5699
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5700
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
    .line 5868
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5869
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5871
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5872
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5874
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v2, :cond_2

    .line 5875
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5877
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v2, :cond_3

    .line 5878
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5880
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v2, :cond_4

    .line 5881
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5883
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v2, :cond_5

    .line 5884
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5886
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 5887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 5888
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v2, v1

    .line 5889
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 5890
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5887
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5894
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 5895
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5897
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 5898
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5900
    :cond_9
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    .line 5901
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5903
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    .line 5904
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5906
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_c

    .line 5907
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5909
    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5867
    return-void
.end method

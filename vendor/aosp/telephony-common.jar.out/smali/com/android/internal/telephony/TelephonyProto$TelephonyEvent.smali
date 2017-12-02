.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;


# instance fields
.field private bitField0_:I

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private dataStallAction_:I

.field public deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field public modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

.field private nitzTimestampMillis_:J

.field private phoneId_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field public setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

.field public setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

.field private timestampMillis_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3785
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3786
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 3785
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    .prologue
    .line 3629
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-nez v0, :cond_1

    .line 3630
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3632
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    if-nez v0, :cond_0

    .line 3633
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3637
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    return-object v0

    .line 3630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4132
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4126
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3790
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3791
    iput-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    .line 3792
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    .line 3793
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    .line 3794
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 3795
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 3796
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 3797
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 3798
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 3799
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    .line 3800
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 3801
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 3802
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 3803
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    .line 3804
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 3805
    iput-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    .line 3806
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 3807
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->cachedSize:I

    .line 3808
    return-object p0
.end method

.method public clearDataStallAction()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    .prologue
    .line 3756
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    .line 3757
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3758
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    .prologue
    .line 3728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    .line 3729
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3730
    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    .prologue
    .line 3778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    .line 3779
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3780
    return-object p0
.end method

.method public clearPhoneId()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    .prologue
    .line 3675
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    .line 3676
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3677
    return-object p0
.end method

.method public clearTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    .prologue
    .line 3656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    .line 3657
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3658
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    .prologue
    .line 3694
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    .line 3695
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3696
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 3869
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3870
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3872
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    const/4 v3, 0x1

    .line 3871
    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3874
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 3876
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    const/4 v4, 0x2

    .line 3875
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3878
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 3880
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    const/4 v4, 0x3

    .line 3879
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3882
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_3

    .line 3884
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x4

    .line 3883
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3886
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_4

    .line 3888
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x5

    .line 3887
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3890
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_5

    .line 3892
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x6

    .line 3891
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3894
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_6

    .line 3896
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x7

    .line 3895
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3898
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 3899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 3900
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v1

    .line 3901
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_7

    .line 3903
    const/16 v3, 0x8

    .line 3902
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3899
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3907
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 3909
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    const/16 v4, 0x9

    .line 3908
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3911
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v3, :cond_a

    .line 3913
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    const/16 v4, 0xa

    .line 3912
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3915
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v3, :cond_b

    .line 3917
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    const/16 v4, 0xb

    .line 3916
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3919
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v3, :cond_c

    .line 3921
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    const/16 v4, 0xc

    .line 3920
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3923
    :cond_c
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_d

    .line 3925
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    const/16 v4, 0xd

    .line 3924
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3927
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v3, :cond_e

    .line 3929
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    const/16 v4, 0xe

    .line 3928
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3931
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_f

    .line 3933
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    const/16 v3, 0xf

    .line 3932
    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3935
    :cond_f
    return v2
.end method

.method public getDataStallAction()I
    .locals 1

    .prologue
    .line 3745
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 3717
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    .prologue
    .line 3767
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    return-wide v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 3664
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 3645
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3683
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    return v0
.end method

.method public hasDataStallAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3753
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3725
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNitzTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3775
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3672
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3653
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3691
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

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
    .line 3939
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3943
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 3944
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 3948
    invoke-super {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3949
    return-object p0

    .line 3946
    :sswitch_0
    return-object p0

    .line 3954
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    .line 3955
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto :goto_0

    .line 3959
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    .line 3960
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto :goto_0

    .line 3964
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 3965
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 3966
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 3984
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3985
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3980
    :pswitch_0
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    .line 3981
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto :goto_0

    .line 3991
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v7, :cond_1

    .line 3992
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 3994
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3998
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v7, :cond_2

    .line 3999
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 4001
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4005
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v7, :cond_3

    .line 4006
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 4008
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4012
    :sswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v7, :cond_4

    .line 4013
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 4015
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4020
    :sswitch_8
    const/16 v7, 0x42

    .line 4019
    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4021
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v7, :cond_6

    move v1, v6

    .line 4023
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 4024
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    .line 4025
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4027
    :cond_5
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_7

    .line 4028
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 4029
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4030
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4027
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4021
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v7

    goto :goto_1

    .line 4033
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 4034
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4035
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 4039
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4040
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4041
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 4076
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4077
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 4072
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    .line 4073
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto/16 :goto_0

    .line 4083
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v7, :cond_8

    .line 4084
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 4086
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4090
    :sswitch_b
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v7, :cond_9

    .line 4091
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 4093
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4097
    :sswitch_c
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v7, :cond_a

    .line 4098
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 4100
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4104
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    .line 4105
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto/16 :goto_0

    .line 4109
    :sswitch_e
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v7, :cond_b

    .line 4110
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 4112
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4116
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    .line 4117
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    goto/16 :goto_0

    .line 3944
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch

    .line 3966
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4041
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDataStallAction(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3748
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    .line 3749
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3750
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3720
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    .line 3721
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3722
    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3770
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    .line 3771
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3772
    return-object p0
.end method

.method public setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3667
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    .line 3668
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3669
    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3648
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    .line 3649
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3650
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3686
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    .line 3687
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    .line 3688
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3814
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3815
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3817
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3818
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3820
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3821
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3823
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v2, :cond_3

    .line 3824
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3826
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v2, :cond_4

    .line 3827
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3829
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v2, :cond_5

    .line 3830
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3832
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v2, :cond_6

    .line 3833
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3835
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 3836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 3837
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v2, v1

    .line 3838
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_7

    .line 3839
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3836
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3843
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 3844
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3846
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v2, :cond_a

    .line 3847
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3849
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v2, :cond_b

    .line 3850
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3852
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v2, :cond_c

    .line 3853
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3855
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 3856
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    const/16 v3, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3858
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v2, :cond_e

    .line 3859
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3861
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_f

    .line 3862
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3864
    :cond_f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3813
    return-void
.end method

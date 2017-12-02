.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field private bitField0_:I

.field private callIndex_:I

.field private callState_:I

.field public calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field private imsCommand_:I

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private mergedCallIndex_:I

.field private nitzTimestampMillis_:J

.field private phoneState_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private rilRequestId_:I

.field private rilRequest_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private srcAccessTech_:I

.field private srvccState_:I

.field private targetAccessTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4805
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4806
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 4805
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    .line 4503
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_1

    .line 4504
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4506
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_0

    .line 4507
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4511
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0

    .line 4504
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5429
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5423
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4810
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4811
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4812
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4813
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 4814
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 4815
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 4816
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 4817
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 4818
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4819
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4820
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4821
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4822
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 4823
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4824
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4825
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4826
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4827
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4828
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 4829
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4830
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4831
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4832
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 4833
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->cachedSize:I

    .line 4834
    return-object p0
.end method

.method public clearCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4621
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4622
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4623
    return-object p0
.end method

.method public clearCallState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4602
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4603
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4604
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4549
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4550
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4551
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4662
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4663
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4664
    return-object p0
.end method

.method public clearImsCommand()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4738
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4739
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4740
    return-object p0
.end method

.method public clearMergedCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4640
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4641
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4642
    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    .line 4798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4799
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4800
    return-object p0
.end method

.method public clearPhoneState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4584
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4585
    return-object p0
.end method

.method public clearRilRequest()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4682
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4683
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4700
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4701
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4702
    return-object p0
.end method

.method public clearSrcAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4760
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4761
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4762
    return-object p0
.end method

.method public clearSrvccState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4719
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4720
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4721
    return-object p0
.end method

.method public clearTargetAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4779
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4780
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4781
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4531
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4532
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 4918
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 4919
    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 4921
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v5, 0x1

    .line 4920
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4923
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4925
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v5, 0x2

    .line 4924
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4927
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v4, :cond_2

    .line 4929
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v5, 0x3

    .line 4928
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4931
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v4, :cond_3

    .line 4933
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v5, 0x4

    .line 4932
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4935
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v4, :cond_4

    .line 4937
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v5, 0x5

    .line 4936
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4939
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v4, :cond_5

    .line 4941
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v5, 0x6

    .line 4940
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4943
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-lez v4, :cond_7

    .line 4944
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 4945
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v4, v2

    .line 4946
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 4948
    const/4 v4, 0x7

    .line 4947
    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4944
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4952
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8

    .line 4954
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v5, 0x8

    .line 4953
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4956
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    .line 4958
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v5, 0x9

    .line 4957
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4960
    :cond_9
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 4962
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v5, 0xa

    .line 4961
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4964
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    .line 4966
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v5, 0xb

    .line 4965
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4968
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-lez v4, :cond_d

    .line 4969
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 4970
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v4, v2

    .line 4971
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    .line 4973
    const/16 v4, 0xc

    .line 4972
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4969
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4977
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_e

    .line 4979
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v5, 0xd

    .line 4978
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4981
    :cond_e
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f

    .line 4983
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v5, 0xe

    .line 4982
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4985
    :cond_f
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_10

    .line 4987
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v5, 0xf

    .line 4986
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4989
    :cond_10
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_11

    .line 4991
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v5, 0x10

    .line 4990
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4993
    :cond_11
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_12

    .line 4995
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v5, 0x11

    .line 4994
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4997
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v4, :cond_13

    .line 4999
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v5, 0x12

    .line 4998
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5001
    :cond_13
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_14

    .line 5003
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v5, 0x13

    .line 5002
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 5005
    :cond_14
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_15

    .line 5007
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v5, 0x14

    .line 5006
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 5009
    :cond_15
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_16

    .line 5011
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v6, 0x15

    .line 5010
    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5013
    :cond_16
    return v3
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    .line 4610
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 4591
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 4538
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 4651
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    return v0
.end method

.method public getImsCommand()I
    .locals 1

    .prologue
    .line 4727
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    return v0
.end method

.method public getMergedCallIndex()I
    .locals 1

    .prologue
    .line 4629
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    .prologue
    .line 4787
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    return-wide v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 4572
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    return v0
.end method

.method public getRilRequest()I
    .locals 1

    .prologue
    .line 4670
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    .prologue
    .line 4689
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    return v0
.end method

.method public getSrcAccessTech()I
    .locals 1

    .prologue
    .line 4749
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    return v0
.end method

.method public getSrvccState()I
    .locals 1

    .prologue
    .line 4708
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    return v0
.end method

.method public getTargetAccessTech()I
    .locals 1

    .prologue
    .line 4768
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4519
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    return v0
.end method

.method public hasCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4618
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasCallState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4599
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4546
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

    .line 4659
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasImsCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4735
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMergedCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4637
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNitzTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4795
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4580
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4678
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4697
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrcAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4757
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrvccState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4716
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTargetAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4776
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4527
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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
    .line 5017
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 5021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 5022
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 5026
    invoke-super {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5027
    return-object p0

    .line 5024
    :sswitch_0
    return-object p0

    .line 5032
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5033
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5034
    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    .line 5061
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5062
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5057
    :pswitch_0
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 5058
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .line 5068
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5069
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5070
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_1

    .line 5095
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5096
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5091
    :pswitch_1
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 5092
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .line 5102
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v8, :cond_1

    .line 5103
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 5105
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5109
    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v8, :cond_2

    .line 5110
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 5112
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5116
    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v8, :cond_3

    .line 5117
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 5119
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5123
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v8, :cond_4

    .line 5124
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 5126
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5131
    :sswitch_7
    const/16 v8, 0x3a

    .line 5130
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5132
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v8, :cond_6

    move v1, v7

    .line 5134
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 5135
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    .line 5136
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5138
    :cond_5
    :goto_2
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_7

    .line 5139
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    .line 5140
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5141
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5132
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v8

    goto :goto_1

    .line 5144
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    .line 5145
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5146
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 5150
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5151
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5152
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_2

    .line 5161
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5162
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5157
    :pswitch_2
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 5158
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5168
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5169
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5170
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_3

    .line 5185
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5186
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5181
    :pswitch_3
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 5182
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5192
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 5193
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5197
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 5198
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5203
    :sswitch_c
    const/16 v8, 0x62

    .line 5202
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5204
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v8, :cond_9

    move v1, v7

    .line 5206
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 5207
    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_8

    .line 5208
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5210
    :cond_8
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 5211
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    .line 5212
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5213
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5210
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5204
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v1, v8

    goto :goto_3

    .line 5216
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_a
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    .line 5217
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5218
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto/16 :goto_0

    .line 5222
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5223
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5224
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_4

    .line 5259
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5260
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5255
    :pswitch_5
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 5256
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5266
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5267
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5268
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_5

    .line 5281
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5282
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5277
    :pswitch_6
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 5278
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5288
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 5289
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5293
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5294
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5295
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_6

    .line 5305
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5306
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5301
    :pswitch_7
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 5302
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5312
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5313
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5314
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_7

    .line 5331
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5332
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5327
    :pswitch_8
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 5328
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5338
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v8, :cond_b

    .line 5339
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 5341
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5345
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5346
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5347
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_8

    .line 5372
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5373
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5368
    :pswitch_9
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 5369
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5379
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5380
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5381
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_9

    .line 5406
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5407
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5402
    :pswitch_a
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 5403
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5413
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 5414
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5022
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
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
    .end sparse-switch

    .line 5034
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

    .line 5070
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

    .line 5152
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5170
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 5224
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

    .line 5268
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 5295
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 5314
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 5347
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 5381
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4613
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4614
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4615
    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4594
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4595
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4596
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4541
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4542
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4543
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4654
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4655
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4656
    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4730
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4731
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4732
    return-object p0
.end method

.method public setMergedCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4632
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4633
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4634
    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4790
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4791
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4792
    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4575
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4576
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4577
    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4673
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4674
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4675
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4692
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4693
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4694
    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4752
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4753
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4754
    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4711
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4712
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4713
    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4771
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4772
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4773
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4522
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4523
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4524
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4840
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 4841
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4843
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4844
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4846
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_2

    .line 4847
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4849
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_3

    .line 4850
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4852
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_4

    .line 4853
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4855
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_5

    .line 4856
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4858
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 4859
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 4860
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v2

    .line 4861
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 4862
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4859
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4866
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 4867
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4869
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 4870
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4872
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 4873
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4875
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    .line 4876
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4878
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 4879
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 4880
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v3, v2

    .line 4881
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    .line 4882
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4879
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4886
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_e

    .line 4887
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4889
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_f

    .line 4890
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v4, 0xe

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4892
    :cond_f
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_10

    .line 4893
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4895
    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_11

    .line 4896
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4898
    :cond_11
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_12

    .line 4899
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4901
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v3, :cond_13

    .line 4902
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v4, 0x12

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4904
    :cond_13
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_14

    .line 4905
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4907
    :cond_14
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_15

    .line 4908
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4910
    :cond_15
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_16

    .line 4911
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4913
    :cond_16
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4839
    return-void
.end method

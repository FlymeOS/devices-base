.class public final Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsReasonInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;


# instance fields
.field private bitField0_:I

.field private extraCode_:I

.field private extraMessage_:Ljava/lang/String;

.field private reasonCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2033
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2034
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 2033
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 2

    .prologue
    .line 1958
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_1

    .line 1959
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1961
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_0

    .line 1962
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1966
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    return-object v0

    .line 1959
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2122
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2116
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2038
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 2039
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    .line 2040
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    .line 2041
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 2043
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->cachedSize:I

    .line 2044
    return-object p0
.end method

.method public clearExtraCode()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    .prologue
    .line 2004
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    .line 2005
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 2006
    return-object p0
.end method

.method public clearExtraMessage()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    .prologue
    .line 2026
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    .line 2027
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 2028
    return-object p0
.end method

.method public clearReasonCode()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    .prologue
    .line 1985
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    .line 1986
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 1987
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2064
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2065
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2067
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    const/4 v2, 0x1

    .line 2066
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2069
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2071
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    const/4 v2, 0x2

    .line 2070
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2073
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2075
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    const/4 v2, 0x3

    .line 2074
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2077
    :cond_2
    return v0
.end method

.method public getExtraCode()I
    .locals 1

    .prologue
    .line 1993
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    return v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .prologue
    .line 1974
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    return v0
.end method

.method public hasExtraCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2001
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasExtraMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2023
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasReasonCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1982
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

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
    .line 2081
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2086
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2090
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2091
    return-object p0

    .line 2088
    :sswitch_0
    return-object p0

    .line 2096
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    .line 2097
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    goto :goto_0

    .line 2101
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    .line 2102
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    goto :goto_0

    .line 2106
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    .line 2107
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    goto :goto_0

    .line 2086
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1996
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    .line 1997
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 1998
    return-object p0
.end method

.method public setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2015
    if-nez p1, :cond_0

    .line 2016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2018
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    .line 2019
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 2020
    return-object p0
.end method

.method public setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1977
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    .line 1978
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    .line 1979
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
    .line 2050
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2051
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2053
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2054
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2056
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2059
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2049
    return-void
.end method

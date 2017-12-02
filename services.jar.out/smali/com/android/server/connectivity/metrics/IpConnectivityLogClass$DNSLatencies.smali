.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLatencies"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;


# instance fields
.field public aCount:I

.field public aaaaCount:I

.field public latenciesMs:[I

.field public queryCount:I

.field public returnCode:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    .line 1056
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    .locals 2

    .prologue
    .line 1025
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    if-nez v0, :cond_1

    .line 1026
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    if-nez v0, :cond_0

    .line 1029
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1033
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    return-object v0

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1061
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    .line 1062
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    .line 1063
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    .line 1064
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    .line 1065
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    .line 1066
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->cachedSize:I

    .line 1068
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1099
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    .line 1100
    .local v3, "size":I
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    if-eqz v4, :cond_0

    .line 1102
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    .line 1101
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1104
    :cond_0
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v4, :cond_1

    .line 1106
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    const/4 v5, 0x2

    .line 1105
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1108
    :cond_1
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v4, :cond_2

    .line 1110
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    const/4 v5, 0x3

    .line 1109
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1112
    :cond_2
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v4, :cond_3

    .line 1114
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    const/4 v5, 0x4

    .line 1113
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1116
    :cond_3
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v4, :cond_4

    .line 1118
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    const/4 v5, 0x5

    .line 1117
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1120
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    if-lez v4, :cond_6

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 1123
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v1, v4, v2

    .line 1124
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v1    # "element":I
    :cond_5
    add-int/2addr v3, v0

    .line 1128
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1130
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_6
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 1139
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 1143
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1144
    return-object p0

    .line 1141
    :sswitch_0
    return-object p0

    .line 1149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    goto :goto_0

    .line 1153
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    goto :goto_0

    .line 1157
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    goto :goto_0

    .line 1161
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    goto :goto_0

    .line 1165
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    goto :goto_0

    .line 1170
    :sswitch_6
    const/16 v8, 0x30

    .line 1169
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1171
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 1172
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1173
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 1174
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1176
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 1177
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1178
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1171
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v8

    goto :goto_1

    .line 1181
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1182
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    goto :goto_0

    .line 1186
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1187
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1189
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 1190
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1191
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 1192
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1195
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1196
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 1197
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1198
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 1199
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1201
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 1202
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1201
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1196
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v8

    goto :goto_4

    .line 1204
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    .line 1205
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    if-eqz v1, :cond_0

    .line 1075
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->type:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1077
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v1, :cond_1

    .line 1078
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1080
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v1, :cond_2

    .line 1081
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1083
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v1, :cond_3

    .line 1084
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aCount:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1086
    :cond_3
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v1, :cond_4

    .line 1087
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1089
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1091
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    .end local v0    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1073
    return-void
.end method

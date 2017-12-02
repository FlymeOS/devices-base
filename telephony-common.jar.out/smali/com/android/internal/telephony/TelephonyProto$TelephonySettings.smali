.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonySettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$RilNetworkMode;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$WiFiCallingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;


# instance fields
.field private bitField0_:I

.field private isAirplaneMode_:Z

.field private isCellularDataEnabled_:Z

.field private isDataRoamingEnabled_:Z

.field private isEnhanced4GLteModeEnabled_:Z

.field private isVtOverLteEnabled_:Z

.field private isVtOverWifiEnabled_:Z

.field private isWifiCallingEnabled_:Z

.field private isWifiEnabled_:Z

.field private preferredNetworkMode_:I

.field private wifiCallingMode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 1211
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 2

    .prologue
    .line 1006
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1

    .line 1007
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1009
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1014
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object v0

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1217
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    .line 1218
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    .line 1219
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    .line 1220
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    .line 1221
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    .line 1222
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    .line 1223
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    .line 1224
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    .line 1225
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    .line 1226
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    .line 1227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 1228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->cachedSize:I

    .line 1229
    return-object p0
.end method

.method public clearIsAirplaneMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    .line 1034
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1035
    return-object p0
.end method

.method public clearIsCellularDataEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    .line 1053
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1054
    return-object p0
.end method

.method public clearIsDataRoamingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    .line 1072
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1073
    return-object p0
.end method

.method public clearIsEnhanced4GLteModeEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    .line 1110
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1111
    return-object p0
.end method

.method public clearIsVtOverLteEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    .line 1186
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1187
    return-object p0
.end method

.method public clearIsVtOverWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    .line 1205
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1206
    return-object p0
.end method

.method public clearIsWifiCallingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    .line 1148
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1149
    return-object p0
.end method

.method public clearIsWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    .line 1129
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1130
    return-object p0
.end method

.method public clearPreferredNetworkMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    .line 1091
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1092
    return-object p0
.end method

.method public clearWifiCallingMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    .line 1167
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1168
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1270
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1271
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1273
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    const/4 v2, 0x1

    .line 1272
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1275
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1277
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    const/4 v2, 0x2

    .line 1276
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1279
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1281
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    const/4 v2, 0x3

    .line 1280
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1283
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1285
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    const/4 v2, 0x4

    .line 1284
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1287
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1289
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    const/4 v2, 0x5

    .line 1288
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1293
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    const/4 v2, 0x6

    .line 1292
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1297
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    const/4 v2, 0x7

    .line 1296
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1301
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    const/16 v2, 0x8

    .line 1300
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1305
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    const/16 v2, 0x9

    .line 1304
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 1309
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    const/16 v2, 0xa

    .line 1308
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    :cond_9
    return v0
.end method

.method public getIsAirplaneMode()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    return v0
.end method

.method public getIsCellularDataEnabled()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    return v0
.end method

.method public getIsDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    return v0
.end method

.method public getIsEnhanced4GLteModeEnabled()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    return v0
.end method

.method public getIsVtOverLteEnabled()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    return v0
.end method

.method public getIsVtOverWifiEnabled()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    return v0
.end method

.method public getIsWifiCallingEnabled()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    return v0
.end method

.method public getIsWifiEnabled()Z
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    return v0
.end method

.method public getPreferredNetworkMode()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    return v0
.end method

.method public getWifiCallingMode()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    return v0
.end method

.method public hasIsAirplaneMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1030
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsCellularDataEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1049
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsDataRoamingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1068
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsEnhanced4GLteModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1106
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsVtOverLteEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1182
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsVtOverWifiEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1201
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsWifiCallingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1144
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIsWifiEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1125
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPreferredNetworkMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1087
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasWifiCallingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1163
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

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
    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 1320
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1324
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1325
    return-object p0

    .line 1322
    :sswitch_0
    return-object p0

    .line 1330
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    .line 1331
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1335
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    .line 1336
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1340
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    .line 1341
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1345
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 1346
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 1347
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 1376
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1377
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1372
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    .line 1373
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1383
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    .line 1384
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1388
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    .line 1389
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1393
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    .line 1394
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto :goto_0

    .line 1398
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 1399
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 1400
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 1409
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1410
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1405
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    .line 1406
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto/16 :goto_0

    .line 1416
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    .line 1417
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto/16 :goto_0

    .line 1421
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    .line 1422
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    goto/16 :goto_0

    .line 1320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 1347
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
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1400
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIsAirplaneMode(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1025
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    .line 1026
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1027
    return-object p0
.end method

.method public setIsCellularDataEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    .line 1045
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1046
    return-object p0
.end method

.method public setIsDataRoamingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1063
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    .line 1064
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1065
    return-object p0
.end method

.method public setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1101
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    .line 1102
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1103
    return-object p0
.end method

.method public setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    .line 1178
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1179
    return-object p0
.end method

.method public setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1196
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    .line 1197
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1198
    return-object p0
.end method

.method public setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    .line 1140
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1141
    return-object p0
.end method

.method public setIsWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    .line 1121
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1122
    return-object p0
.end method

.method public setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1082
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    .line 1083
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1084
    return-object p0
.end method

.method public setWifiCallingMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1158
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    .line 1159
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    .line 1160
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
    .line 1235
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1236
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1238
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1239
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1241
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1242
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1244
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1245
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1247
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1248
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1250
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1251
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1253
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1254
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1256
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 1257
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1259
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 1260
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1262
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 1263
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1265
    :cond_9
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1234
    return-void
.end method

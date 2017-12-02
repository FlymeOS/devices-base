.class public final Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterFingerPrint"
.end annotation


# static fields
.field public static final AUTH_ENTERPRISE:I = 0x3

.field public static final AUTH_OPEN:I = 0x1

.field public static final AUTH_PERSONAL:I = 0x2

.field public static final AUTH_UNKNOWN:I = 0x0

.field public static final ROAM_TYPE_DBDC:I = 0x3

.field public static final ROAM_TYPE_ENTERPRISE:I = 0x2

.field public static final ROAM_TYPE_NONE:I = 0x1

.field public static final ROAM_TYPE_UNKNOWN:I = 0x0

.field public static final ROUTER_TECH_A:I = 0x1

.field public static final ROUTER_TECH_AC:I = 0x5

.field public static final ROUTER_TECH_B:I = 0x2

.field public static final ROUTER_TECH_G:I = 0x3

.field public static final ROUTER_TECH_N:I = 0x4

.field public static final ROUTER_TECH_OTHER:I = 0x6

.field public static final ROUTER_TECH_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;


# instance fields
.field public authentication:I

.field public channelInfo:I

.field public dtim:I

.field public hidden:Z

.field public passpoint:Z

.field public roamType:I

.field public routerTechnology:I

.field public supportsIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->clear()Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    .line 1320
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 2

    .prologue
    .line 1283
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_1

    .line 1284
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1286
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_0

    .line 1287
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1291
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    return-object v0

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1325
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 1326
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 1327
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 1328
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 1329
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 1330
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 1331
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 1332
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 1333
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->cachedSize:I

    .line 1334
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1369
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1370
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v1, :cond_0

    .line 1372
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    const/4 v2, 0x1

    .line 1371
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1374
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v1, :cond_1

    .line 1376
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    const/4 v2, 0x2

    .line 1375
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1378
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v1, :cond_2

    .line 1380
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    const/4 v2, 0x3

    .line 1379
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1382
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v1, :cond_3

    .line 1384
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    const/4 v2, 0x4

    .line 1383
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1386
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v1, :cond_4

    .line 1388
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    const/4 v2, 0x5

    .line 1387
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1390
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v1, :cond_5

    .line 1392
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    const/4 v2, 0x6

    .line 1391
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1394
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v1, :cond_6

    .line 1396
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    const/4 v2, 0x7

    .line 1395
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1398
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v1, :cond_7

    .line 1400
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    const/16 v2, 0x8

    .line 1399
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1402
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1411
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1415
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1416
    return-object p0

    .line 1413
    :sswitch_0
    return-object p0

    .line 1421
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1422
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1427
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    goto :goto_0

    .line 1433
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    goto :goto_0

    .line 1437
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    goto :goto_0

    .line 1441
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1442
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1447
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 1453
    .end local v1    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    goto :goto_0

    .line 1457
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1458
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 1466
    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    goto :goto_0

    .line 1472
    .end local v1    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    goto :goto_0

    .line 1476
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    goto :goto_0

    .line 1411
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
    .end sparse-switch

    .line 1422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1442
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1458
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
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
    .line 1406
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v0, :cond_0

    .line 1341
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1343
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v0, :cond_1

    .line 1344
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1346
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v0, :cond_2

    .line 1347
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1349
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v0, :cond_3

    .line 1350
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1352
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v0, :cond_4

    .line 1353
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1355
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v0, :cond_5

    .line 1356
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1358
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v0, :cond_6

    .line 1359
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1361
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v0, :cond_7

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1364
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1339
    return-void
.end method

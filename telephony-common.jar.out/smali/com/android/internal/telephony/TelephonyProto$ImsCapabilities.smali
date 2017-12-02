.class public final Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;


# instance fields
.field private bitField0_:I

.field private utOverLte_:Z

.field private utOverWifi_:Z

.field private videoOverLte_:Z

.field private videoOverWifi_:Z

.field private voiceOverLte_:Z

.field private voiceOverWifi_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2411
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2412
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 2411
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2

    .prologue
    .line 2282
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_1

    .line 2283
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2285
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_0

    .line 2286
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2290
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object v0

    .line 2283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2539
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2533
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2416
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2417
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    .line 2418
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    .line 2419
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    .line 2420
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    .line 2421
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    .line 2422
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    .line 2423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 2424
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->cachedSize:I

    .line 2425
    return-object p0
.end method

.method public clearUtOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    .line 2386
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2387
    return-object p0
.end method

.method public clearUtOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    .line 2405
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2406
    return-object p0
.end method

.method public clearVideoOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    .line 2348
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2349
    return-object p0
.end method

.method public clearVideoOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    .line 2367
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2368
    return-object p0
.end method

.method public clearVoiceOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    .line 2310
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2311
    return-object p0
.end method

.method public clearVoiceOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    .prologue
    .line 2328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    .line 2329
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2330
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2454
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2455
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2457
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    const/4 v2, 0x1

    .line 2456
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2461
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    const/4 v2, 0x2

    .line 2460
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2463
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2465
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    const/4 v2, 0x3

    .line 2464
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2467
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2469
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    const/4 v2, 0x4

    .line 2468
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2471
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2473
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    const/4 v2, 0x5

    .line 2472
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2475
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2477
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    const/4 v2, 0x6

    .line 2476
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2479
    :cond_5
    return v0
.end method

.method public getUtOverLte()Z
    .locals 1

    .prologue
    .line 2374
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    return v0
.end method

.method public getUtOverWifi()Z
    .locals 1

    .prologue
    .line 2393
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    return v0
.end method

.method public getVideoOverLte()Z
    .locals 1

    .prologue
    .line 2336
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    return v0
.end method

.method public getVideoOverWifi()Z
    .locals 1

    .prologue
    .line 2355
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    return v0
.end method

.method public getVoiceOverLte()Z
    .locals 1

    .prologue
    .line 2298
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    return v0
.end method

.method public getVoiceOverWifi()Z
    .locals 1

    .prologue
    .line 2317
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    return v0
.end method

.method public hasUtOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2382
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasUtOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2401
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVideoOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2344
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVideoOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2363
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceOverLte()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2306
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasVoiceOverWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2325
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

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
    .line 2483
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2488
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2492
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2493
    return-object p0

    .line 2490
    :sswitch_0
    return-object p0

    .line 2498
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    .line 2499
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2503
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    .line 2504
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2508
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    .line 2509
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2513
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    .line 2514
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2518
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    .line 2519
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2523
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    .line 2524
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    goto :goto_0

    .line 2488
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
    .end sparse-switch
.end method

.method public setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2377
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    .line 2378
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2379
    return-object p0
.end method

.method public setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2396
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    .line 2397
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2398
    return-object p0
.end method

.method public setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2339
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    .line 2340
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2341
    return-object p0
.end method

.method public setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2358
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    .line 2359
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2360
    return-object p0
.end method

.method public setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2301
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    .line 2302
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2303
    return-object p0
.end method

.method public setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2320
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    .line 2321
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    .line 2322
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
    .line 2431
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2432
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2434
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2435
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2437
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2438
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2440
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2441
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2443
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2444
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2446
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2447
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2449
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2430
    return-void
.end method

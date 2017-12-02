.class public Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field private static final CAP_ESS_BIT_OFFSET:I = 0x0

.field private static final CAP_PRIVACY_BIT_OFFSET:I = 0x4

.field private static final RSNE_VERSION:S = 0x1s

.field private static final WPA2_AKM_EAP:I = 0x1ac0f00

.field private static final WPA2_AKM_EAP_SHA256:I = 0x5ac0f00

.field private static final WPA2_AKM_FT_EAP:I = 0x3ac0f00

.field private static final WPA2_AKM_FT_PSK:I = 0x4ac0f00

.field private static final WPA2_AKM_PSK:I = 0x2ac0f00

.field private static final WPA2_AKM_PSK_SHA256:I = 0x6ac0f00

.field private static final WPA_AKM_EAP:I = 0x1f25000

.field private static final WPA_AKM_PSK:I = 0x2f25000

.field private static final WPA_VENDOR_OUI_TYPE_ONE:I = 0x1f25000

.field private static final WPA_VENDOR_OUI_VERSION:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCapabilities([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 10
    .param p0, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .param p1, "beaconCap"    # Ljava/util/BitSet;

    .prologue
    const/4 v6, 0x0

    .line 522
    const-string/jumbo v0, ""

    .line 523
    .local v0, "capabilities":Ljava/lang/String;
    const/4 v4, 0x0

    .line 524
    .local v4, "rsneFound":Z
    const/4 v5, 0x0

    .line 526
    .local v5, "wpaFound":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 527
    :cond_0
    return-object v0

    .line 530
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 531
    .local v1, "ess":Z
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    .line 533
    .local v3, "privacy":Z
    array-length v7, p0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v2, p0, v6

    .line 534
    .local v2, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v8, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v9, 0x30

    if-ne v8, v9, :cond_2

    .line 535
    const/4 v4, 0x1

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_2
    iget v8, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v9, 0xdd

    if-ne v8, v9, :cond_3

    .line 540
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 541
    const/4 v5, 0x1

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 547
    .end local v2    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_7

    .line 552
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[ESS]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_6
    return-object v0

    .line 547
    :cond_7
    if-eqz v3, :cond_5

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[WEP]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 429
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0x1f25000

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v3, "IE_Capabilities"

    const-string/jumbo v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v2
.end method

.method private static parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 11
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v10, 0x0

    .line 348
    iget-object v8, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 352
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 354
    return-object v10

    .line 359
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 362
    const-string/jumbo v7, "[WPA2"

    .line 365
    .local v7, "security":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 368
    .local v3, "cipherCount":S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 370
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 378
    .local v1, "akmCount":S
    if-nez v1, :cond_2

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-EAP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 381
    :cond_2
    const/4 v5, 0x0

    .line 382
    .local v5, "found":Z
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_9

    .line 383
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 384
    .local v0, "akm":I
    sparse-switch v0, :sswitch_data_0

    .line 382
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 386
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_3

    const-string/jumbo v8, "+"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "EAP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 387
    const/4 v5, 0x1

    .line 388
    goto :goto_2

    .line 386
    :cond_3
    const-string/jumbo v8, "-"

    goto :goto_3

    .line 390
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_4

    const-string/jumbo v8, "+"

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "PSK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 391
    const/4 v5, 0x1

    .line 392
    goto :goto_2

    .line 390
    :cond_4
    const-string/jumbo v8, "-"

    goto :goto_4

    .line 394
    :sswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_5

    const-string/jumbo v8, "+"

    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "FT/EAP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 395
    const/4 v5, 0x1

    .line 396
    goto :goto_2

    .line 394
    :cond_5
    const-string/jumbo v8, "-"

    goto :goto_5

    .line 398
    :sswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_6

    const-string/jumbo v8, "+"

    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "FT/PSK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    const/4 v5, 0x1

    .line 400
    goto/16 :goto_2

    .line 398
    :cond_6
    const-string/jumbo v8, "-"

    goto :goto_6

    .line 402
    :sswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_7

    const-string/jumbo v8, "+"

    :goto_7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "EAP-SHA256"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    const/4 v5, 0x1

    .line 404
    goto/16 :goto_2

    .line 402
    :cond_7
    const-string/jumbo v8, "-"

    goto :goto_7

    .line 406
    :sswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_8

    const-string/jumbo v8, "+"

    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "PSK-SHA256"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 407
    const/4 v5, 0x1

    .line 408
    goto/16 :goto_2

    .line 406
    :cond_8
    const-string/jumbo v8, "-"

    goto :goto_8

    .line 416
    .end local v0    # "akm":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 417
    return-object v7

    .line 418
    .end local v1    # "akmCount":S
    .end local v3    # "cipherCount":S
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "security":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 419
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "IE_Capabilities"

    const-string/jumbo v9, "Couldn\'t parse RSNE, buffer underflow"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v10

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_4
        0x6ac0f00 -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 11
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v10, 0x0

    .line 449
    iget-object v8, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 454
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 457
    const-string/jumbo v7, "[WPA"

    .line 460
    .local v7, "security":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 462
    return-object v10

    .line 467
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 470
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 473
    .local v3, "cipherCount":S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 475
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 473
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 483
    .local v1, "akmCount":S
    if-nez v1, :cond_2

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-EAP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    :cond_2
    const/4 v5, 0x0

    .line 487
    .local v5, "found":Z
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    .line 488
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 489
    .local v0, "akm":I
    sparse-switch v0, :sswitch_data_0

    .line 487
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 491
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_3

    const-string/jumbo v8, "+"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "EAP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    const/4 v5, 0x1

    .line 493
    goto :goto_2

    .line 491
    :cond_3
    const-string/jumbo v8, "-"

    goto :goto_3

    .line 495
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_4

    const-string/jumbo v8, "+"

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "PSK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 496
    const/4 v5, 0x1

    .line 497
    goto :goto_2

    .line 495
    :cond_4
    const-string/jumbo v8, "-"

    goto :goto_4

    .line 505
    .end local v0    # "akm":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 506
    return-object v7

    .line 507
    .end local v1    # "akmCount":S
    .end local v3    # "cipherCount":S
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "security":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 508
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "IE_Capabilities"

    const-string/jumbo v9, "Couldn\'t parse type 1 WPA, buffer underflow"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v10

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f25000 -> :sswitch_0
        0x2f25000 -> :sswitch_1
    .end sparse-switch
.end method

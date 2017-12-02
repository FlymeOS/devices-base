.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    .prologue
    .line 471
    if-ge p1, p2, :cond_0

    .line 472
    const-string/jumbo v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CSIM MIPUPP format error, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 473
    const-string/jumbo v2, "expected length at least ="

    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string/jumbo v0, "EF_CSIM_MIPUPP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 483
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 485
    .local v2, "data":[B
    array-length v14, v2

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 486
    const-string/jumbo v14, "RuimRecords"

    const-string/jumbo v15, "MIPUPP read error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 490
    :cond_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 492
    .local v1, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 494
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    .line 496
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_1

    .line 497
    return-void

    .line 500
    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 501
    .local v13, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    .line 503
    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 504
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 505
    return-void

    .line 507
    :cond_2
    const/16 v14, 0xb

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 509
    add-int/lit8 v6, v6, -0xb

    .line 512
    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_4

    .line 513
    return-void

    .line 515
    :cond_4
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 516
    .local v12, "numNai":I
    add-int/lit8 v6, v6, -0x4

    .line 519
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v12, :cond_11

    .line 520
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_5

    .line 521
    return-void

    .line 523
    :cond_5
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 524
    .local v10, "naiEntryIndex":I
    add-int/lit8 v6, v6, -0x4

    .line 526
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_6

    .line 527
    return-void

    .line 529
    :cond_6
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 530
    .local v11, "naiLength":I
    add-int/lit8 v6, v6, -0x8

    .line 532
    if-nez v10, :cond_a

    .line 534
    shl-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_7

    .line 535
    return-void

    .line 537
    :cond_7
    new-array v9, v11, [C

    .line 538
    .local v9, "naiCharArray":[C
    const/4 v5, 0x0

    .local v5, "index1":I
    :goto_1
    if-ge v5, v11, :cond_8

    .line 539
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-char v14, v14

    aput-char v14, v9, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 541
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    invoke-static {v14, v15}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    const-string/jumbo v14, "RuimRecords"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 543
    const-string/jumbo v14, "RuimRecords"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIPUPP Nai = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get4(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_9
    return-void

    .line 548
    .end local v5    # "index1":I
    .end local v9    # "naiCharArray":[C
    :cond_a
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_b

    .line 549
    return-void

    .line 551
    :cond_b
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x65

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 552
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 553
    .local v7, "mnAaaSpiIndicator":I
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    sub-int/2addr v6, v14

    .line 555
    const/4 v14, 0x1

    if-ne v7, v14, :cond_d

    .line 556
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_c

    .line 557
    return-void

    .line 559
    :cond_c
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 560
    add-int/lit8 v6, v6, -0x20

    .line 564
    :cond_d
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_e

    .line 565
    return-void

    .line 567
    :cond_e
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 568
    add-int/lit8 v6, v6, -0x4

    .line 569
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 570
    .local v8, "mnHaSpiIndicator":I
    add-int/lit8 v6, v6, -0x1

    .line 572
    const/4 v14, 0x1

    if-ne v8, v14, :cond_10

    .line 573
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_f

    .line 574
    return-void

    .line 576
    :cond_f
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    add-int/lit8 v6, v6, -0x20

    .line 519
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 581
    .end local v4    # "index":I
    .end local v6    # "mipUppLength":I
    .end local v7    # "mnAaaSpiIndicator":I
    .end local v8    # "mnHaSpiIndicator":I
    .end local v10    # "naiEntryIndex":I
    .end local v11    # "naiLength":I
    .end local v12    # "numNai":I
    .end local v13    # "retryInfoInclude":I
    :catch_0
    move-exception v3

    .line 582
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "RuimRecords"

    const-string/jumbo v15, "MIPUPP read Exception error!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 481
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v6    # "mipUppLength":I
    .restart local v12    # "numNai":I
    .restart local v13    # "retryInfoInclude":I
    :cond_11
    return-void
.end method

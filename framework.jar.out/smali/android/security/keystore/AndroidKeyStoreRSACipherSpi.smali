.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 353
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 352
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 5
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    const/4 v4, -0x1

    .line 461
    const v2, 0x10000002

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 462
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .line 463
    .local v0, "keymasterPadding":I
    if-ne v0, v4, :cond_0

    .line 464
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    .line 466
    :cond_0
    const v2, 0x20000006

    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 467
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getKeymasterPurposeOverride()I

    move-result v1

    .line 468
    .local v1, "purposeOverride":I
    if-eq v1, v4, :cond_2

    .line 469
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 470
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 472
    :cond_1
    const v2, 0x20000005

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 460
    :cond_2
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v2, 0x0

    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Unsupported key: null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    const-string/jumbo v0, "RSA"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, ". Only "

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, "RSA"

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string/jumbo v2, " supported"

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    move-object v7, p2

    .line 367
    nop

    nop

    .line 374
    .local v7, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_0
    instance-of v0, v7, Ljava/security/PrivateKey;

    if-eqz v0, :cond_4

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 392
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    .end local v7    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_2
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_3

    move-object v7, p2

    .line 369
    nop

    nop

    .restart local v7    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    goto :goto_0

    .line 371
    .end local v7    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .restart local v7    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :pswitch_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v0

    if-nez v0, :cond_5

    .line 384
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA private keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    const-string/jumbo v2, " and padding "

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    const-string/jumbo v2, ". Only RSA public keys supported for this mode"

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_4
    packed-switch p1, :pswitch_data_1

    .line 411
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA public keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_1
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA public keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    const-string/jumbo v2, " and padding "

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    const-string/jumbo v2, ". Only RSA private keys supported for this opmode."

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_5
    :pswitch_2
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 417
    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    .line 418
    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    move-object v3, v2

    .line 417
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v6

    .line 419
    .local v6, "errorCode":I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_6

    .line 420
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    .line 421
    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v2

    .line 420
    invoke-virtual {v0, v1, v2, v6}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;

    move-result-object v0

    throw v0

    .line 423
    :cond_6
    const v0, 0x30000003

    invoke-virtual {v5, v0, v10, v11}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v8

    .line 424
    .local v8, "keySizeBits":J
    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 425
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Size of key not known"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_7
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v8, v0

    if-lez v0, :cond_8

    .line 427
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_8
    const-wide/16 v0, 0x7

    add-long/2addr v0, v8

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 431
    invoke-virtual {p0, v7}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 357
    return-void

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 397
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 478
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 448
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    .line 449
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 450
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 447
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .prologue
    .line 455
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 454
    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .locals 0
    .param p1, "keymasterPadding"    # I

    .prologue
    .line 509
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    .line 508
    return-void
.end method

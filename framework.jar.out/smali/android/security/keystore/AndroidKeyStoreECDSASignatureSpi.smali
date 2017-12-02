.class abstract Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA1;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA224;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA256;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA384;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA512;
    }
.end annotation


# instance fields
.field private mGroupSizeBits:I

.field private final mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 146
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    .line 145
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 187
    const v0, 0x10000002

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 188
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    const v1, 0x20000005

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 186
    return-void
.end method

.method protected final getAdditionalEntropyAmountForSign()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final getGroupSizeBits()I
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    return v0
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 12
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v2, 0x0

    .line 151
    const-string/jumbo v0, "EC"

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, ". Only"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "EC"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " supported"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 157
    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    move-object v3, v2

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v6

    .line 159
    .local v6, "errorCode":I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;

    move-result-object v0

    throw v0

    .line 162
    :cond_1
    const v0, 0x30000003

    invoke-virtual {v5, v0, v10, v11}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v8

    .line 163
    .local v8, "keySizeBits":J
    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Size of key not known"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 166
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

    .line 168
    :cond_3
    long-to-int v0, v8

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 170
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 150
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    .line 176
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 174
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 180
    return-void
.end method

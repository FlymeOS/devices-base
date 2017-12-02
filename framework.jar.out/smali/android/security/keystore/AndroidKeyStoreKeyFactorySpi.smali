.class public Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "AndroidKeyStoreKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    .line 39
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "key == null"

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 48
    :cond_0
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v6, :cond_1

    .line 49
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v6, :cond_2

    .line 57
    :cond_1
    if-nez p2, :cond_3

    .line 58
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "keySpecClass == null"

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_2
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 52
    const-string/jumbo v8, ". This KeyFactory supports only Android Keystore asymmetric keys"

    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 59
    :cond_3
    const-class v6, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 60
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v6, :cond_4

    .line 61
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 63
    const-string/jumbo v8, ". KeyInfo can be obtained only for Android Keystore private keys"

    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object v3, p1

    .line 65
    nop

    nop

    .line 66
    .local v3, "keystorePrivateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 69
    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "entryAlias":Ljava/lang/String;
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v7

    .line 74
    invoke-static {v6, v1, v2, v7}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v4

    .line 76
    .local v4, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 71
    .end local v1    # "entryAlias":Ljava/lang/String;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_5
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v3    # "keystorePrivateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :cond_6
    const-class v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 78
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-nez v6, :cond_7

    .line 79
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 81
    const-string/jumbo v8, ". X509EncodedKeySpec can be obtained only for Android Keystore public"

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 82
    const-string/jumbo v8, " keys"

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    :cond_7
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    nop

    nop

    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 86
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 87
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .restart local p1    # "key":Ljava/security/Key;
    :cond_8
    const-class v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 88
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_9

    .line 89
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    .line 90
    const-string/jumbo v7, "Key material export of Android Keystore private keys is not supported"

    .line 89
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_9
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    .line 93
    const-string/jumbo v7, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    .line 92
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_a
    const-class v6, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 97
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    if-eqz v6, :cond_b

    move-object v5, p1

    .line 98
    nop

    nop

    .line 101
    .local v5, "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 102
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 104
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v5    # "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    :cond_b
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Obtaining RSAPublicKeySpec not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 106
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_c

    const-string/jumbo v6, "private"

    .line 105
    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 107
    const-string/jumbo v8, " key"

    .line 105
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    :cond_c
    const-string/jumbo v6, "public"

    goto :goto_0

    .line 109
    :cond_d
    const-class v6, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 110
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    if-eqz v6, :cond_e

    move-object v0, p1

    .line 111
    nop

    nop

    .line 113
    .local v0, "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 114
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 116
    .end local v0    # "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_e
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Obtaining ECPublicKeySpec not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 118
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_f

    const-string/jumbo v6, "private"

    .line 117
    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 119
    const-string/jumbo v8, " key"

    .line 117
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :cond_f
    const-string/jumbo v6, "public"

    goto :goto_1

    .line 122
    :cond_10
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    .line 145
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    return-object p1

    .line 146
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 147
    const-string/jumbo v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    .line 146
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

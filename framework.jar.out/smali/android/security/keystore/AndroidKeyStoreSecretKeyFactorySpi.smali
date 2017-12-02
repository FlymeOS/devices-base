.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    .line 43
    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 42
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;
    .param p3, "keyUid"    # I

    .prologue
    .line 78
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 80
    .local v7, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    .line 79
    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v29

    .line 81
    .local v29, "errorCode":I
    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    .line 82
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    :try_start_0
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v10, 0x1

    .line 101
    .local v10, "insideSecureHardware":Z
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v2

    .line 100
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v11

    .line 110
    .local v11, "origin":I
    :goto_0
    const-wide/16 v2, -0x1

    const v4, 0x30000003

    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v32

    .line 111
    .local v32, "keySizeUnsigned":J
    const-wide/16 v2, -0x1

    cmp-long v2, v32, v2

    if-nez v2, :cond_3

    .line 112
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Key size not available"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    .end local v32    # "keySizeUnsigned":J
    :catch_0
    move-exception v26

    .line 156
    .local v26, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Unsupported key characteristic"

    move-object/from16 v0, v26

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const/4 v10, 0x0

    .line 105
    .restart local v10    # "insideSecureHardware":Z
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v2

    .line 104
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v11

    .restart local v11    # "origin":I
    goto :goto_0

    .line 107
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    :cond_2
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Key origin not available"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .restart local v10    # "insideSecureHardware":Z
    .restart local v11    # "origin":I
    .restart local v32    # "keySizeUnsigned":J
    :cond_3
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v32, v2

    if-lez v2, :cond_4

    .line 114
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_4
    move-wide/from16 v0, v32

    long-to-int v12, v0

    .line 118
    .local v12, "keySize":I
    const v2, 0x20000001

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v16

    .line 120
    .local v16, "purposes":I
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v28, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v39, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x20000006

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, "keymasterPadding$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v34

    .line 126
    .local v34, "keymasterPadding":I
    :try_start_2
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v30

    .line 127
    .local v30, "jcaPadding":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 128
    .end local v30    # "jcaPadding":Ljava/lang/String;
    :catch_1
    move-exception v26

    .line 131
    .restart local v26    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v38

    .line 132
    .local v38, "padding":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 133
    .end local v38    # "padding":Ljava/lang/String;
    :catch_2
    move-exception v27

    .line 134
    .local v27, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v2, Ljava/security/ProviderException;

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported encryption padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    .end local v27    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v34    # "keymasterPadding":I
    :cond_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 143
    .local v17, "encryptionPaddings":[Ljava/lang/String;
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 146
    .local v18, "signaturePaddings":[Ljava/lang/String;
    const v2, 0x20000005

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "digests":[Ljava/lang/String;
    const v2, 0x20000004

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    .line 150
    .local v20, "blockModes":[Ljava/lang/String;
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100001f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v37

    .line 152
    .local v37, "keymasterSwEnforcedUserAuthenticators":I
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100001f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v31

    .line 154
    .local v31, "keymasterHwEnforcedUserAuthenticators":I
    const v2, -0x5ffffe0a

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v36

    .line 159
    .local v36, "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    const v2, 0x60000190

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v13

    .line 161
    .local v13, "keyValidityStart":Ljava/util/Date;
    const v2, 0x60000191

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v14

    .line 163
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v2, 0x60000192

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v15

    .line 165
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v2, 0x700001f7

    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v21, 0x0

    .line 167
    .local v21, "userAuthenticationRequired":Z
    :goto_2
    const-wide/16 v2, -0x1

    const v4, 0x300001f9

    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v40

    .line 168
    .local v40, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v40, v2

    if-lez v2, :cond_7

    .line 169
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User authentication timeout validity too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    const-string/jumbo v4, " seconds"

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v21    # "userAuthenticationRequired":Z
    .end local v40    # "userAuthenticationValidityDurationSeconds":J
    :cond_6
    const/16 v21, 0x1

    .restart local v21    # "userAuthenticationRequired":Z
    goto :goto_2

    .line 172
    .restart local v40    # "userAuthenticationValidityDurationSeconds":J
    :cond_7
    if-eqz v21, :cond_c

    .line 173
    if-eqz v31, :cond_c

    .line 174
    if-nez v37, :cond_b

    const/16 v23, 0x1

    .line 176
    .local v23, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_3
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x700001fa

    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v24

    .line 178
    .local v24, "userAuthenticationValidWhileOnBody":Z
    const/16 v25, 0x0

    .line 179
    .local v25, "invalidatedByBiometricEnrollment":Z
    const/4 v2, 0x2

    move/from16 v0, v37

    if-eq v0, v2, :cond_8

    .line 180
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_a

    .line 182
    :cond_8
    if-eqz v36, :cond_9

    .line 183
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 182
    :cond_9
    const/16 v25, 0x0

    .line 187
    :cond_a
    :goto_4
    new-instance v8, Landroid/security/keystore/KeyInfo;

    .line 200
    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v9, p1

    .line 187
    invoke-direct/range {v8 .. v25}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZ)V

    return-object v8

    .line 174
    .end local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    .end local v24    # "userAuthenticationValidWhileOnBody":Z
    .end local v25    # "invalidatedByBiometricEnrollment":Z
    :cond_b
    const/16 v23, 0x0

    .restart local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    .line 172
    .end local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_c
    const/16 v23, 0x0

    .restart local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    .line 184
    .restart local v24    # "userAuthenticationValidWhileOnBody":Z
    .restart local v25    # "invalidatedByBiometricEnrollment":Z
    :cond_d
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v25, 0x0

    goto :goto_4

    :cond_e
    const/16 v25, 0x1

    goto :goto_4
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "keySpecClass == null"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v3, :cond_2

    .line 54
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_1
    const-string/jumbo v3, "null"

    goto :goto_0

    .line 57
    :cond_2
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 59
    const-string/jumbo v4, "Key material export of Android KeyStore keys is not supported"

    .line 58
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_3
    const-class v3, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 62
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported key spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v2, p1

    .line 64
    nop

    nop

    .line 65
    .local v2, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v3, "USRSKEY_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    const-string/jumbo v3, "USRSKEY_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "entryAlias":Ljava/lang/String;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    invoke-static {v3, v0, v1, v4}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v3

    return-object v3

    .line 70
    .end local v0    # "entryAlias":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid key alias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 227
    const-string/jumbo v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    .line 226
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    return-object p1
.end method

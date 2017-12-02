.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .prologue
    const v4, 0x30000008

    .line 165
    sparse-switch p1, :sswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 168
    :sswitch_0
    const/16 v2, 0x20

    .line 167
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-wide/16 v2, 0x60

    .line 170
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    .line 179
    :sswitch_1
    array-length v2, p3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 180
    new-instance v2, Ljava/security/ProviderException;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    array-length v4, p3

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    const-string/jumbo v4, ". Exactly one digest must be authorized"

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    const/4 v2, 0x0

    aget v1, p3, v2

    .line 186
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    .line 187
    .local v0, "digestOutputSizeBits":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 188
    new-instance v2, Ljava/security/ProviderException;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_2
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V
    .locals 10
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "userAuthenticationRequired"    # Z
    .param p2, "userAuthenticationValidityDurationSeconds"    # I
    .param p3, "userAuthenticationValidWhileOnBody"    # Z
    .param p4, "invalidatedByBiometricEnrollment"    # Z

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const v1, 0x700001f7

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 104
    return-void

    .line 107
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 111
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 115
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    .line 116
    .local v2, "fingerprintOnlySid":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    const-string/jumbo v8, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    .line 117
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v2    # "fingerprintOnlySid":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 123
    .restart local v2    # "fingerprintOnlySid":J
    :cond_2
    if-eqz p4, :cond_3

    .line 126
    move-wide v6, v2

    .line 134
    .local v6, "sid":J
    :goto_1
    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    const v8, -0x5ffffe0a

    .line 133
    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 135
    const v1, 0x100001f8

    const/4 v8, 0x2

    invoke-virtual {p0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 136
    if-eqz p3, :cond_5

    .line 137
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v8, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v6    # "sid":J
    :cond_3
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v6

    .restart local v6    # "sid":J
    goto :goto_1

    .line 143
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "fingerprintOnlySid":J
    .end local v6    # "sid":J
    :cond_4
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    .line 145
    .local v4, "rootSid":J
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 144
    const v8, -0x5ffffe0a

    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 146
    const v1, 0x100001f8

    .line 147
    const/4 v8, 0x3

    .line 146
    invoke-virtual {p0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 149
    int-to-long v8, p2

    .line 148
    const v1, 0x300001f9

    invoke-virtual {p0, v1, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 150
    if-eqz p3, :cond_5

    .line 151
    const v1, 0x700001fa

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 101
    .end local v4    # "rootSid":J
    :cond_5
    return-void
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 39
    :pswitch_1
    const/16 v0, 0x80

    return v0

    .line 41
    :pswitch_2
    const/16 v0, 0xa0

    return v0

    .line 43
    :pswitch_3
    const/16 v0, 0xe0

    return v0

    .line 45
    :pswitch_4
    const/16 v0, 0x100

    return v0

    .line 47
    :pswitch_5
    const/16 v0, 0x180

    return v0

    .line 49
    :pswitch_6
    const/16 v0, 0x200

    return v0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    .prologue
    .line 198
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    .line 199
    .local v0, "rootSid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_0
    return-wide v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterBlockMode"    # I

    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 63
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 78
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 76
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

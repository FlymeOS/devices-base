.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInsideSecureHardware:Z

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOrigin:I

.field private final mPurposes:I

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZ)V
    .locals 2
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "insideSecureHardware"    # Z
    .param p3, "origin"    # I
    .param p4, "keySize"    # I
    .param p5, "keyValidityStart"    # Ljava/util/Date;
    .param p6, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p7, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p8, "purposes"    # I
    .param p9, "encryptionPaddings"    # [Ljava/lang/String;
    .param p10, "signaturePaddings"    # [Ljava/lang/String;
    .param p11, "digests"    # [Ljava/lang/String;
    .param p12, "blockModes"    # [Ljava/lang/String;
    .param p13, "userAuthenticationRequired"    # Z
    .param p14, "userAuthenticationValidityDurationSeconds"    # I
    .param p15, "userAuthenticationRequirementEnforcedBySecureHardware"    # Z
    .param p16, "userAuthenticationValidWhileOnBody"    # Z
    .param p17, "invalidatedByBiometricEnrollment"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    .line 106
    iput-boolean p2, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    .line 107
    iput p3, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    .line 108
    iput p4, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    .line 109
    invoke-static {p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    .line 110
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 111
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 112
    iput p8, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    .line 114
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    .line 116
    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    .line 117
    invoke-static {p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    .line 118
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    .line 119
    iput-boolean p13, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    .line 120
    move/from16 v0, p14

    iput v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    .line 121
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    .line 123
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    .line 124
    move/from16 v0, p17

    iput-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    .line 104
    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return v0
.end method

.method public getPurposes()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isInsideSecureHardware()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return v0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

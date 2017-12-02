.class public final Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttestationChallenge:[B

.field private mBlockModes:[Ljava/lang/String;

.field private mCertificateNotAfter:Ljava/util/Date;

.field private mCertificateNotBefore:Ljava/util/Date;

.field private mCertificateSerialNumber:Ljava/math/BigInteger;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mInvalidatedByBiometricEnrollment:Z

.field private mKeySize:I

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mUid:I

.field private mUniqueIdIncluded:Z

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidWhileOnBody:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "purposes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    .line 635
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 648
    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    .line 650
    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 651
    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    .line 654
    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keystoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 679
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 672
    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 25

    .prologue
    .line 1150
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    .line 1153
    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 1155
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 1156
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 1157
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    .line 1158
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    .line 1159
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 1160
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 1161
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 1162
    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1167
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    move/from16 v18, v0

    .line 1168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    move/from16 v19, v0

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v20, v0

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    move-object/from16 v21, v0

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    move/from16 v22, v0

    .line 1172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v23, v0

    .line 1173
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v24, v0

    .line 1150
    invoke-direct/range {v1 .. v24}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI[BZZZ)V

    return-object v1
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 727
    return-object p0
.end method

.method public setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "attestationChallenge"    # [B

    .prologue
    .line 1083
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    .line 1084
    return-object p0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .prologue
    .line 919
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    .line 920
    return-object p0
.end method

.method public setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 781
    if-nez p1, :cond_0

    .line 782
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    .line 785
    return-object p0
.end method

.method public setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    .line 770
    return-object p0
.end method

.method public setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 755
    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 741
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .prologue
    .line 864
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    .line 865
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 888
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 889
    return-object p0
.end method

.method public setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "invalidateKey"    # Z

    .prologue
    .line 1141
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 1142
    return-object p0
.end method

.method public setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    .line 707
    if-gez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    .line 711
    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 813
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 814
    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 840
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 841
    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 826
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 827
    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 797
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 798
    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 961
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    .line 962
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 904
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 905
    return-object p0
.end method

.method public setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 691
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    .line 692
    return-object p0
.end method

.method public setUniqueIdIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "uniqueIdIncluded"    # Z

    .prologue
    .line 1094
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    .line 1095
    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 1003
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    .line 1004
    return-object p0
.end method

.method public setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "remainsValid"    # Z

    .prologue
    .line 1117
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 1118
    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 1045
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 1046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 1049
    return-object p0
.end method

.class public Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p3, "userId"    # I

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 273
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 274
    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    .line 271
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    return v0
.end method

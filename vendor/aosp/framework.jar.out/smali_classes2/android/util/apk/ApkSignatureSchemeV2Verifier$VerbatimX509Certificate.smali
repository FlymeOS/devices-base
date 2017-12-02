.class Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;
.super Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerbatimX509Certificate"
.end annotation


# instance fields
.field private encodedVerbatim:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;
    .param p2, "encodedVerbatim"    # [B

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1133
    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;->encodedVerbatim:[B

    .line 1131
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;->encodedVerbatim:[B

    return-object v0
.end method

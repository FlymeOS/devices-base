.class public Landroid/security/net/config/TrustedCertificateStoreAdapter;
.super Lcom/android/org/conscrypt/TrustedCertificateStore;
.source "TrustedCertificateStoreAdapter.java"


# instance fields
.field private final mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/security/net/config/NetworkSecurityConfig;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 31
    return-void
.end method


# virtual methods
.method public aliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public allSystemAliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 38
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_0

    .line 39
    return-object v2

    .line 41
    :cond_0
    iget-object v1, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 52
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_0

    .line 53
    return-object v2

    .line 55
    :cond_0
    iget-object v1, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 61
    iget-object v1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 62
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_0
    iget-boolean v1, v0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return v1
.end method

.method public userAliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

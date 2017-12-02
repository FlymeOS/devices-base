.class public Landroid/security/net/config/ResourceCertificateSource;
.super Ljava/lang/Object;
.source "ResourceCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mLock:Ljava/lang/Object;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    .line 46
    iput p1, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    .line 47
    iput-object p2, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private ensureInitialized()V
    .locals 13

    .prologue
    .line 51
    iget-object v10, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 52
    :try_start_0
    iget-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    monitor-exit v10

    .line 53
    return-void

    .line 55
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .local v3, "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    .line 59
    .local v7, "in":Ljava/io/InputStream;
    :try_start_2
    const-string/jumbo v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 60
    .local v6, "factory":Ljava/security/cert/CertificateFactory;
    iget-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v11, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 61
    .local v7, "in":Ljava/io/InputStream;
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 66
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 68
    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    .line 69
    .local v8, "indexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 70
    .local v1, "cert":Ljava/security/cert/Certificate;
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v8, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 51
    .end local v2    # "cert$iterator":Ljava/util/Iterator;
    .end local v3    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "indexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 62
    .restart local v3    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v5

    .line 63
    .local v5, "e":Ljava/security/cert/CertificateException;
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to load trust anchors from id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catchall_1
    move-exception v9

    .line 66
    :try_start_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 65
    throw v9

    .line 73
    .restart local v2    # "cert$iterator":Ljava/util/Iterator;
    .restart local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .restart local v6    # "factory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "indexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_1
    iput-object v3, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    .line 74
    iput-object v8, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 75
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v10

    .line 50
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 5
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
    .line 107
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 108
    iget-object v4, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v4, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    .line 109
    .local v2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 112
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 113
    .local v3, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 114
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    return-object v3
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 98
    iget-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 99
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_0

    .line 100
    return-object v2

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 88
    iget-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 89
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_0

    .line 90
    return-object v2

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 82
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.class Landroid/security/net/config/DirectoryCertificateSource$1;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/DirectoryCertificateSource$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/net/config/DirectoryCertificateSource;

.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/security/net/config/DirectoryCertificateSource;
    .param p2, "val$cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource$1;->this$0:Landroid/security/net/config/DirectoryCertificateSource;

    iput-object p2, p0, Landroid/security/net/config/DirectoryCertificateSource$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

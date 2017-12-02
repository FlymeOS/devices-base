.class public final Landroid/security/net/config/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final overridesPins:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "overridesPins"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    .line 31
    iput-boolean p2, p0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    .line 26
    return-void
.end method

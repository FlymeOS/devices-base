.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final subdomainsIncluded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "subdomainsIncluded"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Hostname must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-ne p1, p0, :cond_0

    .line 48
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_0
    instance-of v2, p1, Landroid/security/net/config/Domain;

    if-nez v2, :cond_1

    .line 51
    return v1

    :cond_1
    move-object v0, p1

    .line 53
    nop

    nop

    .line 54
    .local v0, "otherDomain":Landroid/security/net/config/Domain;
    iget-boolean v2, v0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    iget-boolean v3, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-ne v2, v3, :cond_2

    .line 55
    iget-object v1, v0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iget-object v2, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-boolean v0, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationConfigForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/security/net/config/ApplicationConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, v0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "source":Landroid/security/net/config/ManifestConfigSource;
    new-instance v2, Landroid/security/net/config/ApplicationConfig;

    invoke-direct {v2, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    return-object v2
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public handleTrustStorageUpdate()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->handleTrustStorageUpdate()V

    .line 101
    return-void
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 1
    .param p1, "permitted"    # Z

    .prologue
    .line 92
    new-instance v0, Landroid/security/FrameworkNetworkSecurityPolicy;

    invoke-direct {v0, p1}, Landroid/security/FrameworkNetworkSecurityPolicy;-><init>(Z)V

    .line 93
    .local v0, "policy":Landroid/security/FrameworkNetworkSecurityPolicy;
    invoke-static {v0}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 91
    return-void
.end method

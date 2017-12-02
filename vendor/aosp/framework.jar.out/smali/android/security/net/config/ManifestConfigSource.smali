.class public Landroid/security/net/config/ManifestConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSecurityConfig"


# instance fields
.field private final mApplicationInfoFlags:I

.field private final mConfigResourceId:I

.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    .line 43
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 44
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 38
    return-void
.end method

.method private getConfigSource()Landroid/security/net/config/ConfigSource;
    .locals 8

    .prologue
    .line 58
    iget-object v4, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 59
    :try_start_0
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 64
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    if-eqz v3, :cond_2

    .line 65
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 67
    .local v0, "debugBuild":Z
    :goto_0
    const-string/jumbo v3, "NetworkSecurityConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Using Network Security Config from resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    iget-object v6, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 69
    const-string/jumbo v6, " debugBuild: "

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/security/net/config/XmlConfigSource;

    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 72
    iget v6, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 71
    invoke-direct {v1, v3, v5, v0, v6}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZI)V

    .line 81
    .end local v0    # "debugBuild":Z
    .local v1, "source":Landroid/security/net/config/ConfigSource;
    :goto_1
    iput-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 82
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v3

    .line 65
    .end local v1    # "source":Landroid/security/net/config/ConfigSource;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "debugBuild":Z
    goto :goto_0

    .line 75
    .end local v0    # "debugBuild":Z
    :cond_2
    :try_start_2
    const-string/jumbo v3, "NetworkSecurityConfig"

    const-string/jumbo v5, "No Network Security Config specified, using platform default"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 79
    .local v2, "usesCleartextTraffic":Z
    :goto_2
    new-instance v1, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;

    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    invoke-direct {v1, v2, v3}, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;-><init>(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "source":Landroid/security/net/config/ConfigSource;
    goto :goto_1

    .line 78
    .end local v1    # "source":Landroid/security/net/config/ConfigSource;
    .end local v2    # "usesCleartextTraffic":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "usesCleartextTraffic":Z
    goto :goto_2

    .line 58
    .end local v2    # "usesCleartextTraffic":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

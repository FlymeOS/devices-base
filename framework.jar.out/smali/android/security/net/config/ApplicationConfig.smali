.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/security/net/config/ConfigSource;)V
    .locals 1
    .param p1, "configSource"    # Landroid/security/net/config/ConfigSource;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 45
    return-void
.end method

.method private ensureInitialized()V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 167
    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 170
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 172
    new-instance v0, Landroid/security/net/config/RootTrustManager;

    invoke-direct {v0, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .locals 2
    .param p0, "config"    # Landroid/security/net/config/ApplicationConfig;

    .prologue
    .line 178
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 177
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x2e

    .line 71
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-nez v5, :cond_1

    .line 73
    :cond_0
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5

    .line 75
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "hostname must not begin with a ."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_3
    const/4 v0, 0x0

    .line 89
    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 90
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/Domain;

    .line 91
    .local v2, "domain":Landroid/security/net/config/Domain;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    .line 93
    .local v1, "config":Landroid/security/net/config/NetworkSecurityConfig;
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    return-object v1

    .line 98
    :cond_5
    iget-boolean v5, v2, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v5, :cond_4

    .line 99
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    .line 101
    if-nez v0, :cond_6

    .line 102
    move-object v0, v3

    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    goto :goto_0

    .line 103
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_6
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/Domain;

    iget-object v5, v5, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v6, v5, :cond_4

    .line 104
    move-object v0, v3

    .restart local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    goto :goto_0

    .line 108
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    .end local v2    # "domain":Landroid/security/net/config/Domain;
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_7
    if-eqz v0, :cond_8

    .line 109
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5

    .line 112
    :cond_8
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 121
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 152
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 153
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 155
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 156
    .local v2, "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 157
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    goto :goto_0

    .line 150
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_1
    return-void
.end method

.method public hasPerDomainConfigs()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 55
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 131
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 133
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    return v2

    .line 139
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    return v2
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

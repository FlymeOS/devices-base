.class public Lcom/android/server/wifi/WifiCertManager;
.super Ljava/lang/Object;
.source "WifiCertManager.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String;

.field private static final SEP:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "WifiCertManager"


# instance fields
.field private final mAffiliatedUserOnlyCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigFile:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/affiliatedcerts.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/wifi/WifiCertManager;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configFile"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    .line 55
    new-instance v3, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v3}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/WifiCertManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->readConfigFile()[B

    move-result-object v0

    .line 66
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 73
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    .line 62
    :cond_2
    return-void
.end method

.method private writeConfig()V
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 109
    .local v1, "values":[Ljava/lang/String;
    const-string/jumbo v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "value":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiCertManager;->writeConfigFile([B)V

    .line 106
    return-void
.end method


# virtual methods
.method public hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCertManager;->writeConfig()V

    .line 83
    :cond_0
    return-void
.end method

.method protected isAffiliatedUser()Z
    .locals 5

    .prologue
    .line 147
    const-string/jumbo v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 146
    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 148
    .local v1, "pm":Landroid/app/admin/IDevicePolicyManager;
    const/4 v2, 0x0

    .line 150
    .local v2, "result":Z
    :try_start_0
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 154
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 151
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiCertManager"

    const-string/jumbo v4, "failed to check user affiliation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected listClientCertsForAllUsers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "USRPKEY_"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listClientCertsForCurrentUser()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v2, "results":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForAllUsers()[Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCertManager;->isAffiliatedUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    return-object v1

    .line 98
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 99
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiCertManager;->mAffiliatedUserOnlyCerts:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected readConfigFile()[B
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 118
    .local v4, "fileSize":J
    :goto_0
    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 120
    :cond_0
    return-object v0

    .end local v4    # "fileSize":J
    :cond_1
    move-wide v4, v6

    .line 117
    goto :goto_0

    .line 123
    .restart local v4    # "fileSize":J
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 124
    .local v0, "bytes":[B
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    .local v3, "stream":Ljava/io/DataInputStream;
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/DataInputStream;
    .end local v4    # "fileSize":J
    :goto_1
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "WifiCertManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readConfigFile: failed to read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected writeConfigFile([B)V
    .locals 4
    .param p1, "payload"    # [B

    .prologue
    .line 133
    move-object v0, p1

    .line 134
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiCertManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    iget-object v2, p0, Lcom/android/server/wifi/WifiCertManager;->mConfigFile:Ljava/lang/String;

    new-instance v3, Lcom/android/server/wifi/WifiCertManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/WifiCertManager$1;-><init>(Lcom/android/server/wifi/WifiCertManager;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 132
    return-void
.end method

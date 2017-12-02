.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# static fields
.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mAllowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApConfigFile:Ljava/lang/String;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mContext:Landroid/content/Context;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p3, "apConfigFile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 51
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 66
    iput-object p3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    const v4, 0x1040039

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string/jumbo v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2G band allowed channels are:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v0, :cond_0

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 74
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 76
    .local v2, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 82
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 84
    const-string/jumbo v3, "WifiApConfigStore"

    const-string/jumbo v4, "Fallback to use default AP configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 88
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 63
    :cond_1
    return-void
.end method

.method private getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    .line 192
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 193
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    const v3, 0x10403f2

    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 195
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 196
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 199
    return-object v0
.end method

.method private static loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 128
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    .line 130
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .end local v4    # "in":Ljava/io/DataInputStream;
    move-result v6

    .line 133
    .local v6, "version":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-eq v6, v9, :cond_1

    .line 134
    const-string/jumbo v7, "WifiApConfigStore"

    const-string/jumbo v8, "Bad version on hotspot configuration file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    if-eqz v5, :cond_0

    .line 155
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-object v10

    .line 156
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 139
    if-lt v6, v9, :cond_2

    .line 140
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 141
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 144
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 145
    .local v0, "authType":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    .line 146
    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    :cond_3
    if-eqz v5, :cond_4

    .line 155
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_1
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 161
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    :cond_5
    :goto_2
    return-object v1

    .line 156
    .restart local v0    # "authType":I
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :catch_1
    move-exception v3

    .line 157
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 150
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading hotspot configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    const/4 v1, 0x0

    .line 153
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_5

    .line 155
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 156
    :catch_3
    move-exception v3

    .line 157
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 153
    :goto_4
    if-eqz v4, :cond_6

    .line 155
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 152
    :cond_6
    :goto_5
    throw v7

    .line 156
    :catch_4
    move-exception v3

    .line 157
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing hotspot configuration during read"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 152
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 149
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3
.end method

.method private static writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x0

    .line 169
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 170
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 173
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 174
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 175
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 176
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 182
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 180
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 181
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_1
    const-string/jumbo v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 182
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0    # "authType":I
    .local v2, "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 180
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public getAllowed2GChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    monitor-enter p0

    .line 106
    if-nez p1, :cond_0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 105
    return-void

    .line 109
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

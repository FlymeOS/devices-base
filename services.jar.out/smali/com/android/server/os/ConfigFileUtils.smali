.class Lcom/android/server/os/ConfigFileUtils;
.super Ljava/lang/Object;
.source "ConfigFileUtils.java"


# static fields
.field static final CURRENT_HASHCODE_MAX:I = 0x8

.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_app_config.conf"

.field private static final ENABLED_PERF_NODE_NUMBER:Ljava/lang/String; = "EnabledPerfNodeNumber"

.field private static final PROP_KEY_DEVICE_IDENTIFY_COMMON:Ljava/lang/String; = "ro.product.model"

.field private static final PROP_KEY_DEVICE_IDENTIFY_FLYME:Ljava/lang/String; = "ro.product.flyme.model"

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field static final TIME_OUT_REMOVE:Ljava/lang/String; = "0"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_app_config.conf"

.field private static mBusNode:Ljava/io/FileOutputStream;

.field private static mCpuNode:Ljava/io/FileOutputStream;

.field private static mGpuNode:Ljava/io/FileOutputStream;

.field private static mIONode:Ljava/io/FileOutputStream;

.field private static mMemNode:Ljava/io/FileOutputStream;

.field private static sBoostNameList:Ljava/util/ArrayList;

.field static sCurrentPerfNodeMax:I

.field private static sPerfNodes:[Ljava/lang/String;

.field static sPerfNodesStream:[Ljava/io/FileOutputStream;

.field private static sWhiteListProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 30
    sput v3, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "/sys/srs/srs_cpulevel"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "/sys/srs/srs_gpulevel"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "/sys/srs/srs_buslevel"

    aput-object v1, v0, v3

    .line 43
    const-string/jumbo v1, "/sys/srs/srs_iolevel"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "/sys/srs/srs_memlevel"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    return-object v2

    .line 100
    :cond_0
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "config":Ljava/lang/String;
    return-object v0

    .line 105
    .end local v0    # "config":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method static getFlymeModelString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    const-string/jumbo v1, "ro.product.flyme.model"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "devicesModel":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    return-object v0

    .line 148
    :cond_0
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    return-object v0

    .line 152
    :cond_1
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method static isAppNeedBoost(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 119
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v2, :cond_3

    .line 120
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return v4

    .line 125
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 126
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "tempPackageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 130
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2, p0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    :cond_1
    return v4

    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    .end local v1    # "tempPackageName":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method static loadDataFromFile()V
    .locals 6

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, "mConfigFile":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "/data/system/perf_intelligent_app_config.conf"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "boostConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    .end local v0    # "boostConfigFile":Ljava/io/File;
    const-string/jumbo v5, "/system/etc/perf_intelligent_app_config.conf"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v4, "mConfigFile":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v5, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 69
    sget-object v5, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    if-eqz v4, :cond_1

    .line 74
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v3, v4

    .line 82
    .end local v0    # "boostConfigFile":Ljava/io/File;
    .end local v4    # "mConfigFile":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string/jumbo v5, "EnabledPerfNodeNumber"

    invoke-static {v5}, Lcom/android/server/os/ConfigFileUtils;->getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "enabledPerfNodeNumber":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/os/ConfigFileUtils;->sCurrentPerfNodeMax:I

    .line 60
    :cond_3
    return-void

    .line 76
    .end local v2    # "enabledPerfNodeNumber":Ljava/lang/String;
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    .restart local v4    # "mConfigFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "boostConfigFile":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 73
    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_2

    .line 74
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 76
    :catch_2
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    .line 73
    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_4

    .line 74
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    throw v5

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    .restart local v4    # "mConfigFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "mConfigFile":Ljava/io/FileInputStream;
    .local v3, "mConfigFile":Ljava/io/FileInputStream;
    goto :goto_3

    .line 70
    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v4    # "mConfigFile":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method static reloadAppBoostConfig()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 111
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    :goto_0
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->loadDataFromFile()V

    .line 108
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    goto :goto_0
.end method

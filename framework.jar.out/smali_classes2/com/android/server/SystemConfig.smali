.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field private static final ALLOW_ALL:I = -0x1

.field private static final ALLOW_APP_CONFIGS:I = 0x8

.field private static final ALLOW_FEATURES:I = 0x1

.field private static final ALLOW_LIBS:I = 0x2

.field private static final ALLOW_PERMISSIONS:I = 0x4

.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInDataUsageSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackupTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultVrComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSystemUserBlacklistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemUserWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 81
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 101
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 105
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 109
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 113
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 116
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    .line 119
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    .line 122
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 125
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 130
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 129
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 200
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 199
    new-array v2, v6, [Ljava/lang/String;

    .line 200
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 199
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 203
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 202
    new-array v2, v6, [Ljava/lang/String;

    .line 203
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 202
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 205
    const/16 v0, 0xb

    .line 207
    .local v0, "odmPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .line 206
    new-array v2, v6, [Ljava/lang/String;

    .line 207
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 206
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 209
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .line 208
    new-array v2, v6, [Ljava/lang/String;

    .line 209
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 208
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 212
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .line 211
    new-array v2, v6, [Ljava/lang/String;

    .line 212
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 211
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 214
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    .line 214
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 213
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 197
    return-void
.end method

.method private addFeature(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 537
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_0

    .line 538
    new-instance v0, Landroid/content/pm/FeatureInfo;

    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 539
    .restart local v0    # "fi":Landroid/content/pm/FeatureInfo;
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 540
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 541
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :goto_0
    return-void

    .line 543
    :cond_0
    iget v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    .prologue
    .line 133
    const-class v1, Lcom/android/server/SystemConfig;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/server/SystemConfig;

    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;I)V
    .locals 39
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    .prologue
    .line 258
    const/16 v29, 0x0

    .line 260
    .local v29, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v29, Ljava/io/FileReader;

    .end local v29    # "permReader":Ljava/io/FileReader;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    .local v29, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v24

    .line 269
    .local v24, "lowRam":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 270
    .local v27, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 273
    :cond_0
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v33

    .local v33, "type":I
    const/16 v36, 0x2

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 274
    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 278
    :cond_1
    const/16 v36, 0x2

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    .line 279
    new-instance v36, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v37, "No start tag found"

    invoke-direct/range {v36 .. v37}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catch_0
    move-exception v15

    .line 516
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v36, "SystemConfig"

    const-string/jumbo v37, "Got exception parsing permissions."

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 525
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 526
    const-string/jumbo v36, "android.software.file_based_encryption"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 527
    const-string/jumbo v36, "android.software.securely_removes_users"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 530
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "featureName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_35

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 531
    .local v16, "featureName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v16    # "featureName":Ljava/lang/String;
    .end local v17    # "featureName$iterator":Ljava/util/Iterator;
    .end local v24    # "lowRam":Z
    .end local v29    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v13

    .line 262
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 282
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v24    # "lowRam":Z
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "permReader":Ljava/io/FileReader;
    .restart local v33    # "type":I
    :cond_3
    :try_start_3
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "permissions"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_4

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "config"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 287
    :cond_4
    const/16 v36, -0x1

    move/from16 v0, p2

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const/4 v3, 0x1

    .line 288
    .local v3, "allowAll":Z
    :goto_2
    and-int/lit8 v36, p2, 0x2

    if-eqz v36, :cond_7

    const/4 v6, 0x1

    .line 289
    .local v6, "allowLibs":Z
    :goto_3
    and-int/lit8 v36, p2, 0x1

    if-eqz v36, :cond_8

    const/4 v5, 0x1

    .line 290
    .local v5, "allowFeatures":Z
    :goto_4
    and-int/lit8 v36, p2, 0x4

    if-eqz v36, :cond_9

    const/4 v7, 0x1

    .line 291
    .local v7, "allowPermissions":Z
    :goto_5
    and-int/lit8 v36, p2, 0x8

    if-eqz v36, :cond_a

    const/4 v4, 0x1

    .line 293
    .local v4, "allowAppConfigs":Z
    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 294
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 283
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    :cond_5
    :try_start_4
    new-instance v36, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Unexpected start tag in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 284
    const-string/jumbo v38, ": found "

    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 284
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v38

    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 284
    const-string/jumbo v38, ", expected \'permissions\' or \'config\'"

    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 517
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catch_2
    move-exception v14

    .line 518
    .local v14, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v36, "SystemConfig"

    const-string/jumbo v37, "Got exception parsing permissions."

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 287
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "type":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "allowAll":Z
    goto :goto_2

    .line 288
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "allowLibs":Z
    goto :goto_3

    .line 289
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "allowFeatures":Z
    goto :goto_4

    .line 290
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "allowPermissions":Z
    goto :goto_5

    .line 291
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "allowAppConfigs":Z
    goto :goto_6

    .line 298
    :cond_b
    :try_start_6
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 299
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v36, "group"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    if-eqz v3, :cond_d

    .line 300
    const-string/jumbo v36, "gid"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 301
    .local v21, "gidStr":Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 302
    invoke-static/range {v21 .. v21}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v20

    .line 303
    .local v20, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 309
    .end local v20    # "gid":I
    :goto_7
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 519
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v21    # "gidStr":Ljava/lang/String;
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catchall_0
    move-exception v36

    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    throw v36

    .line 305
    .restart local v3    # "allowAll":Z
    .restart local v4    # "allowAppConfigs":Z
    .restart local v5    # "allowFeatures":Z
    .restart local v6    # "allowLibs":Z
    .restart local v7    # "allowPermissions":Z
    .restart local v21    # "gidStr":Ljava/lang/String;
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "type":I
    :cond_c
    :try_start_7
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<group> without gid in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 306
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 305
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 311
    .end local v21    # "gidStr":Ljava/lang/String;
    :cond_d
    const-string/jumbo v36, "permission"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    if-eqz v7, :cond_f

    .line 312
    const-string/jumbo v36, "name"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 313
    .local v28, "perm":Ljava/lang/String;
    if-nez v28, :cond_e

    .line 314
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<permission> without name in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 315
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 314
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 319
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v28

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 322
    .end local v28    # "perm":Ljava/lang/String;
    :cond_f
    const-string/jumbo v36, "assign-permission"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    if-eqz v7, :cond_14

    .line 323
    const-string/jumbo v36, "name"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 324
    .restart local v28    # "perm":Ljava/lang/String;
    if-nez v28, :cond_10

    .line 325
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<assign-permission> without name in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 326
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 325
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 330
    :cond_10
    const-string/jumbo v36, "uid"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 331
    .local v35, "uidStr":Ljava/lang/String;
    if-nez v35, :cond_11

    .line 332
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<assign-permission> without uid in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 333
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 332
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 337
    :cond_11
    invoke-static/range {v35 .. v35}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v34

    .line 338
    .local v34, "uid":I
    if-gez v34, :cond_12

    .line 339
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 340
    const-string/jumbo v38, "  in "

    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 340
    const-string/jumbo v38, " at "

    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 341
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 345
    :cond_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v28

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/util/ArraySet;

    .line 347
    .local v30, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v30, :cond_13

    .line 348
    new-instance v30, Landroid/util/ArraySet;

    .end local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 349
    .restart local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v34

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    :cond_13
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 354
    .end local v28    # "perm":Ljava/lang/String;
    .end local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v34    # "uid":I
    .end local v35    # "uidStr":Ljava/lang/String;
    :cond_14
    const-string/jumbo v36, "library"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_17

    if-eqz v6, :cond_17

    .line 355
    const-string/jumbo v36, "name"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 356
    .local v23, "lname":Ljava/lang/String;
    const-string/jumbo v36, "file"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 357
    .local v22, "lfile":Ljava/lang/String;
    if-nez v23, :cond_15

    .line 358
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<library> without name in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 359
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 358
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_8
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 360
    :cond_15
    if-nez v22, :cond_16

    .line 361
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<library> without file in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 362
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 361
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 365
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 370
    .end local v22    # "lfile":Ljava/lang/String;
    .end local v23    # "lname":Ljava/lang/String;
    :cond_17
    const-string/jumbo v36, "feature"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1c

    if-eqz v5, :cond_1c

    .line 371
    const-string/jumbo v36, "name"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 372
    .local v18, "fname":Ljava/lang/String;
    const-string/jumbo v36, "version"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 374
    .local v19, "fversion":I
    if-nez v24, :cond_19

    .line 375
    const/4 v8, 0x1

    .line 380
    .local v8, "allowed":Z
    :goto_9
    if-nez v18, :cond_1b

    .line 381
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<feature> without name in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 382
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 381
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_18
    :goto_a
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 377
    .end local v8    # "allowed":Z
    :cond_19
    const-string/jumbo v36, "notLowRam"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 378
    .local v26, "notLowRam":Ljava/lang/String;
    const-string/jumbo v36, "true"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    const/4 v8, 0x0

    .restart local v8    # "allowed":Z
    goto :goto_9

    .end local v8    # "allowed":Z
    :cond_1a
    const/4 v8, 0x1

    .restart local v8    # "allowed":Z
    goto :goto_9

    .line 383
    .end local v26    # "notLowRam":Ljava/lang/String;
    :cond_1b
    if-eqz v8, :cond_18

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_a

    .line 389
    .end local v8    # "allowed":Z
    .end local v18    # "fname":Ljava/lang/String;
    .end local v19    # "fversion":I
    :cond_1c
    const-string/jumbo v36, "unavailable-feature"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1e

    if-eqz v5, :cond_1e

    .line 390
    const-string/jumbo v36, "name"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 391
    .restart local v18    # "fname":Ljava/lang/String;
    if-nez v18, :cond_1d

    .line 392
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<unavailable-feature> without name in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 393
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 392
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_b
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 395
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 400
    .end local v18    # "fname":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v36, "allow-in-power-save-except-idle"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20

    if-eqz v3, :cond_20

    .line 401
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 402
    .local v31, "pkgname":Ljava/lang/String;
    if-nez v31, :cond_1f

    .line 403
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<allow-in-power-save-except-idle> without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 404
    const-string/jumbo v38, " at "

    .line 403
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 404
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 403
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_c
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 406
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 411
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_20
    const-string/jumbo v36, "allow-in-power-save"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_22

    if-eqz v3, :cond_22

    .line 412
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 413
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_21

    .line 414
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<allow-in-power-save> without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 415
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 414
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_d
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 417
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 422
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_22
    const-string/jumbo v36, "allow-in-data-usage-save"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_24

    if-eqz v3, :cond_24

    .line 423
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 424
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_23

    .line 425
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<allow-in-data-usage-save> without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 426
    const-string/jumbo v38, " at "

    .line 425
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 426
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 425
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_e
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 428
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 433
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_24
    const-string/jumbo v36, "app-link"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_26

    if-eqz v4, :cond_26

    .line 434
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 435
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_25

    .line 436
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<app-link> without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 437
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 436
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_f
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 439
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 442
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_26
    const-string/jumbo v36, "system-user-whitelisted-app"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_28

    if-eqz v4, :cond_28

    .line 443
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 444
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_27

    .line 445
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<system-user-whitelisted-app> without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 446
    const-string/jumbo v38, " at "

    .line 445
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 446
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 445
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_10
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 448
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 451
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_28
    const-string/jumbo v36, "system-user-blacklisted-app"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2a

    if-eqz v4, :cond_2a

    .line 452
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 453
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_29

    .line 454
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<system-user-blacklisted-app without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 455
    const-string/jumbo v38, " at "

    .line 454
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 455
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 454
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_11
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 457
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 460
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v36, "default-enabled-vr-app"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2d

    if-eqz v4, :cond_2d

    .line 461
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 462
    .restart local v31    # "pkgname":Ljava/lang/String;
    const-string/jumbo v36, "class"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 463
    .local v11, "clsname":Ljava/lang/String;
    if-nez v31, :cond_2b

    .line 464
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<default-enabled-vr-app without package in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 465
    const-string/jumbo v38, " at "

    .line 464
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 465
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 464
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_12
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 466
    :cond_2b
    if-nez v11, :cond_2c

    .line 467
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<default-enabled-vr-app without class in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 468
    const-string/jumbo v38, " at "

    .line 467
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 468
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 467
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 470
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    new-instance v37, Landroid/content/ComponentName;

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 473
    .end local v11    # "clsname":Ljava/lang/String;
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v36, "backup-transport-whitelisted-service"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_30

    if-eqz v5, :cond_30

    .line 474
    const-string/jumbo v36, "service"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 475
    .local v32, "serviceName":Ljava/lang/String;
    if-nez v32, :cond_2e

    .line 476
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<backup-transport-whitelisted-service> without service in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 477
    const-string/jumbo v38, " at "

    .line 476
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 477
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 476
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_13
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 479
    :cond_2e
    invoke-static/range {v32 .. v32}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 480
    .local v12, "cn":Landroid/content/ComponentName;
    if-nez v12, :cond_2f

    .line 481
    const-string/jumbo v36, "SystemConfig"

    .line 482
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<backup-transport-whitelisted-service> with invalid service name "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 483
    const-string/jumbo v38, " in "

    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 484
    const-string/jumbo v38, " at "

    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 484
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 481
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 486
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 490
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v32    # "serviceName":Ljava/lang/String;
    :cond_30
    const-string/jumbo v36, "disabled-until-used-preinstalled-carrier-associated-app"

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_34

    if-eqz v4, :cond_34

    .line 492
    const-string/jumbo v36, "package"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 493
    .restart local v31    # "pkgname":Ljava/lang/String;
    const-string/jumbo v36, "carrierAppPackage"

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "carrierPkgname":Ljava/lang/String;
    if-eqz v31, :cond_31

    if-nez v10, :cond_32

    .line 495
    :cond_31
    const-string/jumbo v36, "SystemConfig"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<disabled-until-used-preinstalled-carrier-associated-app without package or carrierAppPackage in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 496
    const-string/jumbo v38, " at "

    .line 495
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 497
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v38

    .line 495
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_14
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 500
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 502
    .local v9, "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_33

    .line 503
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .restart local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_33
    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 511
    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "carrierPkgname":Ljava/lang/String;
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_34
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 257
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    .restart local v17    # "featureName$iterator":Ljava/util/Iterator;
    :cond_35
    return-void
.end method

.method private removeFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    const-string/jumbo v0, "SystemConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removed unavailable feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowInDataUsageSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAvailableFeatures()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getBackupTransportWhitelist()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDefaultVrComponents()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getGlobalGids()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    return-object v0
.end method

.method public getLinkedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSystemUserBlacklistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSystemUserWhitelistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 555
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 556
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate permission definition for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 559
    :cond_0
    const-string/jumbo v7, "perUser"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    .line 560
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 561
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 565
    .local v2, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 566
    if-ne v6, v10, :cond_2

    .line 567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_5

    .line 568
    :cond_2
    if-eq v6, v10, :cond_1

    .line 569
    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    .line 573
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 575
    const-string/jumbo v7, "gid"

    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 577
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    .line 578
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 584
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 580
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "SystemConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<group> without gid at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    .line 580
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions(Ljava/io/File;I)V
    .locals 8
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    const-string/jumbo v2, "SystemConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot be read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 220
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 221
    const-string/jumbo v2, "SystemConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void

    .line 231
    :cond_2
    const/4 v1, 0x0

    .line 232
    .local v1, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    .end local v1    # "platformFile":Ljava/io/File;
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 234
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "etc/permissions/platform.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    move-object v1, v0

    .line 232
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 240
    const-string/jumbo v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_5

    .line 244
    const-string/jumbo v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    goto :goto_1

    .line 252
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    if-eqz v1, :cond_7

    .line 253
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    .line 217
    :cond_7
    return-void
.end method

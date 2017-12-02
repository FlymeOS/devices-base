.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# static fields
.field public static final APP_CACHES_KEY:Ljava/lang/String; = "cacheSizes"

.field public static final APP_CACHE_AGG_KEY:Ljava/lang/String; = "cacheSize"

.field public static final APP_SIZES_KEY:Ljava/lang/String; = "appSizes"

.field public static final APP_SIZE_AGG_KEY:Ljava/lang/String; = "appSize"

.field public static final AUDIO_KEY:Ljava/lang/String; = "audioSize"

.field public static final DOWNLOADS_KEY:Ljava/lang/String; = "downloadsSize"

.field public static final LAST_QUERY_TIMESTAMP_KEY:Ljava/lang/String; = "queryTime"

.field public static final MISC_KEY:Ljava/lang/String; = "otherSize"

.field public static final PACKAGE_NAMES_KEY:Ljava/lang/String; = "packageNames"

.field public static final PHOTOS_KEY:Ljava/lang/String; = "photosSize"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "systemSize"

.field private static final TAG:Ljava/lang/String; = "DiskStatsLogger"

.field public static final VIDEOS_KEY:Ljava/lang/String; = "videosSize"


# instance fields
.field private mDownloadsSize:J

.field private mPackageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field private mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 2
    .param p1, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p2, "downloadsResult"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p4, "systemSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageStats;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 75
    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 76
    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 77
    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    .line 73
    return-void
.end method

.method private addAppsToJson(Lorg/json/JSONObject;)V
    .locals 22
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v15, "names":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 116
    .local v4, "appSizeList":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v5, "cacheSizeList":Lorg/json/JSONArray;
    const-wide/16 v6, 0x0

    .line 119
    .local v6, "appSizeSum":J
    const-wide/16 v10, 0x0

    .line 120
    .local v10, "cacheSizeSum":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v14

    .line 121
    .local v14, "isExternal":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->mergePackagesAcrossUsers()Landroid/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 122
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageStats;

    .line 123
    .local v16, "stat":Landroid/content/pm/PackageStats;
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v20, v0

    add-long v2, v18, v20

    .line 124
    .local v2, "appSize":J
    move-object/from16 v0, v16

    iget-wide v8, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 125
    .local v8, "cacheSize":J
    if-eqz v14, :cond_0

    .line 126
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 127
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 129
    :cond_0
    add-long/2addr v6, v2

    .line 130
    add-long/2addr v10, v8

    .line 132
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 134
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0

    .line 136
    .end local v2    # "appSize":J
    .end local v8    # "cacheSize":J
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    .end local v16    # "stat":Landroid/content/pm/PackageStats;
    :cond_1
    const-string/jumbo v17, "packageNames"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v17, "appSizes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v17, "cacheSizes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v17, "appSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v17, "cacheSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    return-void
.end method

.method private getJsonRepresentation()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "photosSize"

    iget-object v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v4, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v2, "videosSize"

    iget-object v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v4, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "audioSize"

    iget-object v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v4, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "downloadsSize"

    iget-wide v4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "systemSize"

    iget-wide v4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "otherSize"

    iget-object v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v4, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    invoke-direct {p0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "DiskStatsLogger"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x0

    return-object v2
.end method

.method private mergePackagesAcrossUsers()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 151
    .local v1, "packageMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageStats;>;"
    iget-object v4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stat$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    .line 152
    .local v2, "stat":Landroid/content/pm/PackageStats;
    iget-object v4, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageStats;

    .line 153
    .local v0, "existingStats":Landroid/content/pm/PackageStats;
    if-eqz v0, :cond_0

    .line 154
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 155
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 156
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 157
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 158
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 159
    iget-wide v4, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_0

    .line 161
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/content/pm/PackageStats;

    invoke-direct {v5, v2}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    .end local v0    # "existingStats":Landroid/content/pm/PackageStats;
    .end local v2    # "stat":Landroid/content/pm/PackageStats;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public dumpToFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 87
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    .local v1, "representation":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 85
    return-void
.end method

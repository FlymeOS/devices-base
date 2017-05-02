.class Lcom/android/server/am/MemoryFragmentOptimizer;
.super Ljava/lang/Object;
.source "MemoryFragmentOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;
    }
.end annotation


# static fields
.field private static final CLEAN_CACHED_PROCESS_CMD:I = 0x1

.field private static final CONTROL_OF_APP:Z

.field private static final CONTROL_OF_PAS:Z

.field private static final DEBUG:Z

.field private static final ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

.field static final EXT_FRAGMENT_INDEX_PATH:Ljava/lang/String; = "/sys/kernel/debug/extfrag/unusable_index"

.field private static final KILL_CACHED_PROCESS_CMD:I = 0x0

.field static final LMK_OOM_LEVEL_PATH:Ljava/lang/String; = "/system/etc/lmk_oom_level.conf"

.field static final MFO_TAG:Ljava/lang/String; = "MemFragOpt"

.field private static final PAGE_COMPACTION:C = '\u0001'

.field private static final PAGE_SHRINK_HIGH_LEVEL:C = '\u0008'

.field private static final PAGE_SHRINK_LOW_LEVEL:C = '\u0002'

.field private static final PAGE_SHRINK_MED_LEVEL:C = '\u0004'

.field static final PAS_DRIVER_PATH:Ljava/lang/String; = "/proc/pas_alloc_stat"

.field private static final SIZE_OF_FRAG_LEVEL:I = 0x3

.field private static final SIZE_OF_FRAG_LEVEL_RECORDS:I = 0x1e


# instance fields
.field private final HIGH_LEVEL:I

.field private final KILL_PROCESS_SKIP_SIZE:I

.field private final LOW_LEVEL:I

.field private final MED_LEVEL:I

.field private final PROCESS_DUARATION_INTERNAL:J

.field private final defaultInterval:Ljava/lang/Integer;

.field private mCurIndex:I

.field private mFragLevelRecords:[I

.field private mHasPASnode:Z

.field private mLastCleanProcessTime:J

.field private mMfo_frag_array:[I

.field private mMfo_level_array:[I

.field private mPasFileWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "persist.perf.mfo.switch"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

    .line 53
    const-string/jumbo v0, "persist.perf.mfo.debug"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    .line 55
    const-string/jumbo v0, "persist.perf.mfo.app.ctl"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_APP:Z

    .line 57
    const-string/jumbo v0, "persist.perf.mfo.pas.ctl"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_PAS:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x50

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const v0, 0xafc80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->defaultInterval:Ljava/lang/Integer;

    .line 61
    const-string/jumbo v0, "persist.perf.mfo.interval"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->defaultInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->KILL_PROCESS_SKIP_SIZE:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    .line 66
    iput-boolean v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    .line 69
    iput v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 72
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    .line 74
    iput v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->HIGH_LEVEL:I

    .line 75
    iput v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->MED_LEVEL:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->LOW_LEVEL:I

    .line 78
    const/16 v0, 0x60

    const/16 v1, 0x59

    const/16 v2, 0x56

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    .line 79
    filled-new-array {v3, v3, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    .line 133
    const-string/jumbo v0, "mfo_frag_array"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->updatePropertiesFromConfiguration(Ljava/lang/String;[I)V

    .line 134
    const-string/jumbo v0, "mfo_level_array"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->updatePropertiesFromConfiguration(Ljava/lang/String;[I)V

    .line 132
    return-void
.end method

.method private fragmentDistribSatisfyLevel(II)Z
    .locals 9
    .param p1, "watermark"    # I
    .param p2, "level"    # I

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "satifyWMark":Z
    const/4 v3, 0x0

    .line 351
    .local v3, "satisfyTimes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v4, v4, v1

    if-lt v4, p1, :cond_0

    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 357
    .local v0, "WMarkDistribution":I
    if-lt v0, p2, :cond_2

    .line 358
    const/4 v2, 0x1

    .line 359
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 360
    const-string/jumbo v4, "MemFragOpt"

    const-string/jumbo v5, "MemoryFragmentOptimizer satisfyTimes %d watermark %d level %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 361
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 360
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    return v2
.end method

.method public static getInstance()Lcom/android/server/am/MemoryFragmentOptimizer;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;->sInstance:Lcom/android/server/am/MemoryFragmentOptimizer;

    return-object v0
.end method

.method private getMemoryFragmentLevel()F
    .locals 22

    .prologue
    .line 138
    const-string/jumbo v14, "/sys/kernel/debug/extfrag/unusable_index"

    .line 140
    .local v14, "unusable_index_path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 141
    .local v7, "result":F
    const/4 v12, 0x0

    .line 143
    .local v12, "unusable_index":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 144
    .local v5, "line":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    .line 145
    new-instance v17, Ljava/io/FileReader;

    const-string/jumbo v18, "/sys/kernel/debug/extfrag/unusable_index"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v13, "unusable_index":Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 147
    .local v16, "zone_count":I
    const-wide/16 v8, 0x0

    .line 148
    .local v8, "sum":D
    const-wide/16 v10, 0x0

    .line 149
    .local v10, "sum_average":D
    const/16 v6, 0xb

    .line 151
    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "unusable_index":Ljava/io/BufferedReader;
    .local v6, "order_count":I
    :goto_0
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 152
    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, "vars":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 154
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, v4

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v18

    add-double v8, v8, v18

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_0
    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    div-double v18, v8, v18

    add-double v10, v10, v18

    .line 157
    add-int/lit8 v16, v16, 0x1

    .line 158
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 161
    .end local v4    # "i":I
    .end local v15    # "vars":[Ljava/lang/String;
    :cond_1
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v10, v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v7, v0

    .line 168
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v12, v13

    .line 170
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "order_count":I
    .end local v8    # "sum":D
    .end local v10    # "sum_average":D
    .end local v13    # "unusable_index":Ljava/io/BufferedReader;
    .end local v16    # "zone_count":I
    :goto_2
    return v7

    .line 165
    .local v5, "line":Ljava/lang/String;
    .restart local v12    # "unusable_index":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 166
    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "unusable_index":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string/jumbo v17, "MemFragOpt"

    const-string/jumbo v18, "Failed to read new line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v12    # "unusable_index":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 164
    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "unusable_index":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    const-string/jumbo v17, "MemFragOpt"

    const-string/jumbo v18, "Error to open node: /sys/kernel/debug/extfrag/unusable_index"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 167
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v17

    .line 168
    :goto_5
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    throw v17

    .restart local v6    # "order_count":I
    .restart local v8    # "sum":D
    .restart local v10    # "sum_average":D
    .restart local v13    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v16    # "zone_count":I
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13    # "unusable_index":Ljava/io/BufferedReader;
    .local v12, "unusable_index":Ljava/io/BufferedReader;
    goto :goto_5

    .line 163
    .end local v12    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v13    # "unusable_index":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v12    # "unusable_index":Ljava/io/BufferedReader;
    goto :goto_4

    .line 165
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v13    # "unusable_index":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v12    # "unusable_index":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private hasProviderStableCount(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "processRecord"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x0

    .line 232
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "pvrIndex":I
    :goto_0
    if-ltz v3, :cond_3

    .line 233
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 234
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "cprIndex":I
    :goto_1
    if-ltz v2, :cond_2

    .line 235
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 236
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget v4, v0, Lcom/android/server/am/ContentProviderConnection;->stableCount:I

    if-lez v4, :cond_1

    .line 237
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 238
    const-string/jumbo v4, "MemFragOpt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Has StableCount for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 234
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 232
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 244
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "cprIndex":I
    :cond_3
    return v5
.end method

.method private processCachedApplication(Ljava/util/ArrayList;I)I
    .locals 8
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_APP:Z

    if-nez v5, :cond_0

    .line 277
    const/4 v5, -0x1

    return v5

    .line 280
    :cond_0
    const/4 v4, 0x0

    .line 281
    .local v4, "nr":I
    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 283
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 284
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 285
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_1

    .line 286
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    packed-switch v5, :pswitch_data_0

    .line 283
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-direct {p0, p2, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->rejectProcessRequest(ILcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    packed-switch p2, :pswitch_data_1

    .line 308
    :goto_2
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 309
    const-string/jumbo v5, "MemFragOpt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processCachedApplication CMD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :pswitch_1
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v6, 0x3c

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 299
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 304
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MemFragOpt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_2

    .line 315
    .end local v0    # "N":I
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "i":I
    :cond_2
    return v4

    .line 286
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processPageAllocStatCommand(I)V
    .locals 4
    .param p1, "command"    # I

    .prologue
    .line 182
    sget-boolean v2, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_PAS:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    if-eqz v2, :cond_6

    .line 186
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    if-nez v2, :cond_0

    .line 187
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/proc/pas_alloc_stat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 190
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string/jumbo v3, "/proc/pas_alloc_stat"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    if-eqz v2, :cond_5

    .line 205
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 206
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 209
    :cond_1
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 210
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 213
    :cond_2
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 214
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 217
    :cond_3
    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 218
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    :cond_5
    :goto_0
    return-void

    .line 183
    :cond_6
    return-void

    .line 191
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "MemFragOpt"

    const-string/jumbo v3, "processPageAllocStatCommand: Failed to create /proc/pas_alloc_stat FileWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    const-string/jumbo v2, "MemFragOpt"

    const-string/jumbo v3, "processPageAllocStatCommand: /proc/pas_alloc_stat dosen\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    .line 199
    return-void

    .line 222
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "MemFragOpt"

    const-string/jumbo v3, "Failed to write command to PAS node"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 225
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    throw v2
.end method

.method private rejectProcessRequest(ILcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "command"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/shrinker/PackageStateInfo;->isCore(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    return v3

    .line 252
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 253
    .local v0, "now":J
    const/4 v2, 0x0

    .line 254
    .local v2, "skipProcess":Z
    if-nez p1, :cond_4

    .line 255
    iget-wide v6, p2, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v8, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-gtz v5, :cond_1

    .line 256
    invoke-direct {p0, p2}, Lcom/android/server/am/MemoryFragmentOptimizer;->hasProviderStableCount(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    .line 255
    if-eqz v5, :cond_3

    .line 257
    :cond_1
    const/4 v2, 0x1

    .line 261
    :goto_0
    if-eqz v2, :cond_2

    .line 262
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "MemFragOpt"

    const-string/jumbo v6, "QuickReject! for: + Didn\'t catch kill window"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    :goto_2
    return v3

    .line 259
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    :cond_4
    if-ne p1, v3, :cond_2

    .line 265
    iget-wide v6, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    iget-wide v8, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-lez v5, :cond_5

    const/4 v2, 0x1

    .line 266
    :goto_3
    if-nez v2, :cond_6

    .line 267
    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    goto :goto_1

    .line 265
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 269
    :cond_6
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "MemFragOpt"

    const-string/jumbo v6, "QuickReject! for: + Didn\'t catch clean window"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move v3, v4

    .line 272
    goto :goto_2
.end method

.method private updateFragmentKeepState()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    .line 327
    invoke-direct {p0}, Lcom/android/server/am/MemoryFragmentOptimizer;->getMemoryFragmentLevel()F

    move-result v3

    float-to-int v1, v3

    .line 328
    .local v1, "curFragLevel":I
    iget v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    if-ne v3, v8, :cond_0

    .line 329
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    iget v6, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    aput v1, v3, v6

    .line 332
    iget v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 334
    sget-boolean v3, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    .line 337
    .local v4, "sum":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 338
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v3, v3, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 339
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const-string/jumbo v3, " Average: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-wide/16 v6, 0x1e

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v3, "MemFragOpt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "sum":J
    :cond_2
    return-void
.end method

.method private updatePropertiesFromConfiguration(Ljava/lang/String;[I)V
    .locals 12
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "result_array"    # [I

    .prologue
    const/4 v11, 0x3

    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/system/etc/lmk_oom_level.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v3, :cond_1

    .line 95
    :try_start_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .local v5, "properties":Ljava/util/Properties;
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    invoke-virtual {v5, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    invoke-virtual {v5, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "property_line":Ljava/lang/String;
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "property_array":[Ljava/lang/String;
    array-length v8, v6

    if-ne v8, v11, :cond_0

    .line 107
    array-length v8, p2

    if-ne v8, v11, :cond_0

    .line 108
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_2

    .line 109
    aget-object v8, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, p2, v4

    .line 110
    const-string/jumbo v8, "MemFragOpt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePropertiesFromConfiguration: from Key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 111
    const-string/jumbo v10, " Index: "

    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 111
    const-string/jumbo v10, " Value: "

    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 111
    aget v10, p2, v4

    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v4    # "i":I
    .end local v6    # "property_array":[Ljava/lang/String;
    .end local v7    # "property_line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "MemFragOpt"

    const-string/jumbo v9, "Load /system/etc/lmk_oom_level.conf to Properties was failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    return-void

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "property_array":[Ljava/lang/String;
    .restart local v7    # "property_line":Ljava/lang/String;
    :cond_0
    :try_start_4
    const-string/jumbo v8, "MemFragOpt"

    const-string/jumbo v9, "updatePropertiesFromConfiguration: The length of array was mismatched!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    return-void

    .line 120
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v6    # "property_array":[Ljava/lang/String;
    .end local v7    # "property_line":Ljava/lang/String;
    :cond_1
    :try_start_5
    const-string/jumbo v8, "MemFragOpt"

    const-string/jumbo v9, "updatePropertiesFromConfiguration: Failed in initializing FileInputStream from: /system/etc/lmk_oom_level.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 90
    return-void

    .line 123
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 124
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    const-string/jumbo v8, "MemFragOpt"

    const-string/jumbo v9, "updatePropertiesFromConfiguration: FileNotFoundException: /system/etc/lmk_oom_level.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    return-void

    .line 127
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    .line 128
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    throw v8

    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 123
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public forceCompactionMemory()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 322
    return-void
.end method

.method public forceReclaimMemory()V
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 318
    return-void
.end method

.method public handleHighMemoryFragment(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 386
    sget-boolean v1, Lcom/android/server/am/MemoryFragmentOptimizer;->ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

    if-nez v1, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MemoryFragmentOptimizer;->updateFragmentKeepState()V

    .line 391
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(Ljava/util/ArrayList;I)I

    move-result v0

    .line 393
    .local v0, "nr":I
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 394
    const-string/jumbo v1, "HighLev, KillAll"

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    .line 395
    return-void

    .line 398
    .end local v0    # "nr":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(Ljava/util/ArrayList;I)I

    move-result v0

    .line 400
    .restart local v0    # "nr":I
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 401
    const-string/jumbo v1, "MedLev, KillAll"

    invoke-virtual {p0, v0, v5, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    .line 402
    return-void

    .line 405
    .end local v0    # "nr":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(Ljava/util/ArrayList;I)I

    move-result v0

    .line 407
    .restart local v0    # "nr":I
    if-gt v0, v4, :cond_3

    .line 408
    invoke-direct {p0, v4}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 410
    :cond_3
    const-string/jumbo v1, "LowLev, Clean"

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    .line 411
    return-void

    .line 385
    .end local v0    # "nr":I
    :cond_4
    return-void
.end method

.method printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V
    .locals 5
    .param p1, "numProcessed"    # I
    .param p2, "level"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 369
    if-eqz p1, :cond_0

    .line 370
    const-string/jumbo v0, "MemFragOpt"

    const-string/jumbo v1, "handleHighMemoryFragment Frag:%d Level:%d Kill/Clear:%d Description: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 372
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 373
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 375
    const/4 v3, 0x3

    aput-object p3, v2, v3

    .line 370
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method

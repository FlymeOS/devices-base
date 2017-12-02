.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 29
    return-void

    .line 35
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 58
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 29
    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    .line 122
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    aget-byte v2, p1, v11

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v11

    if-eqz v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 123
    :cond_0
    add-int/lit8 v4, v11, 0x1

    .local v4, "endIndex":I
    move v3, v4

    .line 125
    .local v3, "startIndex":I
    monitor-enter p0

    .line 126
    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 127
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    .line 128
    move v4, v3

    .line 129
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4

    if-eqz v2, :cond_1

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 133
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-le v4, v2, :cond_4

    .line 188
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 189
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 190
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_3

    .line 191
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 125
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 138
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 142
    .local v7, "wlData":[J
    move v13, v3

    .local v13, "j":I
    :goto_4
    if-ge v13, v4, :cond_6

    .line 143
    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    const/16 v2, 0x3f

    aput-byte v2, p1, v13

    .line 142
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 146
    :cond_6
    if-eqz p3, :cond_8

    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 148
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 145
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v16

    .line 150
    .local v16, "parsed":Z
    const/4 v2, 0x0

    aget-object v15, v6, v2

    .line 151
    .local v15, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v20, v7, v2

    move-wide/from16 v0, v20

    long-to-int v9, v0

    .line 153
    .local v9, "count":I
    if-eqz p3, :cond_9

    .line 155
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x3e8

    mul-long v18, v20, v22

    .line 161
    .local v18, "totalTime":J
    :goto_6
    if-eqz v16, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 162
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 163
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 164
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 163
    move-wide/from16 v0, v18

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_7
    :goto_7
    add-int/lit8 v3, v4, 0x1

    goto/16 :goto_1

    .line 147
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_8
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_5

    .line 158
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsed":Z
    :cond_9
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .restart local v18    # "totalTime":J
    goto :goto_6

    .line 166
    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 167
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_b

    .line 168
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v2, v9

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 169
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_7

    .line 171
    :cond_b
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 172
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 173
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 176
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_c
    if-nez v16, :cond_7

    .line 178
    :try_start_2
    const-string/jumbo v2, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse proc line: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    new-instance v8, Ljava/lang/String;

    sub-int v17, v4, v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 178
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 180
    :catch_0
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    const-string/jumbo v5, "Failed to parse proc line!"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 195
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    .restart local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 196
    return-object p4
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    const/4 v10, 0x0

    .line 66
    const v8, 0x8000

    new-array v0, v8, [B

    .line 73
    .local v0, "buffer":[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/wakelocks"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 86
    .local v7, "wakeup_sources":Z
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 87
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    if-lez v6, :cond_1

    .line 94
    array-length v8, v0

    if-lt v6, v8, :cond_0

    .line 95
    const-string/jumbo v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 99
    aget-byte v8, v0, v4

    if-nez v8, :cond_2

    .line 100
    move v6, v4

    .line 105
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0, v0, v6, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    return-object v8

    .line 75
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "wakeup_sources":Z
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/d/wakeup_sources"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .restart local v5    # "is":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    .restart local v7    # "wakeup_sources":Z
    goto :goto_0

    .line 79
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wakeup_sources":Z
    :catch_1
    move-exception v3

    .line 80
    .local v3, "e2":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    return-object v10

    .line 88
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "failed to read kernel wakelocks"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return-object v10

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    .restart local v7    # "wakeup_sources":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

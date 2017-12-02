.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$1;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x15

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    .line 73
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 134
    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 137
    const/4 v0, 0x4

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 139
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 145
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 150
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 196
    const-string/jumbo v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    .line 195
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 322
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    .line 321
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 527
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    .line 59
    return-void

    .line 139
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 145
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 150
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 168
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 184
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 186
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 187
    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "running"    # Z

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 168
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 170
    const/16 v1, 0x8

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 171
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 184
    new-instance v1, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 186
    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 187
    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 202
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 204
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 208
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    .line 209
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 201
    .end local v0    # "info":Landroid/os/Debug$MemoryInfo;
    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    .prologue
    .line 523
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 524
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 523
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 522
    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1417
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1418
    const-string/jumbo v5, "Available pages by page size:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1420
    .local v1, "NPAGETYPES":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1421
    const-string/jumbo v5, "Zone %3d  %14s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1422
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1423
    .local v4, "sizes":[I
    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 1424
    .local v0, "N":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 1425
    const-string/jumbo v5, "%6d"

    new-array v6, v9, [Ljava/lang/Object;

    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1424
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1423
    .end local v0    # "N":I
    .end local v3    # "j":I
    :cond_0
    array-length v0, v4

    .restart local v0    # "N":I
    goto :goto_1

    .line 1427
    .restart local v3    # "j":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    .end local v0    # "N":I
    .end local v3    # "j":I
    .end local v4    # "sizes":[I
    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_0

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 842
    const/4 v1, 0x0

    return v1

    .line 844
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 680
    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 685
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 687
    :cond_1
    not-int v0, v0

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 690
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 693
    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 643
    const/16 v4, 0xa

    if-gt p2, v4, :cond_0

    .line 644
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 645
    return-void

    .line 647
    :cond_0
    array-length v0, p3

    .line 648
    .local v0, "alen":I
    if-le p4, v0, :cond_1

    .line 649
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 652
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_3

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 654
    .local v3, "val":I
    if-ltz v3, :cond_2

    .line 655
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 652
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 658
    .local v1, "bottom":I
    not-int v4, v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    .line 661
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    .line 662
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 642
    :cond_4
    return-void
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 848
    const/4 v4, 0x0

    .line 849
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 850
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    .line 852
    .local v1, "data":[B
    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 855
    .local v0, "amt":I
    if-gez v0, :cond_2

    .line 858
    aput v4, p1, v6

    .line 859
    return-object v1

    .line 850
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    .line 861
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    .line 862
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 863
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 866
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 867
    move-object v1, v3

    goto :goto_1
.end method

.method private resetCommon()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 496
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 499
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    .line 500
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    .line 502
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    .line 494
    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "digit":Z
    const/4 v2, 0x0

    .line 583
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 585
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 586
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 587
    .local v1, "c":C
    if-lt v1, v10, :cond_1

    if-gt v1, v11, :cond_1

    .line 588
    if-nez v3, :cond_0

    .line 589
    const/4 v3, 0x1

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 585
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 593
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 597
    .end local v1    # "c":C
    :cond_2
    new-array v7, v2, [I

    .line 598
    .local v7, "result":[I
    const/4 v5, 0x0

    .line 599
    .local v5, "p":I
    const/4 v8, 0x0

    .line 600
    .local v8, "val":I
    const/4 v4, 0x0

    move v6, v5

    .end local v5    # "p":I
    .local v6, "p":I
    :goto_2
    if-ge v4, v0, :cond_5

    .line 601
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 602
    .restart local v1    # "c":C
    if-lt v1, v10, :cond_4

    if-gt v1, v11, :cond_4

    .line 603
    if-nez v3, :cond_3

    .line 604
    const/4 v3, 0x1

    .line 605
    add-int/lit8 v8, v1, -0x30

    :goto_3
    move v5, v6

    .line 600
    .end local v6    # "p":I
    .restart local v5    # "p":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "p":I
    .restart local v6    # "p":I
    goto :goto_2

    .line 607
    :cond_3
    mul-int/lit8 v8, v8, 0xa

    .line 608
    add-int/lit8 v9, v1, -0x30

    add-int/2addr v8, v9

    goto :goto_3

    .line 611
    :cond_4
    if-eqz v3, :cond_7

    .line 612
    const/4 v3, 0x0

    .line 613
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "p":I
    .restart local v5    # "p":I
    aput v8, v7, v6

    goto :goto_4

    .line 617
    .end local v1    # "c":C
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :cond_5
    if-lez v2, :cond_6

    .line 618
    add-int/lit8 v9, v2, -0x1

    aput v8, v7, v9

    .line 620
    :cond_6
    return-object v7

    .restart local v1    # "c":C
    :cond_7
    move v5, v6

    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_4
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 669
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 626
    aget-wide v4, p2, v1

    .line 627
    .local v4, "val":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 628
    const-string/jumbo v3, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-wide/16 v4, 0x0

    .line 631
    :cond_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    .line 632
    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_1
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    not-int v2, v3

    .line 635
    .local v2, "top":I
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    long-to-int v0, v6

    .line 636
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 624
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 42
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessStats;

    .prologue
    .line 219
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v27

    .line 220
    .local v27, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/16 v17, 0x0

    .local v17, "ip":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_6

    .line 221
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 222
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    .line 223
    .local v32, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v20, 0x0

    .local v20, "iu":I
    :goto_1
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5

    .line 224
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 225
    .local v6, "uid":I
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseArray;

    .line 226
    .local v34, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v21, 0x0

    .local v21, "iv":I
    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    .line 227
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 228
    .local v7, "vers":I
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 229
    .local v25, "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 230
    .local v14, "NPROCS":I
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 231
    .local v15, "NSRVS":I
    const/16 v18, 0x0

    .local v18, "iproc":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 232
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    .line 233
    .local v24, "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_1

    .line 237
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    .line 238
    .local v8, "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    if-ne v4, v8, :cond_0

    .line 240
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 242
    .local v22, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v28

    .line 244
    .local v28, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    .line 245
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v22    # "now":J
    .end local v28    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 231
    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 250
    .end local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    const/16 v19, 0x0

    .local v19, "isvc":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v15, :cond_3

    .line 251
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/procstats/ServiceState;

    .line 255
    .local v26, "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    .line 254
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v31

    .line 256
    .local v31, "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 250
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 226
    .end local v26    # "otherSvc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v31    # "thisSvc":Lcom/android/internal/app/procstats/ServiceState;
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 223
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v18    # "iproc":I
    .end local v19    # "isvc":I
    .end local v25    # "otherState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 220
    .end local v6    # "uid":I
    .end local v21    # "iv":I
    .end local v34    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 262
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v20    # "iu":I
    .end local v32    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    .line 263
    .local v29, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 264
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/SparseArray;

    .line 265
    .local v33, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v20, 0x0

    .restart local v20    # "iu":I
    :goto_6
    invoke-virtual/range {v33 .. v33}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8

    .line 266
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 267
    .restart local v6    # "uid":I
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    .line 268
    .restart local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    .line 269
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v7

    .line 271
    .restart local v7    # "vers":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v13, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 273
    .restart local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v8, :cond_7

    .line 275
    new-instance v8, Lcom/android/internal/app/procstats/ProcessState;

    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v9, p0

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 276
    .restart local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v13, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v30

    .line 278
    .local v30, "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 279
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v30    # "thisState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_7
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 265
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 263
    .end local v6    # "uid":I
    .end local v7    # "vers":I
    .end local v8    # "thisProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v24    # "otherProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 286
    .end local v20    # "iu":I
    .end local v33    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_9
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    const/16 v4, 0x8

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v36, v4, v16

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v38, v9, v16

    add-long v36, v36, v38

    aput-wide v36, v4, v16

    .line 286
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 293
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    .line 295
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v38, v0

    cmp-long v4, v36, v38

    if-gez v4, :cond_b

    .line 296
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 297
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 299
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 302
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v4, v9

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 218
    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 307
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 308
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v1, v2, 0xe

    .line 309
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x1

    aput-wide p1, v2, v3

    .line 312
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x4

    aput-wide p3, v2, v3

    .line 313
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x7

    aput-wide p5, v2, v3

    .line 314
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xa

    aput-wide p7, v2, v3

    .line 315
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xd

    aput-wide p9, v2, v3

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 306
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 23
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1532
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/procstats/ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 1533
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 1534
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1535
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    .line 1536
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_6

    .line 1537
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 1538
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1539
    .local v9, "NVERS":I
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_2
    if-ge v15, v9, :cond_5

    .line 1540
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1541
    .local v21, "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1542
    .local v8, "NPROCS":I
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1543
    :goto_3
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_4
    if-ge v13, v8, :cond_4

    .line 1544
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 1545
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v18, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1548
    :cond_0
    if-eqz p8, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1551
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1542
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v13    # "iproc":I
    :cond_3
    const/16 v18, 0x1

    .local v18, "pkgMatch":Z
    goto :goto_3

    .line 1539
    .end local v18    # "pkgMatch":Z
    .restart local v13    # "iproc":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1536
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v21    # "state":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1533
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1556
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1557
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_9

    .line 1558
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 1559
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    .line 1560
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 1562
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    .line 1557
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1566
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_9
    sget-object v3, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1567
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 28
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .prologue
    .line 333
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 334
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v22, 0xe

    move/from16 v0, v22

    if-ge v4, v0, :cond_0

    .line 335
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    .line 336
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    .line 337
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    .line 338
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v4

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 341
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    :cond_1
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 344
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 345
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 346
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 347
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 348
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v20

    .line 350
    .local v20, "totalMemUsage":[J
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    .line 351
    const/4 v6, 0x0

    .local v6, "im":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_4

    .line 352
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v6

    add-int v11, v22, v23

    .line 353
    .local v11, "memBucket":I
    mul-int/lit8 v16, v11, 0xe

    .line 354
    .local v16, "stateBucket":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v22, v0

    aget-wide v12, v22, v11

    .line 355
    .local v12, "memTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v11, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, p2, v22

    add-long v12, v12, v22

    .line 358
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v17

    .line 360
    .local v17, "sysKey":I
    move-object/from16 v10, v20

    .line 361
    .local v10, "longs":[J
    const/4 v5, 0x0

    .line 362
    .local v5, "idx":I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v19

    .line 364
    .local v19, "tmpLongs":[J
    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v18

    .line 365
    .local v18, "tmpIndex":I
    add-int/lit8 v22, v18, 0x0

    aget-wide v22, v19, v22

    const-wide/16 v24, 0x3

    cmp-long v22, v22, v24

    if-ltz v22, :cond_3

    .line 366
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 367
    move-object/from16 v10, v19

    .line 368
    move/from16 v5, v18

    .line 371
    .end local v18    # "tmpIndex":I
    .end local v19    # "tmpLongs":[J
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x2

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 372
    long-to-double v0, v12

    move-wide/from16 v26, v0

    .line 371
    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 373
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x5

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 374
    long-to-double v0, v12

    move-wide/from16 v26, v0

    .line 373
    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 375
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x8

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 376
    long-to-double v0, v12

    move-wide/from16 v26, v0

    .line 375
    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 377
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0xb

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 378
    long-to-double v0, v12

    move-wide/from16 v26, v0

    .line 377
    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 379
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0xe

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 380
    long-to-double v0, v12

    move-wide/from16 v26, v0

    .line 379
    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 381
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x0

    aget-wide v24, v10, v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 351
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 350
    .end local v5    # "idx":I
    .end local v10    # "longs":[J
    .end local v11    # "memBucket":I
    .end local v12    # "memTime":J
    .end local v16    # "stateBucket":I
    .end local v17    # "sysKey":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 384
    .end local v6    # "im":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    .line 386
    .local v15, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/4 v7, 0x0

    .local v7, "iproc":I
    :goto_4
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_7

    .line 387
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseArray;

    .line 388
    .local v21, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    .line 389
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 390
    .local v14, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 388
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 386
    .end local v14    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 332
    .end local v9    # "iu":I
    .end local v21    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_7
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 51
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 1571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1572
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v41

    .line 1573
    .local v41, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v3, "vers,5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    const-string/jumbo v3, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1577
    const/16 v40, 0x1

    .line 1578
    .local v40, "partial":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 1579
    const-string/jumbo v3, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    const/16 v40, 0x0

    .line 1582
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 1583
    const-string/jumbo v3, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    const/16 v40, 0x0

    .line 1586
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1587
    const-string/jumbo v3, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    const/16 v40, 0x0

    .line 1590
    :cond_2
    if-eqz v40, :cond_3

    .line 1591
    const-string/jumbo v3, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v3, :cond_4

    .line 1594
    const-string/jumbo v3, ",swapped-out-pss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1597
    const-string/jumbo v3, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    const/16 v33, 0x0

    .local v33, "ip":I
    :goto_1
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_b

    .line 1599
    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1600
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1603
    :cond_5
    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/util/SparseArray;

    .line 1604
    .local v48, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v36, 0x0

    .local v36, "iu":I
    :goto_2
    invoke-virtual/range {v48 .. v48}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_a

    .line 1605
    move-object/from16 v0, v48

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1606
    .local v5, "uid":I
    move-object/from16 v0, v48

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/util/SparseArray;

    .line 1607
    .local v50, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v37, 0x0

    .local v37, "iv":I
    :goto_3
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v37

    if-ge v0, v3, :cond_9

    .line 1608
    move-object/from16 v0, v50

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1609
    .local v6, "vers":I
    move-object/from16 v0, v50

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1610
    .local v42, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v30

    .line 1611
    .local v30, "NPROCS":I
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v31

    .line 1612
    .local v31, "NSRVS":I
    const/16 v34, 0x0

    .local v34, "iproc":I
    :goto_4
    move/from16 v0, v34

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 1613
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 1615
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v3, p1

    .line 1614
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1612
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 1576
    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "vers":I
    .end local v30    # "NPROCS":I
    .end local v31    # "NSRVS":I
    .end local v33    # "ip":I
    .end local v34    # "iproc":I
    .end local v36    # "iu":I
    .end local v37    # "iv":I
    .end local v40    # "partial":Z
    .end local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_0

    .line 1617
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "vers":I
    .restart local v30    # "NPROCS":I
    .restart local v31    # "NSRVS":I
    .restart local v33    # "ip":I
    .restart local v34    # "iproc":I
    .restart local v36    # "iu":I
    .restart local v37    # "iv":I
    .restart local v40    # "partial":Z
    .restart local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_7
    const/16 v35, 0x0

    .local v35, "isvc":I
    :goto_5
    move/from16 v0, v35

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 1619
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1618
    invoke-static {v4, v3}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1620
    .local v15, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .local v10, "svc":Lcom/android/internal/app/procstats/ServiceState;
    move-object/from16 v11, p1

    move-object v12, v4

    move v13, v5

    move v14, v6

    move-wide/from16 v16, v8

    .line 1621
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1617
    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    .line 1607
    .end local v10    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3

    .line 1604
    .end local v6    # "vers":I
    .end local v30    # "NPROCS":I
    .end local v31    # "NSRVS":I
    .end local v34    # "iproc":I
    .end local v35    # "isvc":I
    .end local v42    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_9
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 1598
    .end local v5    # "uid":I
    .end local v36    # "iu":I
    .end local v37    # "iv":I
    .end local v48    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v50    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_a
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

    .line 1627
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v43

    .line 1628
    .local v43, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v33, 0x0

    :goto_6
    invoke-virtual/range {v43 .. v43}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_d

    .line 1629
    move-object/from16 v0, v43

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1630
    .local v18, "procName":Ljava/lang/String;
    move-object/from16 v0, v43

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/SparseArray;

    .line 1631
    .local v49, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v36, 0x0

    .restart local v36    # "iu":I
    :goto_7
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_c

    .line 1632
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1633
    .restart local v5    # "uid":I
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    .local v16, "procState":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v17, p1

    move/from16 v19, v5

    move-wide/from16 v20, v8

    .line 1634
    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    .line 1631
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 1628
    .end local v5    # "uid":I
    .end local v16    # "procState":Lcom/android/internal/app/procstats/ProcessState;
    :cond_c
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 1637
    .end local v18    # "procName":Ljava/lang/String;
    .end local v36    # "iu":I
    .end local v49    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_d
    const-string/jumbo v3, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v21, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v20, p1

    move-wide/from16 v26, v8

    invoke-static/range {v20 .. v27}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 1639
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v45

    .line 1641
    .local v45, "sysMemUsageCount":I
    if-lez v45, :cond_10

    .line 1642
    const-string/jumbo v3, "sysmemusage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1643
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_8
    move/from16 v0, v32

    move/from16 v1, v45

    if-ge v0, v1, :cond_10

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v39

    .line 1645
    .local v39, "key":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v47

    .line 1646
    .local v47, "type":I
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1648
    const/16 v38, 0x0

    .local v38, "j":I
    :goto_9
    const/16 v3, 0x10

    move/from16 v0, v38

    if-ge v0, v3, :cond_f

    .line 1649
    const/4 v3, 0x1

    move/from16 v0, v38

    if-le v0, v3, :cond_e

    .line 1650
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1648
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1643
    :cond_f
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 1656
    .end local v32    # "i":I
    .end local v38    # "j":I
    .end local v39    # "key":I
    .end local v47    # "type":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1657
    new-instance v46, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 1658
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1657
    move-object/from16 v0, v46

    invoke-direct {v0, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 1659
    .local v46, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 1660
    const-string/jumbo v3, "weights,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1662
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1664
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1666
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1668
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1670
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1672
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1673
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1674
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1676
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1678
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1679
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1680
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1682
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_a
    const/16 v3, 0xe

    move/from16 v0, v32

    if-ge v0, v3, :cond_11

    .line 1683
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v12, v3, v32

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    .line 1685
    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v3, v3, v32

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1682
    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    .line 1688
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1691
    .local v29, "NPAGETYPES":I
    const/16 v32, 0x0

    :goto_b
    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 1692
    const-string/jumbo v3, "availablepages,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1696
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [I

    .line 1698
    .local v44, "sizes":[I
    if-nez v44, :cond_13

    const/16 v28, 0x0

    .line 1699
    .local v28, "N":I
    :goto_c
    const/16 v38, 0x0

    .restart local v38    # "j":I
    :goto_d
    move/from16 v0, v38

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    .line 1700
    if-eqz v38, :cond_12

    .line 1701
    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    :cond_12
    aget v3, v44, v38

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1699
    add-int/lit8 v38, v38, 0x1

    goto :goto_d

    .line 1698
    .end local v28    # "N":I
    .end local v38    # "j":I
    :cond_13
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "N":I
    goto :goto_c

    .line 1705
    .restart local v38    # "j":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1691
    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    .line 1570
    .end local v28    # "N":I
    .end local v38    # "j":I
    .end local v44    # "sizes":[I
    :cond_15
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p12

    move/from16 v9, p13

    .line 1516
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 1518
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1519
    if-eqz p2, :cond_0

    .line 1520
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 1523
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1515
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 51
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 1221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 1222
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 1221
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 1223
    .local v14, "totalTime":J
    const/16 v44, 0x0

    .line 1224
    .local v44, "sepNeeded":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1225
    const-string/jumbo v5, "System memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    const-string/jumbo v6, "  "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 1227
    const/16 v44, 0x1

    .line 1229
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v36

    .line 1230
    .local v36, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    const/16 v40, 0x0

    .line 1231
    .local v40, "printedHeader":Z
    const/16 v29, 0x0

    .local v29, "ip":I
    :goto_0
    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1d

    .line 1232
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 1233
    .local v38, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/SparseArray;

    .line 1234
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    .local v32, "iu":I
    :goto_1
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_1c

    .line 1235
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1236
    .local v45, "uid":I
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/SparseArray;

    .line 1237
    .local v49, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .local v33, "iv":I
    :goto_2
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_1b

    .line 1238
    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 1239
    .local v48, "vers":I
    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1240
    .local v39, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 1241
    .local v16, "NPROCS":I
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v28

    .line 1242
    .local v28, "NSRVS":I
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    .line 1243
    .local v37, "pkgMatch":Z
    :goto_3
    if-nez v37, :cond_5

    .line 1244
    const/16 v42, 0x0

    .line 1245
    .local v42, "procMatch":Z
    const/16 v30, 0x0

    .local v30, "iproc":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 1246
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1247
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1248
    const/16 v42, 0x1

    .line 1252
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1
    if-nez v42, :cond_5

    .line 1237
    .end local v42    # "procMatch":Z
    :cond_2
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 1242
    .end local v30    # "iproc":I
    .end local v37    # "pkgMatch":Z
    :cond_3
    const/16 v37, 0x1

    goto :goto_3

    .line 1245
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v30    # "iproc":I
    .restart local v37    # "pkgMatch":Z
    .restart local v42    # "procMatch":Z
    :cond_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 1256
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v30    # "iproc":I
    .end local v42    # "procMatch":Z
    :cond_5
    if-gtz v16, :cond_6

    if-lez v28, :cond_9

    .line 1257
    :cond_6
    if-nez v40, :cond_8

    .line 1258
    if-eqz v44, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1259
    :cond_7
    const-string/jumbo v5, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const/16 v40, 0x1

    .line 1261
    const/16 v44, 0x1

    .line 1263
    :cond_8
    const-string/jumbo v5, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, " / v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    :cond_9
    if-eqz p5, :cond_a

    if-eqz p6, :cond_10

    .line 1268
    :cond_a
    const/16 v30, 0x0

    .restart local v30    # "iproc":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 1269
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1270
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v37, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1273
    :cond_b
    if-eqz p7, :cond_c

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1278
    :cond_c
    const-string/jumbo v5, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1281
    const-string/jumbo v5, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1286
    const-string/jumbo v5, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v6, "        "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1289
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v5, p1

    move-wide/from16 v10, p3

    .line 1288
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1290
    const-string/jumbo v6, "        "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1291
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v5, p1

    .line 1290
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1292
    const-string/jumbo v5, "        "

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1268
    :cond_d
    :goto_7
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 1274
    :cond_e
    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1283
    :cond_f
    const-string/jumbo v5, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 1295
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v30    # "iproc":I
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v8, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v30, 0x0

    .restart local v30    # "iproc":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_14

    .line 1297
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1298
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v37, :cond_11

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1301
    :cond_11
    if-eqz p7, :cond_12

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1304
    :cond_12
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_13
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 1306
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_14
    const-string/jumbo v7, "      "

    .line 1307
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v6, p1

    move-wide/from16 v12, p3

    .line 1306
    invoke-static/range {v6 .. v15}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1310
    .end local v8    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_15
    const/16 v31, 0x0

    .local v31, "isvc":I
    :goto_9
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 1311
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ServiceState;

    .line 1312
    .local v17, "svc":Lcom/android/internal/app/procstats/ServiceState;
    if-nez v37, :cond_16

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1315
    :cond_16
    if-eqz p7, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1320
    :cond_17
    if-eqz p6, :cond_1a

    .line 1321
    const-string/jumbo v5, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    :goto_a
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    const-string/jumbo v5, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    const-string/jumbo v19, "        "

    const-string/jumbo v20, "          "

    const-string/jumbo v21, "    "

    move-object/from16 v18, p1

    move-wide/from16 v22, p3

    move-wide/from16 v24, v14

    move/from16 v26, p5

    move/from16 v27, p6

    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 1310
    :cond_18
    :goto_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_9

    .line 1316
    :cond_19
    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 1323
    :cond_1a
    const-string/jumbo v5, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 1234
    .end local v16    # "NPROCS":I
    .end local v17    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    .end local v28    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v37    # "pkgMatch":Z
    .end local v39    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v48    # "vers":I
    :cond_1b
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 1231
    .end local v33    # "iv":I
    .end local v45    # "uid":I
    .end local v49    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_1c
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 1335
    .end local v32    # "iu":I
    .end local v38    # "pkgName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v41

    .line 1336
    .local v41, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    const/16 v40, 0x0

    .line 1337
    const/16 v34, 0x0

    .local v34, "numShownProcs":I
    const/16 v35, 0x0

    .line 1338
    .local v35, "numTotalProcs":I
    const/16 v29, 0x0

    :goto_c
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_27

    .line 1339
    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 1340
    .local v43, "procName":Ljava/lang/String;
    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    .line 1341
    .local v47, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    const/16 v32, 0x0

    .restart local v32    # "iu":I
    :goto_d
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_26

    .line 1342
    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1343
    .restart local v45    # "uid":I
    add-int/lit8 v35, v35, 0x1

    .line 1344
    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1345
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1341
    :cond_1e
    :goto_e
    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .line 1348
    :cond_1f
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1351
    if-eqz p2, :cond_20

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1355
    :cond_20
    :goto_f
    add-int/lit8 v34, v34, 0x1

    .line 1356
    if-eqz v44, :cond_21

    .line 1357
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1359
    :cond_21
    const/16 v44, 0x1

    .line 1360
    if-nez v40, :cond_22

    .line 1361
    const-string/jumbo v5, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    const/16 v40, 0x1

    .line 1364
    :cond_22
    if-eqz p7, :cond_23

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1368
    :cond_23
    const-string/jumbo v5, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1370
    const-string/jumbo v5, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1371
    const-string/jumbo v5, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v20, "        "

    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1373
    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v18, v4

    move-object/from16 v19, p1

    move-wide/from16 v24, p3

    .line 1372
    invoke-virtual/range {v18 .. v25}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    .line 1374
    const-string/jumbo v20, "        "

    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v18, v4

    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1375
    const-string/jumbo v5, "        "

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 1352
    :cond_24
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto/16 :goto_f

    .line 1365
    :cond_25
    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1338
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v45    # "uid":I
    :cond_26
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_c

    .line 1378
    .end local v32    # "iu":I
    .end local v43    # "procName":Ljava/lang/String;
    .end local v47    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_27
    if-eqz p6, :cond_28

    .line 1379
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1380
    const-string/jumbo v5, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1381
    const-string/jumbo v5, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    :cond_28
    if-eqz v44, :cond_29

    .line 1385
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1387
    :cond_29
    if-eqz p5, :cond_2b

    .line 1388
    const-string/jumbo v5, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-wide/from16 v22, p3

    move/from16 v24, p7

    .line 1389
    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1394
    :goto_10
    if-eqz p6, :cond_2a

    .line 1395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1396
    const-string/jumbo v5, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const-string/jumbo v5, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1404
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    .line 1220
    return-void

    .line 1391
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_10
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 1408
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 1409
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 1408
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 1410
    .local v14, "totalTime":J
    const-string/jumbo v7, "  "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1411
    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 1410
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 1412
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1407
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    .line 1449
    const-string/jumbo v4, "Run time Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    const-string/jumbo v5, "  "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 1451
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1452
    const-string/jumbo v4, "Memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v17, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 1454
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 1453
    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 1455
    .local v17, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 1456
    const-wide/16 v12, 0x0

    .line 1457
    .local v12, "totalPss":J
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Kernel "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 1458
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1457
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1459
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Native "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 1460
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1459
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1461
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v4, 0xe

    if-ge v15, v4, :cond_1

    .line 1463
    const/4 v4, 0x7

    if-eq v15, v4, :cond_0

    .line 1464
    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v4, v15

    .line 1465
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v4, v15

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 1466
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v14, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1464
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1461
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1469
    :cond_1
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Cached "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 1470
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1469
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1471
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Free   "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 1472
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1471
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1473
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Z-Ram  "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 1474
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1473
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 1475
    const-string/jumbo v4, "  TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1478
    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v7, v4, v5

    .line 1479
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 1480
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    const/4 v5, 0x7

    aget v14, v4, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1478
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 1481
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1482
    const-string/jumbo v4, "          Start time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1484
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1485
    const-string/jumbo v4, "  Total elapsed time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1488
    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1487
    sub-long/2addr v4, v6

    .line 1486
    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1489
    const/16 v16, 0x1

    .line 1490
    .local v16, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1491
    const-string/jumbo v4, " (shutdown)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    const/16 v16, 0x0

    .line 1494
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 1495
    const-string/jumbo v4, " (sysprops)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    const/16 v16, 0x0

    .line 1498
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1499
    const-string/jumbo v4, " (complete)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    const/16 v16, 0x0

    .line 1502
    :cond_4
    if-eqz v16, :cond_5

    .line 1503
    const-string/jumbo v4, " (partial)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v4, :cond_6

    .line 1506
    const-string/jumbo v4, " (swapped-out-pss)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1508
    :cond_6
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1448
    return-void

    .line 1487
    .end local v16    # "partial":Z
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4
    .param p1, "update"    # Z

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    .line 512
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 515
    if-eqz p1, :cond_0

    .line 516
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 519
    :cond_0
    return v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1120
    .local v1, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v1, :cond_0

    .line 1121
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1122
    .restart local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 1125
    .local v0, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v0, :cond_1

    .line 1126
    return-object v0

    .line 1128
    :cond_1
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1129
    .restart local v0    # "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1130
    return-object v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 1135
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v23

    .line 1136
    .local v23, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1137
    .local v4, "ps":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v4, :cond_0

    .line 1138
    return-object v4

    .line 1140
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 1141
    .local v2, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v2, :cond_1

    .line 1142
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    .end local v2    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 1143
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1147
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 1150
    move-object v4, v2

    .line 1198
    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :goto_0
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    return-object v4

    .line 1157
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1165
    .local v10, "now":J
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v5

    .line 1165
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v21

    .line 1167
    .local v21, "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-eqz v21, :cond_4

    .line 1168
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v20

    .line 1171
    .local v20, "cloned":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .local v22, "i":I
    :goto_1
    if-ltz v22, :cond_5

    .line 1175
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ServiceState;

    .line 1176
    .local v24, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    if-ne v3, v2, :cond_3

    .line 1178
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1174
    :cond_3
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 1184
    .end local v20    # "cloned":Lcom/android/internal/app/procstats/ProcessState;
    .end local v22    # "i":I
    .end local v24    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_4
    const-string/jumbo v3, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cloning proc state: no package state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1185
    const-string/jumbo v6, "/"

    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1185
    const-string/jumbo v6, " for proc "

    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1185
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_5
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    move-object v5, v2

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto/16 :goto_0

    .line 1194
    .end local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    .line 1194
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto/16 :goto_0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 1205
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v6

    .line 1206
    .local v6, "as":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    .line 1207
    .local v0, "ss":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_0

    .line 1209
    return-object v0

    .line 1211
    :cond_0
    if-eqz p4, :cond_1

    .line 1212
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    .line 1213
    :goto_0
    new-instance v0, Lcom/android/internal/app/procstats/ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1214
    .restart local v0    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    return-object v0

    .line 1212
    :cond_1
    const/4 v5, 0x0

    .local v5, "ps":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_0
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .prologue
    .line 1433
    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-eqz v4, :cond_0

    .line 1434
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p4

    long-to-double v6, p6

    div-double/2addr v4, v6

    double-to-long v2, v4

    .line 1435
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1438
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 1439
    const-string/jumbo v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    move/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1441
    const-string/jumbo v4, " samples)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1443
    add-long v4, p8, v2

    return-wide v4

    .line 1445
    .end local v2    # "mem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 874
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 875
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 876
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 877
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 878
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 879
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 32
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_2

    const/16 v23, 0x1

    .line 890
    .local v23, "hadData":Z
    :goto_0
    if-eqz v23, :cond_0

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 894
    :cond_0
    const-string/jumbo v11, "magic number"

    const v12, 0x50535454

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 895
    return-void

    .line 888
    .end local v23    # "hadData":Z
    :cond_1
    const/16 v23, 0x1

    goto :goto_0

    .line 889
    :cond_2
    const/16 v23, 0x0

    goto :goto_0

    .line 897
    .restart local v23    # "hadData":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 898
    .local v27, "version":I
    const/16 v11, 0x15

    move/from16 v0, v27

    if-eq v0, v11, :cond_4

    .line 899
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 900
    return-void

    .line 902
    :cond_4
    const-string/jumbo v11, "state count"

    const/16 v12, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 903
    return-void

    .line 905
    :cond_5
    const-string/jumbo v11, "adj count"

    const/16 v12, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 906
    return-void

    .line 908
    :cond_6
    const-string/jumbo v11, "pss count"

    const/4 v12, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 909
    return-void

    .line 911
    :cond_7
    const-string/jumbo v11, "sys mem usage count"

    const/16 v12, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 912
    return-void

    .line 914
    :cond_8
    const-string/jumbo v11, "longs size"

    const/16 v12, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 915
    return-void

    .line 918
    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 929
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 932
    return-void

    .line 927
    :cond_a
    const/4 v11, 0x0

    goto :goto_1

    .line 935
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 936
    .local v18, "NPROC":I
    if-gez v18, :cond_c

    .line 937
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad process count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 938
    return-void

    .line 940
    :cond_c
    if-lez v18, :cond_14

    .line 941
    add-int/lit8 v18, v18, -0x1

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    .line 943
    .local v9, "procName":Ljava/lang/String;
    if-nez v9, :cond_d

    .line 944
    const-string/jumbo v11, "bad process name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 945
    return-void

    .line 947
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 948
    .local v21, "NUID":I
    if-gez v21, :cond_f

    .line 949
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 950
    return-void

    .line 978
    .local v4, "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v6, "pkgName":Ljava/lang/String;
    .local v7, "uid":I
    .local v8, "vers":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 952
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    :cond_f
    if-lez v21, :cond_c

    .line 953
    add-int/lit8 v21, v21, -0x1

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 955
    .restart local v7    # "uid":I
    if-gez v7, :cond_10

    .line 956
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 957
    return-void

    .line 959
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 960
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_11

    .line 961
    const-string/jumbo v11, "bad process package name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 962
    return-void

    .line 964
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 965
    .restart local v8    # "vers":I
    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    move-object v4, v11

    .line 966
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_2
    if-eqz v4, :cond_13

    .line 967
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_e

    .line 968
    return-void

    .line 965
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_12
    const/4 v4, 0x0

    goto :goto_2

    .line 971
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_13
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 972
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_e

    .line 973
    return-void

    .line 984
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v9    # "procName":Ljava/lang/String;
    .end local v21    # "NUID":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 985
    .local v17, "NPKG":I
    if-gez v17, :cond_15

    .line 986
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 987
    return-void

    .line 989
    :cond_15
    if-lez v17, :cond_29

    .line 990
    add-int/lit8 v17, v17, -0x1

    .line 991
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 992
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-nez v6, :cond_16

    .line 993
    const-string/jumbo v11, "bad package name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 994
    return-void

    .line 996
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 997
    .restart local v21    # "NUID":I
    if-gez v21, :cond_17

    .line 998
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 999
    return-void

    .line 1001
    :cond_17
    if-lez v21, :cond_15

    .line 1002
    add-int/lit8 v21, v21, -0x1

    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1004
    .restart local v7    # "uid":I
    if-gez v7, :cond_18

    .line 1005
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1006
    return-void

    .line 1008
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1009
    .local v22, "NVERS":I
    if-gez v22, :cond_19

    .line 1010
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad versions count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1011
    return-void

    .line 1013
    :cond_19
    if-lez v22, :cond_17

    .line 1014
    add-int/lit8 v22, v22, -0x1

    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1016
    .restart local v8    # "vers":I
    new-instance v26, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1017
    .local v26, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/util/SparseArray;

    .line 1018
    .local v28, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v28, :cond_1a

    .line 1019
    new-instance v28, Landroid/util/SparseArray;

    .end local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    .line 1020
    .restart local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v28

    invoke-virtual {v11, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_1a
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1024
    .local v19, "NPROCS":I
    if-gez v19, :cond_1c

    .line 1025
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package process count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1026
    return-void

    .line 1064
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .local v5, "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v9    # "procName":Ljava/lang/String;
    .local v24, "hasProc":I
    :cond_1b
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "procName":Ljava/lang/String;
    .end local v24    # "hasProc":I
    :cond_1c
    :goto_3
    if-lez v19, :cond_22

    .line 1029
    add-int/lit8 v19, v19, -0x1

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    .line 1031
    .restart local v9    # "procName":Ljava/lang/String;
    if-nez v9, :cond_1d

    .line 1032
    const-string/jumbo v11, "bad package process name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1033
    return-void

    .line 1035
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1038
    .restart local v24    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 1041
    .restart local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v5, :cond_1e

    .line 1042
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no common proc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1043
    return-void

    .line 1045
    :cond_1e
    if-eqz v24, :cond_21

    .line 1050
    if-eqz v23, :cond_1f

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    move-object v4, v11

    .line 1051
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :goto_4
    if-eqz v4, :cond_20

    .line 1052
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 1053
    return-void

    .line 1050
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_1f
    const/4 v4, 0x0

    goto :goto_4

    .line 1056
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_20
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 1057
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const-wide/16 v10, 0x0

    .line 1056
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1058
    .restart local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 1059
    return-void

    .line 1068
    .end local v4    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_21
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1071
    .end local v5    # "commonProc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v9    # "procName":Ljava/lang/String;
    .end local v24    # "hasProc":I
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1072
    .local v20, "NSRVS":I
    if-gez v20, :cond_24

    .line 1073
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package service count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1074
    return-void

    .line 1093
    .local v10, "serv":Lcom/android/internal/app/procstats/ServiceState;
    .local v13, "serviceName":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    .end local v13    # "serviceName":Ljava/lang/String;
    :cond_24
    if-lez v20, :cond_19

    .line 1077
    add-int/lit8 v20, v20, -0x1

    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1079
    .restart local v13    # "serviceName":Ljava/lang/String;
    if-nez v13, :cond_25

    .line 1080
    const-string/jumbo v11, "bad package service name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1081
    return-void

    .line 1083
    :cond_25
    const/16 v11, 0x9

    move/from16 v0, v27

    if-le v0, v11, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    .line 1084
    :goto_5
    if-eqz v23, :cond_28

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ServiceState;

    move-object v10, v11

    .line 1085
    .restart local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :goto_6
    if-nez v10, :cond_26

    .line 1086
    new-instance v10, Lcom/android/internal/app/procstats/ServiceState;

    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 1088
    .restart local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v11

    if-nez v11, :cond_23

    .line 1089
    return-void

    .line 1083
    .end local v10    # "serv":Lcom/android/internal/app/procstats/ServiceState;
    :cond_27
    const/4 v14, 0x0

    .local v14, "processName":Ljava/lang/String;
    goto :goto_5

    .line 1084
    .end local v14    # "processName":Ljava/lang/String;
    :cond_28
    const/4 v10, 0x0

    goto :goto_6

    .line 1100
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v19    # "NPROCS":I
    .end local v20    # "NSRVS":I
    .end local v21    # "NUID":I
    .end local v22    # "NVERS":I
    .end local v26    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v28    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1101
    .local v16, "NPAGETYPES":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1104
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1107
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_2a

    .line 1108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 1113
    :cond_2a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 887
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 399
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 395
    return-void
.end method

.method public resetSafely()V
    .locals 19

    .prologue
    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 411
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 412
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    .line 413
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 414
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "iu":I
    :goto_1
    if-ltz v5, :cond_0

    .line 415
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 414
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 412
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 421
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 422
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_2
    if-ltz v2, :cond_b

    .line 423
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 424
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_3
    if-ltz v5, :cond_9

    .line 425
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 426
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "iv":I
    :goto_4
    if-ltz v6, :cond_7

    .line 427
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 428
    .local v10, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .local v3, "iproc":I
    :goto_5
    if-ltz v3, :cond_3

    .line 429
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 430
    .local v12, "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 431
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 432
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 433
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 428
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 435
    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 436
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 439
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .local v4, "isvc":I
    :goto_7
    if-ltz v4, :cond_5

    .line 440
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    .line 441
    .local v13, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 442
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    .line 439
    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 444
    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    .line 447
    .end local v13    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    .line 448
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 426
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    .line 451
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_8

    .line 452
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 424
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    .line 455
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_a

    .line 456
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 422
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 461
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_b
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_9
    if-ltz v2, :cond_11

    .line 462
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 463
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_a
    if-ltz v5, :cond_f

    .line 464
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 465
    .restart local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_c

    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v17, v0

    if-lez v17, :cond_e

    .line 472
    :cond_c
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v17

    if-eqz v17, :cond_d

    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 474
    iget-object v12, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 475
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    .line 476
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 463
    :goto_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 478
    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    goto :goto_b

    .line 481
    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 482
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_b

    .line 485
    .end local v12    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_10

    .line 486
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 461
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 490
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_11
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 405
    return-void
.end method

.method public updateFragmentation()V
    .locals 9

    .prologue
    .line 535
    const/4 v4, 0x0

    .line 537
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/pagetypeinfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 539
    .local v3, "matcher":Ljava/util/regex/Matcher;
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 541
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 543
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 544
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 564
    if-eqz v5, :cond_1

    .line 566
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    :cond_1
    :goto_1
    return-void

    .line 547
    :cond_2
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 548
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 549
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    .line 550
    .local v6, "zone":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 553
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 558
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "zone":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    move-object v4, v5

    .line 559
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 560
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    if-eqz v4, :cond_3

    .line 566
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 562
    :cond_3
    :goto_3
    return-void

    .line 567
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .local v0, "allHopeIsLost":Ljava/io/IOException;
    goto :goto_1

    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .restart local v0    # "allHopeIsLost":Ljava/io/IOException;
    goto :goto_3

    .line 563
    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 564
    :goto_4
    if-eqz v4, :cond_4

    .line 566
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 563
    :cond_4
    :goto_5
    throw v7

    .line 567
    :catch_3
    move-exception v0

    .restart local v0    # "allHopeIsLost":Ljava/io/IOException;
    goto :goto_5

    .line 563
    .end local v0    # "allHopeIsLost":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 558
    .local v4, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 702
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    .prologue
    .line 708
    const v25, 0x50535454

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/16 v25, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/16 v25, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    new-instance v25, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 720
    .local v20, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 721
    .local v6, "NPROC":I
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    if-ge v12, v6, :cond_1

    .line 722
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 723
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 724
    .local v9, "NUID":I
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 725
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 724
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 721
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 728
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 729
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 730
    .local v5, "NPKG":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_7

    .line 731
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 732
    .local v22, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 733
    .restart local v9    # "NUID":I
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_3
    if-ge v15, v9, :cond_6

    .line 734
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 735
    .local v24, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 736
    .local v10, "NVERS":I
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v10, :cond_5

    .line 737
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 738
    .local v18, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 739
    .local v7, "NPROCS":I
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_5
    if-ge v13, v7, :cond_3

    .line 740
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    .line 741
    .local v19, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 742
    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 739
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 745
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 746
    .local v8, "NSRVS":I
    const/4 v14, 0x0

    .local v14, "isvc":I
    :goto_6
    if-ge v14, v8, :cond_4

    .line 747
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    .line 746
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 736
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 733
    .end local v7    # "NPROCS":I
    .end local v8    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 730
    .end local v10    # "NVERS":I
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 753
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 754
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 756
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 757
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    aget-wide v28, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v30, v0

    sub-long v30, p2, v30

    add-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 766
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 768
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 772
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v6, :cond_b

    .line 774
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 776
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 777
    .restart local v9    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_9
    if-ge v15, v9, :cond_a

    .line 779
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    .line 781
    .restart local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 778
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 759
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 773
    .restart local v9    # "NUID":I
    .restart local v15    # "iu":I
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 786
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessState;>;"
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v12, 0x0

    :goto_a
    if-ge v12, v5, :cond_11

    .line 788
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 790
    .restart local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 791
    .restart local v9    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_b
    if-ge v15, v9, :cond_10

    .line 793
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 795
    .restart local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 796
    .restart local v10    # "NVERS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_c
    move/from16 v0, v16

    if-ge v0, v10, :cond_f

    .line 798
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 800
    .restart local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 801
    .restart local v7    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v13, 0x0

    .restart local v13    # "iproc":I
    :goto_d
    if-ge v13, v7, :cond_d

    .line 803
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    .line 805
    .restart local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 807
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 810
    :cond_c
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    .line 814
    .end local v19    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 815
    .restart local v8    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    const/4 v14, 0x0

    .restart local v14    # "isvc":I
    :goto_f
    if-ge v14, v8, :cond_e

    .line 817
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/procstats/ServiceState;

    .line 819
    .local v21, "svc":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 816
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 797
    .end local v21    # "svc":Lcom/android/internal/app/procstats/ServiceState;
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 792
    .end local v7    # "NPROCS":I
    .end local v8    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v18    # "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 787
    .end local v10    # "NVERS":I
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    .line 827
    .end local v9    # "NUID":I
    .end local v15    # "iu":I
    .end local v22    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 828
    .local v4, "NPAGETYPES":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_10
    if-ge v11, v4, :cond_12

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 829
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 835
    :cond_12
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 707
    return-void
.end method

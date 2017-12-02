.class Lcom/android/server/wifi/WifiLogger;
.super Lcom/android/server/wifi/BaseWifiLogger;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLogger$1;,
        Lcom/android/server/wifi/WifiLogger$BugReport;,
        Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DRIVER_DUMP_SECTION_HEADER:Ljava/lang/String; = "Driver state dump"

.field public static final FIRMWARE_DUMP_SECTION_HEADER:Ljava/lang/String; = "FW Memory dump"

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiLogger"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private final RING_BUFFER_BYTE_LIMIT_LARGE:I

.field private final RING_BUFFER_BYTE_LIMIT_SMALL:I

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private mIsLoggingEventHandlerRegistered:Z

.field private final mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:I

.field private mMaxRingBufferSizeBytes:I

.field private mPacketFatesForLastFailure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation
.end field

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/util/ByteArrayRingBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x4000

    const/4 v3, 0x0

    .line 90
    const/16 v0, 0xe10

    const/16 v1, 0x3c

    const/16 v2, 0xa

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    .line 92
    const/high16 v0, 0x10000

    filled-new-array {v3, v4, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/BaseWifiLogger;-><init>()V

    .line 101
    iput v2, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    .line 362
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    .line 361
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 364
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    .line 363
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    .line 368
    new-instance v0, Lcom/android/server/wifi/WifiLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiLogger$1;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    .line 367
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    const v1, 0x10e0014

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x10e0015

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    .line 117
    iput-object p2, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 118
    iput-object p3, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 119
    iput-object p4, p0, Lcom/android/server/wifi/WifiLogger;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 120
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    .line 121
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    .line 111
    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;
    .locals 11
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    .prologue
    const/16 v10, 0x7f

    .line 512
    new-instance v4, Lcom/android/server/wifi/WifiLogger$BugReport;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    .line 513
    .local v4, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput p1, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    .line 515
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    .line 517
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v5, :cond_1

    .line 518
    iget-object v7, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v5, 0x0

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 520
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    .line 521
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 522
    .local v2, "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v5

    new-array v1, v5, [[B

    .line 523
    .local v1, "buffers":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 524
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getBuffer(I)[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    .line 523
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 526
    :cond_0
    iget-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 530
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffers":[[B
    .end local v2    # "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiLogger;->getLogcat(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->logcatLines:Ljava/util/ArrayList;

    .line 531
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiLogger;->getKernelLog(I)Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .line 533
    if-eqz p2, :cond_2

    .line 534
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    .line 535
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getDriverStateDump()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    .line 537
    :cond_2
    return-object v4
.end method

.method private clearVerboseLogs()V
    .locals 2

    .prologue
    .line 399
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiLogger$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$BugReport;->clearVerboseLogs()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiLogger$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$BugReport;->clearVerboseLogs()V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_1
    return-void
.end method

.method private static compressToBase64([B)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # [B

    .prologue
    const/4 v9, 0x0

    .line 548
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    .line 549
    .local v3, "compressor":Ljava/util/zip/Deflater;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 550
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 551
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 552
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v7, p0

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 553
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 555
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v7

    if-nez v7, :cond_0

    .line 556
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    .line 557
    .local v4, "count":I
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 561
    .end local v4    # "count":I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 562
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 576
    .local v2, "compressed":[B
    array-length v7, v2

    array-length v8, p0

    if-ge v7, v8, :cond_1

    .line 575
    .end local v2    # "compressed":[B
    :goto_1
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "result":Ljava/lang/String;
    return-object v6

    .line 563
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 564
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiLogger"

    const-string/jumbo v8, "ByteArrayOutputStream close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {p0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 566
    .restart local v6    # "result":Ljava/lang/String;
    return-object v6

    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "compressed":[B
    :cond_1
    move-object v2, p0

    .line 576
    goto :goto_1
.end method

.method private dumpPacketFates(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 651
    const-string/jumbo v0, "Last failed connection fates"

    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 652
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    move-result v2

    .line 651
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 653
    const-string/jumbo v0, "Latest fates"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 650
    return-void
.end method

.method private static dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "description"    # Ljava/lang/String;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 658
    if-nez p2, :cond_0

    .line 659
    const-string/jumbo v3, "No fates fetched for \"%s\"\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 660
    return-void

    .line 663
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 664
    const-string/jumbo v3, "HAL provided zero fates for \"%s\"\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 665
    return-void

    .line 668
    :cond_1
    const-string/jumbo v3, "--------------------- %s ----------------------\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v2, "verboseOutput":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/wifi/WifiNative$FateReport;->getTableHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fate$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiNative$FateReport;

    .line 673
    .local v0, "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    if-eqz p3, :cond_2

    .line 677
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 682
    .end local v0    # "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    :cond_3
    if-eqz p3, :cond_4

    .line 683
    const-string/jumbo v3, "\n>>> VERBOSE PACKET FATE DUMP <<<\n\n"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    :cond_4
    const-string/jumbo v3, "--------------------------------------------------------------------"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private enableVerboseLoggingForDogfood()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method private fetchPacketFates()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v1, "mergedFates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    new-array v3, v5, [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 626
    .local v3, "txFates":[Lcom/android/server/wifi/WifiNative$TxFateReport;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNative;->getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    .line 628
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "i":I
    :cond_0
    new-array v2, v5, [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 634
    .local v2, "rxFates":[Lcom/android/server/wifi/WifiNative$RxFateReport;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiNative;->getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    .line 636
    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    .end local v0    # "i":I
    :cond_1
    new-instance v4, Lcom/android/server/wifi/WifiLogger$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiLogger$2;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    return-object v1
.end method

.method private fetchRingBuffers()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 411
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_0

    return v1

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 414
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_3

    .line 415
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 417
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 418
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    .line 419
    new-instance v8, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    iget v9, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    invoke-direct {v8, v9}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;-><init>(I)V

    .line 418
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    iget v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 422
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_3
    const-string/jumbo v3, "WifiLogger"

    const-string/jumbo v4, "no ring buffers found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private getAllRingBufferData()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 490
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v2, :cond_0

    .line 491
    const-string/jumbo v2, "WifiLogger"

    const-string/jumbo v4, "Not ring buffers available to collect data!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v3

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 496
    .local v0, "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    move-result v1

    .line 497
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 498
    const-string/jumbo v2, "WifiLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail to get ring buffer data of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v3

    .line 495
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, "WifiLogger"

    const-string/jumbo v3, "getAllRingBufferData Successfully!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v2, 0x1

    return v2
.end method

.method private getKernelLog(I)Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .locals 5
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v1, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    .line 610
    .local v1, "lines":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->readKernelLog()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "log":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "logLines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 613
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-object v1
.end method

.method private getLogcat(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    .local v2, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "logcat -t %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 589
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    .line 590
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 589
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 592
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WifiLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception while capturing logcat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 595
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "process":Ljava/lang/Process;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 596
    .end local v4    # "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 595
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 597
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 598
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 600
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 395
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeRingBuffers()V
    .locals 3

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "byteArrayRingBuffer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 434
    .local v0, "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->resize(I)V

    goto :goto_0

    .line 432
    .end local v0    # "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    :cond_0
    return-void
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v2, :cond_0

    .line 442
    return v1

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 447
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 445
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    goto :goto_1

    .line 456
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v2, 0x0

    .line 461
    sget-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v3, v0, v1

    .line 462
    .local v3, "minInterval":I
    sget-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v4, v0, v1

    .line 464
    .local v4, "minDataSize":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 465
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    .line 464
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    return v2

    .line 470
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v1, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 483
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    .prologue
    monitor-enter p0

    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .line 211
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    .line 212
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 209
    return-void

    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .line 205
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 203
    return-void

    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 217
    :try_start_0
    invoke-super {p0, p2}, Lcom/android/server/wifi/BaseWifiLogger;->dump(Ljava/io/PrintWriter;)V

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alert dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 227
    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 230
    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFates(Ljava/io/PrintWriter;)V

    .line 234
    const-string/jumbo v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "WifiNative - Log Begin ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "WifiNative - Log End ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getBugReports()Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    return-object v0
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    .prologue
    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 382
    .local v0, "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->appendBuffer([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 380
    return-void

    .end local v0    # "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    .prologue
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 390
    const v1, 0x20064

    const/4 v2, 0x0

    .line 389
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 387
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reportConnectionFailure()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 198
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 2
    .param p1, "verboseEnabled"    # Z

    .prologue
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    .line 134
    :cond_0
    if-eqz p1, :cond_4

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    .line 136
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchRingBuffers()Z

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->resizeRingBuffers()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->startLoggingAllExceptPerPacketBuffers()Z

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoring()Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    const-string/jumbo v0, "WifiLogger"

    const-string/jumbo v1, "Failed to start packet fate monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 125
    return-void

    .line 138
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    .line 139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->enableVerboseLoggingForDogfood()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    .line 139
    :goto_1
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    .line 141
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->clearVerboseLogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->RING_BUFFER_BYTE_LIMIT_SMALL:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 161
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v0, "WifiLogger"

    const-string/jumbo v1, "Fail to reset log handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    .line 190
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 179
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 170
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 83
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 86
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 87
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    .prologue
    .line 547
    const-wide/16 v4, 0x3c

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 548
    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    .line 547
    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 549
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_0

    .line 550
    const-string/jumbo v4, "Unable to build stats!"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    return-void

    .line 553
    :cond_0
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 554
    .local v3, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 555
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 556
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 557
    const-string/jumbo v4, "Failure reading: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    return-void

    .line 560
    :cond_1
    if-eqz p7, :cond_2

    .line 561
    move-object/from16 v0, p6

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 563
    :cond_2
    if-nez p8, :cond_3

    if-eqz p9, :cond_5

    .line 564
    :cond_3
    if-eqz p9, :cond_4

    const/4 v8, 0x0

    :goto_1
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v8, p11

    .line 566
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 572
    const-string/jumbo v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string/jumbo v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string/jumbo v0, "    [--start-testing] [--stop-testing] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string/jumbo v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string/jumbo v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string/jumbo v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string/jumbo v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const-string/jumbo v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string/jumbo v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string/jumbo v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string/jumbo v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string/jumbo v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 55
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 624
    .local v12, "now":J
    const/16 v47, 0x0

    .line 625
    .local v47, "isCheckin":Z
    const/16 v23, 0x0

    .line 626
    .local v23, "isCompact":Z
    const/16 v48, 0x0

    .line 627
    .local v48, "isCsv":Z
    const/16 v38, 0x0

    .line 628
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    .line 629
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    .line 630
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    .line 631
    .local v26, "dumpAll":Z
    const/16 v51, 0x0

    .line 632
    .local v51, "quit":Z
    const/4 v2, 0x0

    .line 633
    .local v2, "aggregateHours":I
    const/16 v49, 0x0

    .line 634
    .local v49, "lastIndex":I
    const/16 v50, 0x2

    .line 635
    .local v50, "maxNum":I
    const/16 v27, 0x0

    .line 636
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    .line 637
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 638
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x0

    const/4 v4, 0x4

    filled-new-array {v3, v4}, [I

    move-result-object v7

    .line 639
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    .line 640
    .local v8, "csvSepMemStats":Z
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v3, v9, v4

    .line 641
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    .line 642
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 643
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_21

    .line 644
    const/16 v46, 0x0

    .end local v6    # "csvSepScreenStats":Z
    .end local v8    # "csvSepMemStats":Z
    .end local v10    # "csvSepProcStats":Z
    .end local v14    # "reqPackage":Ljava/lang/String;
    .local v46, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-ge v0, v3, :cond_21

    .line 645
    aget-object v28, p3, v46

    .line 646
    .local v28, "arg":Ljava/lang/String;
    const-string/jumbo v3, "--checkin"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    const/16 v47, 0x1

    .line 644
    :goto_1
    add-int/lit8 v46, v46, 0x1

    goto :goto_0

    .line 648
    :cond_0
    const-string/jumbo v3, "-c"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    const/16 v23, 0x1

    goto :goto_1

    .line 650
    :cond_1
    const-string/jumbo v3, "--csv"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    const/16 v48, 0x1

    goto :goto_1

    .line 652
    :cond_2
    const-string/jumbo v3, "--csv-screen"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 653
    add-int/lit8 v46, v46, 0x1

    .line 654
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_3

    .line 655
    const-string/jumbo v3, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 657
    return-void

    .line 659
    :cond_3
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v52, v0

    .line 660
    .local v52, "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 661
    .local v41, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 662
    aget-object v4, p3, v46

    const/4 v5, 0x4

    .line 661
    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    .line 663
    if-nez v7, :cond_4

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v41, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 666
    return-void

    .line 668
    :cond_4
    const/4 v3, 0x0

    aget-boolean v6, v52, v3

    .local v6, "csvSepScreenStats":Z
    goto/16 :goto_1

    .line 669
    .end local v6    # "csvSepScreenStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_5
    const-string/jumbo v3, "--csv-mem"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 670
    add-int/lit8 v46, v46, 0x1

    .line 671
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_6

    .line 672
    const-string/jumbo v3, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 674
    return-void

    .line 676
    :cond_6
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v52, v0

    .line 677
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 678
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, p3, v46

    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v9

    .line 680
    if-nez v9, :cond_7

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v41, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 683
    return-void

    .line 685
    :cond_7
    const/4 v3, 0x0

    aget-boolean v8, v52, v3

    .local v8, "csvSepMemStats":Z
    goto/16 :goto_1

    .line 686
    .end local v8    # "csvSepMemStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_8
    const-string/jumbo v3, "--csv-proc"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 687
    add-int/lit8 v46, v46, 0x1

    .line 688
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_9

    .line 689
    const-string/jumbo v3, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 691
    return-void

    .line 693
    :cond_9
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v52, v0

    .line 694
    .restart local v52    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 695
    .restart local v41    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, p3, v46

    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    .line 697
    if-nez v11, :cond_a

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v41, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 700
    return-void

    .line 702
    :cond_a
    const/4 v3, 0x0

    aget-boolean v10, v52, v3

    .local v10, "csvSepProcStats":Z
    goto/16 :goto_1

    .line 703
    .end local v10    # "csvSepProcStats":Z
    .end local v41    # "error":[Ljava/lang/String;
    .end local v52    # "sep":[Z
    :cond_b
    const-string/jumbo v3, "--details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 704
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 705
    :cond_c
    const-string/jumbo v3, "--full-details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 706
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 707
    :cond_d
    const-string/jumbo v3, "--hours"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 708
    add-int/lit8 v46, v46, 0x1

    .line 709
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_e

    .line 710
    const-string/jumbo v3, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 712
    return-void

    .line 715
    :cond_e
    :try_start_0
    aget-object v3, p3, v46

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_1

    .line 716
    :catch_0
    move-exception v39

    .line 717
    .local v39, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 719
    return-void

    .line 721
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v3, "--last"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 722
    add-int/lit8 v46, v46, 0x1

    .line 723
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_10

    .line 724
    const-string/jumbo v3, "Error: argument required for --last"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 726
    return-void

    .line 729
    :cond_10
    :try_start_1
    aget-object v3, p3, v46

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v49

    goto/16 :goto_1

    .line 730
    :catch_1
    move-exception v39

    .line 731
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: --last argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 733
    return-void

    .line 735
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string/jumbo v3, "--max"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 736
    add-int/lit8 v46, v46, 0x1

    .line 737
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v46

    if-lt v0, v3, :cond_12

    .line 738
    const-string/jumbo v3, "Error: argument required for --max"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 740
    return-void

    .line 743
    :cond_12
    :try_start_2
    aget-object v3, p3, v46

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v50

    goto/16 :goto_1

    .line 744
    :catch_2
    move-exception v39

    .line 745
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: --max argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v46

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 747
    return-void

    .line 749
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string/jumbo v3, "--active"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 750
    const/16 v27, 0x1

    .line 751
    const/16 v38, 0x1

    goto/16 :goto_1

    .line 752
    :cond_14
    const-string/jumbo v3, "--current"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 753
    const/16 v38, 0x1

    goto/16 :goto_1

    .line 754
    :cond_15
    const-string/jumbo v3, "--commit"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 757
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 758
    const-string/jumbo v3, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 759
    const/16 v51, 0x1

    monitor-exit v4

    .line 755
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 761
    :cond_16
    const-string/jumbo v3, "--reset"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 764
    const-string/jumbo v3, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 765
    const/16 v51, 0x1

    monitor-exit v4

    .line 762
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 767
    :cond_17
    const-string/jumbo v3, "--clear"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 770
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v45

    .line 771
    .local v45, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_18

    .line 772
    const/16 v42, 0x0

    .local v42, "fi":I
    :goto_2
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v42

    if-ge v0, v3, :cond_18

    .line 773
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v45

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 772
    add-int/lit8 v42, v42, 0x1

    goto :goto_2

    .line 776
    .end local v42    # "fi":I
    :cond_18
    const-string/jumbo v3, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 777
    const/16 v51, 0x1

    monitor-exit v4

    .line 768
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 779
    :cond_19
    const-string/jumbo v3, "--write"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 782
    const-string/jumbo v3, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 783
    const/16 v51, 0x1

    monitor-exit v4

    .line 780
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 785
    :cond_1a
    const-string/jumbo v3, "--read"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 788
    const-string/jumbo v3, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 789
    const/16 v51, 0x1

    monitor-exit v4

    .line 786
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_4
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 791
    :cond_1b
    const-string/jumbo v3, "--start-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 794
    const-string/jumbo v3, "Started high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 795
    const/16 v51, 0x1

    monitor-exit v4

    .line 792
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_5
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 797
    :cond_1c
    const-string/jumbo v3, "--stop-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 800
    const-string/jumbo v3, "Stopped high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 801
    const/16 v51, 0x1

    monitor-exit v4

    .line 798
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_6
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 803
    :cond_1d
    const-string/jumbo v3, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 804
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 805
    return-void

    .line 806
    :cond_1e
    const-string/jumbo v3, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 807
    const/16 v24, 0x1

    .line 808
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 809
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_20

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_20

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 812
    return-void

    .line 815
    :cond_20
    move-object/from16 v14, v28

    .line 820
    .local v14, "reqPackage":Ljava/lang/String;
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 825
    .end local v14    # "reqPackage":Ljava/lang/String;
    .end local v28    # "arg":Ljava/lang/String;
    .end local v46    # "i":I
    :cond_21
    if-eqz v51, :cond_22

    .line 826
    return-void

    .line 829
    :cond_22
    if-eqz v48, :cond_26

    .line 830
    const-string/jumbo v3, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    if-nez v6, :cond_23

    .line 832
    const/16 v46, 0x0

    .restart local v46    # "i":I
    :goto_3
    array-length v3, v7

    move/from16 v0, v46

    if-ge v0, v3, :cond_23

    .line 833
    const-string/jumbo v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    aget v3, v7, v46

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 832
    add-int/lit8 v46, v46, 0x1

    goto :goto_3

    .line 837
    .end local v46    # "i":I
    :cond_23
    if-nez v8, :cond_24

    .line 838
    const/16 v46, 0x0

    .restart local v46    # "i":I
    :goto_4
    array-length v3, v9

    move/from16 v0, v46

    if-ge v0, v3, :cond_24

    .line 839
    const-string/jumbo v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    aget v3, v9, v46

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 838
    add-int/lit8 v46, v46, 0x1

    goto :goto_4

    .line 843
    .end local v46    # "i":I
    :cond_24
    if-nez v10, :cond_25

    .line 844
    const/16 v46, 0x0

    .restart local v46    # "i":I
    :goto_5
    array-length v3, v11

    move/from16 v0, v46

    if-ge v0, v3, :cond_25

    .line 845
    const-string/jumbo v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v4, v11, v46

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    add-int/lit8 v46, v46, 0x1

    goto :goto_5

    .line 849
    .end local v46    # "i":I
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 851
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    monitor-exit v16

    .line 850
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 872
    return-void

    .line 850
    :catchall_7
    move-exception v3

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 873
    :cond_26
    if-eqz v2, :cond_27

    .line 874
    const-string/jumbo v3, "AGGREGATED OVER LAST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 877
    return-void

    .line 878
    :cond_27
    if-lez v49, :cond_33

    .line 879
    const-string/jumbo v3, "LAST STATS AT INDEX "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v45

    .line 881
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v49

    if-lt v0, v3, :cond_28

    .line 882
    const-string/jumbo v3, "Only have "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " data sets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    return-void

    .line 885
    :cond_28
    new-instance v43, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 886
    .local v43, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 887
    .local v15, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 888
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 889
    if-nez v47, :cond_29

    if-eqz v23, :cond_2a

    :cond_29
    const-string/jumbo v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    :cond_2a
    const-string/jumbo v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    return-void

    .line 894
    :cond_2b
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v44

    .line 895
    .local v44, "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 896
    .local v37, "checkedIn":Z
    if-nez v47, :cond_2c

    if-eqz v23, :cond_2e

    .line 898
    :cond_2c
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 914
    :cond_2d
    :goto_6
    return-void

    .line 900
    :cond_2e
    const-string/jumbo v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    if-eqz v37, :cond_2f

    const-string/jumbo v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    :cond_2f
    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    if-nez v24, :cond_30

    if-eqz v25, :cond_32

    .line 905
    :cond_30
    if-eqz v25, :cond_31

    const/16 v20, 0x0

    :goto_7
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 907
    if-eqz v26, :cond_2d

    .line 908
    const-string/jumbo v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 905
    :cond_31
    const/16 v20, 0x1

    goto :goto_7

    :cond_32
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 911
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_6

    .line 917
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_33
    const/16 v53, 0x0

    .line 918
    .local v53, "sepNeeded":Z
    if-nez v26, :cond_34

    if-eqz v47, :cond_42

    .line 919
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 921
    if-eqz v47, :cond_39

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v45

    .line 922
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v45, :cond_41

    .line 923
    if-eqz v47, :cond_3a

    const/16 v54, 0x0

    .line 924
    .local v54, "start":I
    :goto_9
    if-gez v54, :cond_35

    .line 925
    const/16 v54, 0x0

    .line 927
    :cond_35
    move/from16 v46, v54

    .restart local v46    # "i":I
    :goto_a
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-result v3

    move/from16 v0, v46

    if-ge v0, v3, :cond_41

    .line 930
    :try_start_c
    new-instance v43, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 931
    .restart local v43    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 932
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 933
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_3b

    .line 934
    if-nez v47, :cond_36

    if-eqz v23, :cond_37

    :cond_36
    const-string/jumbo v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    :cond_37
    const-string/jumbo v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    const-string/jumbo v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 927
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v43    # "file":Landroid/util/AtomicFile;
    :cond_38
    :goto_b
    add-int/lit8 v46, v46, 0x1

    goto :goto_a

    .line 921
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_39
    const/4 v3, 0x1

    goto :goto_8

    .line 923
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    :try_start_d
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-result v3

    sub-int v54, v3, v50

    .restart local v54    # "start":I
    goto :goto_9

    .line 941
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v46    # "i":I
    :cond_3b
    :try_start_e
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v44

    .line 942
    .restart local v44    # "fileStr":Ljava/lang/String;
    const-string/jumbo v3, ".ci"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 943
    .restart local v37    # "checkedIn":Z
    if-nez v47, :cond_3c

    if-eqz v23, :cond_3d

    .line 945
    :cond_3c
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 966
    :goto_c
    if-eqz v47, :cond_38

    .line 968
    invoke-virtual/range {v43 .. v43}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    .line 969
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v16, ".ci"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 968
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_b

    .line 971
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    :catch_3
    move-exception v40

    .line 972
    .local v40, "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v3, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_b

    .line 977
    .end local v40    # "e":Ljava/lang/Throwable;
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "i":I
    .end local v54    # "start":I
    :catchall_8
    move-exception v3

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 977
    throw v3

    .line 947
    .restart local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v43    # "file":Landroid/util/AtomicFile;
    .restart local v44    # "fileStr":Ljava/lang/String;
    .restart local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v46    # "i":I
    .restart local v54    # "start":I
    :cond_3d
    if-eqz v53, :cond_3f

    .line 948
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 952
    :goto_d
    const-string/jumbo v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget-object v3, v15, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 954
    if-eqz v37, :cond_3e

    const-string/jumbo v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    :cond_3e
    const-string/jumbo v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    if-eqz v25, :cond_40

    .line 960
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto/16 :goto_c

    .line 950
    :cond_3f
    const/16 v53, 0x1

    goto :goto_d

    :cond_40
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 963
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto/16 :goto_c

    .line 978
    .end local v15    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v43    # "file":Landroid/util/AtomicFile;
    .end local v44    # "fileStr":Ljava/lang/String;
    .end local v46    # "i":I
    .end local v54    # "start":I
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 981
    .end local v45    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_42
    if-nez v47, :cond_44

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 983
    if-eqz v23, :cond_45

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :goto_e
    monitor-exit v4

    .line 982
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1002
    if-nez v38, :cond_44

    .line 1003
    if-eqz v53, :cond_43

    .line 1004
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1006
    :cond_43
    const-string/jumbo v3, "AGGREGATED OVER LAST 24 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    const-wide/16 v18, 0x18

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1010
    const-string/jumbo v3, "AGGREGATED OVER LAST 3 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const-wide/16 v18, 0x3

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 621
    :cond_44
    return-void

    .line 986
    :cond_45
    if-eqz v53, :cond_46

    .line 987
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 989
    :cond_46
    const-string/jumbo v3, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    if-nez v24, :cond_47

    if-eqz v25, :cond_4a

    .line 991
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v29, v0

    if-eqz v25, :cond_49

    const/16 v34, 0x0

    :goto_f
    move-object/from16 v30, p2

    move-object/from16 v31, v14

    move-wide/from16 v32, v12

    move/from16 v35, v26

    move/from16 v36, v27

    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 993
    if-eqz v26, :cond_48

    .line 994
    const-string/jumbo v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 999
    :cond_48
    :goto_10
    const/16 v53, 0x1

    goto :goto_e

    .line 991
    :cond_49
    const/16 v34, 0x1

    goto :goto_f

    .line 997
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v18, p2

    move-object/from16 v19, v14

    move-wide/from16 v20, v12

    move/from16 v22, v27

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_10

    .line 982
    :catchall_9
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 340
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 341
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-gt v6, p1, :cond_1

    .line 342
    :cond_0
    return-object v7

    .line 344
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 348
    aget-object v1, v3, v5

    .line 349
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_3

    const-string/jumbo v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 355
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 359
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 362
    return-object v4
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .prologue
    .line 395
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 397
    .local v5, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v2, v8, :cond_8

    .line 398
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, "c":C
    :goto_1
    const/16 v8, 0x2c

    if-eq v0, v8, :cond_1

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_1

    const/16 v8, 0x20

    if-eq v0, v8, :cond_1

    if-eqz v0, :cond_1

    .line 397
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "c":C
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 402
    .restart local v0    # "c":C
    :cond_1
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_4

    const/4 v3, 0x1

    .line 403
    .local v3, "isSep":Z
    :goto_3
    if-nez v5, :cond_5

    .line 405
    const/4 v8, 0x0

    aput-boolean v3, p3, v8

    .line 410
    :cond_2
    add-int/lit8 v8, v2, -0x1

    if-ge v5, v8, :cond_7

    .line 411
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v8, p0

    if-ge v4, v8, :cond_3

    .line 413
    aget-object v8, p0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    const/4 v7, 0x0

    .line 419
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_7

    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p4, v9

    .line 421
    const/4 v8, 0x0

    return-object v8

    .line 402
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isSep":Z
    goto :goto_3

    .line 406
    :cond_5
    if-eqz v0, :cond_2

    const/4 v8, 0x0

    aget-boolean v8, p3, v8

    if-eq v8, v3, :cond_2

    .line 407
    const-string/jumbo v8, "inconsistent separators (can\'t mix \',\' with \'+\')"

    const/4 v9, 0x0

    aput-object v8, p4, v9

    .line 408
    const/4 v8, 0x0

    return-object v8

    .line 412
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 424
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    .line 427
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 428
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 429
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 431
    :cond_9
    return-object v1
.end method

.method private updateFile()V
    .locals 5

    .prologue
    .line 242
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    const-string/jumbo v4, ".bin"

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 241
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v1, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 204
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 199
    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 13
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 167
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    const-string/jumbo v3, ", uid="

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 609
    const-string/jumbo v3, " without permission "

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 609
    const-string/jumbo v3, "android.permission.DUMP"

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    return-void

    .line 613
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 615
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    return-void

    .line 616
    :catchall_0
    move-exception v2

    .line 617
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 381
    const/4 v9, 0x0

    move-object v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    .line 380
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 382
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 383
    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 386
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 388
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 540
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 539
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 540
    return v0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v9, 0x0

    .line 435
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 436
    const-string/jumbo v8, "android.permission.PACKAGE_USAGE_STATS"

    .line 435
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "current":Landroid/os/Parcel;
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 440
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 441
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 442
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 444
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    if-eqz p1, :cond_0

    .line 447
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_1
    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 448
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 452
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    .line 451
    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 453
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 449
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 438
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    .line 454
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failure opening procstat file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 460
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_1
    move-exception v7

    .line 461
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 460
    throw v7

    .line 461
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    return-object v7
.end method

.method public getMemFactorLocked()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 27
    .param p1, "minTime"    # J

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 468
    const-string/jumbo v20, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v21, 0x0

    .line 467
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 471
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 473
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v22, v0

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    sub-long v4, v22, v24

    .local v4, "curTime":J
    monitor-exit v20

    .line 471
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 481
    cmp-long v19, v4, p1

    if-gez v19, :cond_2

    .line 483
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 484
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 485
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 486
    sget-object v19, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessStats;

    .line 487
    .local v17, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .line 489
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    .line 490
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    .line 489
    sub-long v20, v20, v22

    cmp-long v19, v20, p1

    if-gez v19, :cond_1

    .line 491
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v20, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 492
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    .line 493
    new-instance v12, Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 494
    .local v12, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 495
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 496
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 497
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v19, "Added stats: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string/jumbo v19, ", over "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    .line 502
    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    .line 501
    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 503
    const-string/jumbo v19, "ProcessStatsService"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 530
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :catch_0
    move-exception v7

    .line 531
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "ProcessStatsService"

    const-string/jumbo v20, "Failed building output pipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    const/16 v19, 0x0

    return-object v19

    .line 471
    .end local v4    # "curTime":J
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "now":J
    :catchall_0
    move-exception v19

    monitor-exit v20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v19

    .line 505
    .restart local v4    # "curTime":J
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    :try_start_3
    const-string/jumbo v20, "ProcessStatsService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failure reading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 506
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 505
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 532
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_1
    move-exception v19

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 532
    throw v19

    .line 510
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 511
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 514
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 515
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 517
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    const-string/jumbo v19, "ProcessStats pipe output"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 528
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 529
    const/16 v19, 0x0

    aget-object v19, v8, v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 529
    return-object v19
.end method

.method public isMemFactorLowered()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 107
    const-string/jumbo v1, "ProcessStatsService"

    const-string/jumbo v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_0
    throw v0
.end method

.method performWriteState()V
    .locals 6

    .prologue
    .line 251
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 253
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 254
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-nez v0, :cond_0

    monitor-exit v5

    .line 256
    return-void

    .line 258
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 259
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 260
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 263
    const/4 v3, 0x0

    .line 265
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 266
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 268
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 251
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 270
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "ProcessStatsService"

    const-string/jumbo v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 276
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    throw v4
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .prologue
    const/4 v5, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 283
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 285
    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 286
    const-string/jumbo v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return v5

    .line 330
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 332
    const-string/jumbo v2, "ProcessStatsService"

    const-string/jumbo v3, "Error reading process statistics"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v5

    .line 335
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 21
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 130
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 131
    if-eqz p2, :cond_0

    .line 132
    add-int/lit8 p1, p1, 0x4

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v15, v15, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v16, v14, v15

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, p3, v18

    .line 136
    add-long v16, v16, v18

    aput-wide v16, v14, v15

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move/from16 v0, p1

    iput v0, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 143
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "ipkg":I
    :goto_1
    if-ltz v4, :cond_6

    .line 144
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 145
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "iuid":I
    :goto_2
    if-ltz v6, :cond_5

    .line 146
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 147
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "iver":I
    :goto_3
    if-ltz v7, :cond_4

    .line 148
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 149
    .local v8, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 150
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "isvc":I
    :goto_4
    if-ltz v5, :cond_3

    .line 151
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 152
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 150
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 129
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 145
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 143
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 157
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    const/4 v14, 0x1

    return v14

    .line 159
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_7
    const/4 v14, 0x0

    return v14
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v6, 0x1

    .line 172
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    .line 173
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 176
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v2, v4

    .line 175
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 177
    iput-boolean v6, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 179
    :cond_0
    return v6

    .line 181
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownLocked()V
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "ProcessStatsService"

    const-string/jumbo v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 187
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 184
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 366
    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 367
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 371
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "file":Ljava/lang/String;
    const-string/jumbo v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 365
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 191
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 209
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-eqz v2, :cond_1

    .line 222
    :goto_0
    if-eqz p2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 224
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 226
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 227
    const-string/jumbo v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez p1, :cond_3

    .line 229
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 234
    return-void

    .line 212
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 213
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 214
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 215
    if-eqz p2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 220
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "now":J
    :cond_3
    monitor-exit v3

    .line 238
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    .line 208
    return-void
.end method

.method public writeStateSyncLocked()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 195
    return-void
.end method

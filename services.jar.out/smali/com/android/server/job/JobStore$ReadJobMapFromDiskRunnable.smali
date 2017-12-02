.class Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 437
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 695
    const-string/jumbo v4, "jobid"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 696
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "class"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 704
    const-string/jumbo v1, "connectivity"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 708
    :cond_0
    const-string/jumbo v1, "unmetered"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_1

    .line 710
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 712
    :cond_1
    const-string/jumbo v1, "not-roaming"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_2

    .line 714
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 716
    :cond_2
    const-string/jumbo v1, "idle"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 720
    :cond_3
    const-string/jumbo v1, "charging"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_4

    .line 722
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 703
    :cond_4
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 750
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 752
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    .line 753
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    .line 754
    .local v8, "latestRunTimeElapsed":J
    const-string/jumbo v21, "deadline"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 755
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 756
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 758
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 759
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    .line 761
    .end local v10    # "latestRuntimeWallclock":J
    .end local v12    # "maxDelayElapsed":J
    :cond_0
    const-string/jumbo v21, "delay"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 762
    if-eqz v20, :cond_1

    .line 763
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 765
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 766
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    .line 769
    .end local v6    # "earliestRuntimeWallclock":J
    .end local v14    # "minDelayElapsed":J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    return-object v21
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, 0x0

    .line 731
    const-string/jumbo v4, "initial-backoff"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 733
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 734
    .local v2, "initialBackoff":J
    const-string/jumbo v4, "backoff-policy"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 736
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 730
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;
    .locals 13
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 472
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 473
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 475
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 476
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v12, :cond_0

    .line 477
    if-eq v1, v11, :cond_0

    .line 478
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 479
    const-string/jumbo v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Start tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :cond_0
    if-ne v1, v11, :cond_1

    .line 485
    return-object v10

    .line 488
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "job-info"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 494
    .local v6, "version":I
    if-eqz v6, :cond_2

    .line 495
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    return-object v10

    .line 498
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-object v10

    .line 502
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 505
    :cond_3
    if-ne v1, v12, :cond_4

    .line 506
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 508
    const-string/jumbo v7, "job"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 509
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 510
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_5

    .line 514
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 521
    if-ne v1, v11, :cond_3

    .line 522
    return-object v2

    .line 516
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_5
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 524
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_6
    return-object v10
.end method

.method private restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 36
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v28

    .line 540
    .local v28, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v7, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 541
    const-string/jumbo v7, "uid"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 543
    .local v8, "uid":I
    const-string/jumbo v7, "priority"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 544
    .local v29, "val":Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 545
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 547
    :cond_0
    const-string/jumbo v7, "flags"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 548
    if-eqz v29, :cond_1

    .line 549
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 551
    :cond_1
    const-string/jumbo v7, "sourceUserId"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 552
    if-nez v29, :cond_3

    const/4 v10, -0x1

    .line 558
    .local v10, "sourceUserId":I
    :goto_0
    const-string/jumbo v7, "sourcePackageName"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 560
    .local v9, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v7, "sourceTag"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, "sourceTag":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .line 566
    .local v24, "eventType":I
    const/4 v7, 0x4

    move/from16 v0, v24

    if-eq v0, v7, :cond_2

    .line 568
    const/4 v7, 0x2

    move/from16 v0, v24

    if-ne v0, v7, :cond_4

    .line 569
    const-string/jumbo v7, "constraints"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 568
    :goto_1
    if-nez v7, :cond_5

    .line 571
    const/4 v7, 0x0

    return-object v7

    .line 552
    .end local v9    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "sourceUserId":I
    .end local v11    # "sourceTag":Ljava/lang/String;
    .end local v24    # "eventType":I
    :cond_3
    :try_start_1
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .restart local v10    # "sourceUserId":I
    goto :goto_0

    .line 553
    .end local v8    # "uid":I
    .end local v10    # "sourceUserId":I
    .end local v28    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v29    # "val":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 554
    .local v20, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error parsing job\'s required fields, skipping"

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v7, 0x0

    return-object v7

    .line 568
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "uid":I
    .restart local v9    # "sourcePackageName":Ljava/lang/String;
    .restart local v10    # "sourceUserId":I
    .restart local v11    # "sourceTag":Ljava/lang/String;
    .restart local v24    # "eventType":I
    .restart local v28    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v29    # "val":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 574
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 579
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 583
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .line 584
    const/4 v7, 0x4

    move/from16 v0, v24

    if-eq v0, v7, :cond_6

    .line 585
    const/4 v7, 0x2

    move/from16 v0, v24

    if-eq v0, v7, :cond_7

    .line 586
    const/4 v7, 0x0

    return-object v7

    .line 575
    :catch_1
    move-exception v20

    .line 576
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading constraints, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v7, 0x0

    return-object v7

    .line 592
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v21

    .line 600
    .local v21, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 601
    .local v22, "elapsedNow":J
    const-string/jumbo v7, "periodic"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 603
    :try_start_4
    const-string/jumbo v7, "period"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 604
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 605
    .local v30, "periodMillis":J
    const-string/jumbo v7, "flex"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 606
    if-eqz v29, :cond_a

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 607
    .local v26, "flexMillis":J
    :goto_2
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 612
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v14, v22, v30

    add-long v14, v14, v26

    cmp-long v7, v12, v14

    if-lez v7, :cond_8

    .line 613
    add-long v12, v22, v26

    add-long v18, v12, v30

    .line 615
    .local v18, "clampedLateRuntimeElapsed":J
    sub-long v16, v18, v26

    .line 617
    .local v16, "clampedEarlyRuntimeElapsed":J
    const-string/jumbo v12, "JobStore"

    .line 618
    const-string/jumbo v13, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    const/4 v7, 0x5

    new-array v14, v7, [Ljava/lang/Object;

    .line 620
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 621
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v14, v15

    .line 622
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v14, v15

    .line 624
    const-wide/16 v32, 0x3e8

    div-long v32, v16, v32

    .line 623
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v14, v15

    .line 626
    const-wide/16 v32, 0x3e8

    div-long v32, v18, v32

    .line 625
    invoke-static/range {v32 .. v33}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x4

    aput-object v7, v14, v15

    .line 618
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 617
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v21

    .line 655
    .end local v16    # "clampedEarlyRuntimeElapsed":J
    .end local v18    # "clampedLateRuntimeElapsed":J
    .end local v26    # "flexMillis":J
    .end local v30    # "periodMillis":J
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 657
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 661
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .line 662
    const/4 v7, 0x4

    move/from16 v0, v24

    if-eq v0, v7, :cond_9

    .line 663
    const/4 v7, 0x2

    move/from16 v0, v24

    if-ne v0, v7, :cond_e

    .line 664
    const-string/jumbo v7, "extras"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 663
    :goto_4
    if-nez v7, :cond_f

    .line 668
    const/4 v7, 0x0

    return-object v7

    .line 593
    .end local v21    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v22    # "elapsedNow":J
    :catch_2
    move-exception v20

    .line 597
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    return-object v7

    .line 606
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v22    # "elapsedNow":J
    .restart local v30    # "periodMillis":J
    :cond_a
    move-wide/from16 v26, v30

    .restart local v26    # "flexMillis":J
    goto/16 :goto_2

    .line 631
    .end local v26    # "flexMillis":J
    .end local v30    # "periodMillis":J
    :catch_3
    move-exception v20

    .line 632
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading periodic execution criteria, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v7, 0x0

    return-object v7

    .line 635
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v7, "one-off"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 637
    :try_start_5
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_c

    .line 638
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v12, v22

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 640
    :cond_c
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v7, v12, v14

    if-eqz v7, :cond_8

    .line 642
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v12, v22

    .line 641
    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 644
    :catch_4
    move-exception v20

    .line 645
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v12, "Error reading job execution criteria, skipping."

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v7, 0x0

    return-object v7

    .line 653
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v7, 0x0

    return-object v7

    .line 663
    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    .line 671
    :cond_f
    invoke-static/range {p1 .. p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v25

    .line 672
    .local v25, "extras":Landroid/os/PersistableBundle;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 673
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 676
    const-string/jumbo v7, "android"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 677
    if-eqz v25, :cond_10

    .line 678
    const-string/jumbo v7, "SyncManagerJob"

    const/4 v12, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 676
    if-eqz v7, :cond_10

    .line 679
    const-string/jumbo v7, "owningPackage"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 687
    :cond_10
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    .line 688
    invoke-virtual/range {v28 .. v28}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 689
    move-object/from16 v0, v21

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 687
    invoke-direct/range {v6 .. v15}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;JJ)V

    .line 690
    .local v6, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v6
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 445
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v6}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 446
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v7, v6, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 447
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;

    move-result-object v5

    .line 448
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_0

    .line 449
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 450
    iget-object v8, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8, v6}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    :try_start_2
    monitor-exit v7

    .line 454
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 442
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1
    return-void

    .line 446
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 455
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 459
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 463
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

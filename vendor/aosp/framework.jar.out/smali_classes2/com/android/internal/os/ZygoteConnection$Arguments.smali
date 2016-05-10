.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field classpath:Ljava/lang/String;

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field runtimeInit:Z

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 348
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 361
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 419
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 12
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v3, 0x0

    .line 434
    .local v3, "curArg":I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_0

    .line 435
    aget-object v0, p1, v3

    .line 437
    .local v0, "arg":Ljava/lang/String;
    const-string v9, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 438
    add-int/lit8 v3, v3, 0x1

    .line 577
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_24

    .line 578
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--runtime-init and -classpath are incompatible"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 440
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string v9, "--setuid="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 441
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v9, :cond_2

    .line 442
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 445
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 446
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 434
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    :cond_4
    const-string v9, "--setgid="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 449
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-eqz v9, :cond_5

    .line 450
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 453
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 454
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto :goto_1

    .line 456
    :cond_6
    const-string v9, "--target-sdk-version="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 457
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-eqz v9, :cond_7

    .line 458
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate target-sdk-version specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 461
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 462
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto :goto_1

    .line 464
    :cond_8
    const-string v9, "--enable-debugger"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 465
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 466
    :cond_9
    const-string v9, "--enable-safemode"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 467
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 468
    :cond_a
    const-string v9, "--enable-checkjni"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 469
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 470
    :cond_b
    const-string v9, "--enable-jni-logging"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 471
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 472
    :cond_c
    const-string v9, "--enable-assert"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 473
    iget v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 474
    :cond_d
    const-string v9, "--runtime-init"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 475
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    goto/16 :goto_1

    .line 476
    :cond_e
    const-string v9, "--seinfo="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 477
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    if-eqz v9, :cond_f

    .line 478
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 481
    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    .line 482
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 483
    :cond_10
    const-string v9, "--capabilities="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 484
    iget-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-eqz v9, :cond_11

    .line 485
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 488
    :cond_11
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 489
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "capString":Ljava/lang/String;
    const-string v9, ","

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "capStrings":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 494
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 495
    iget-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto/16 :goto_1

    .line 497
    :cond_12
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 498
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    goto/16 :goto_1

    .line 500
    .end local v1    # "capString":Ljava/lang/String;
    .end local v2    # "capStrings":[Ljava/lang/String;
    :cond_13
    const-string v9, "--rlimit="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 502
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_14

    .line 506
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 509
    :cond_14
    array-length v9, v6

    new-array v8, v9, [I

    .line 511
    .local v8, "rlimitTuple":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v9, v6

    if-ge v5, v9, :cond_15

    .line 512
    aget-object v9, v6, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    .line 511
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 515
    :cond_15
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v9, :cond_16

    .line 516
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 519
    :cond_16
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 520
    .end local v5    # "i":I
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v8    # "rlimitTuple":[I
    :cond_17
    const-string v9, "-classpath"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 521
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_18

    .line 522
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 526
    :cond_18
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-object v9, p1, v3

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 527
    :catch_0
    move-exception v4

    .line 528
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "-classpath requires argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 531
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_19
    const-string v9, "--setgroups="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 532
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v9, :cond_1a

    .line 533
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 537
    :cond_1a
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "params":[Ljava/lang/String;
    array-length v9, v7

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 542
    array-length v9, v7

    add-int/lit8 v5, v9, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_3

    .line 543
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v10, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v5

    .line 542
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 545
    .end local v5    # "i":I
    .end local v7    # "params":[Ljava/lang/String;
    :cond_1b
    const-string v9, "--invoke-with"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 546
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 547
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 551
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    aget-object v9, p1, v3

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 552
    :catch_1
    move-exception v4

    .line 553
    .restart local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "--invoke-with requires argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 556
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1d
    const-string v9, "--nice-name="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 557
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v9, :cond_1e

    .line 558
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Duplicate arg specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 561
    :cond_1e
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 562
    :cond_1f
    const-string v9, "--mount-external-multiuser"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 563
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_1

    .line 564
    :cond_20
    const-string v9, "--mount-external-multiuser-all"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 565
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_1

    .line 566
    :cond_21
    const-string v9, "--query-abi-list"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 567
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    goto/16 :goto_1

    .line 568
    :cond_22
    const-string v9, "--instruction-set="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 569
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 570
    :cond_23
    const-string v9, "--app-data-dir="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 571
    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 582
    .end local v0    # "arg":Ljava/lang/String;
    :cond_24
    array-length v9, p1

    sub-int/2addr v9, v3

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 584
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v11, v11

    invoke-static {p1, v3, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    return-void
.end method

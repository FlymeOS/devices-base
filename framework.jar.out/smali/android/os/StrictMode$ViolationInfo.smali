.class public Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViolationInfo"
.end annotation


# instance fields
.field public broadcastIntentAction:Ljava/lang/String;

.field public final crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public durationMillis:I

.field public final message:Ljava/lang/String;

.field public numAnimationsRunning:I

.field public numInstances:J

.field public final policy:I

.field public tags:[Ljava/lang/String;

.field public violationNumThisLoop:I

.field public violationUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2316
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2348
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2354
    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    .line 2355
    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2356
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2353
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2422
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2421
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "unsetGatheringBit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2316
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2348
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    .line 2433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2434
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2438
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2439
    .local v0, "rawPolicy":I
    if-eqz p2, :cond_1

    .line 2440
    const v1, -0x400001

    and-int/2addr v1, v0

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2444
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 2446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2447
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2448
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2450
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2431
    return-void

    .line 2436
    .end local v0    # "rawPolicy":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    goto :goto_0

    .line 2442
    .restart local v0    # "rawPolicy":I
    :cond_1
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "policy"    # I

    .prologue
    const/4 v6, 0x0

    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v5, -0x1

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2316
    iput v6, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2348
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2367
    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    .line 2368
    new-instance v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v5, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 2369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2370
    iput p3, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    .line 2371
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v5

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2372
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v0

    .line 2373
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2374
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2376
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-get5()Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ThreadSpanState;

    .line 2377
    .local v4, "state":Landroid/os/StrictMode$ThreadSpanState;
    instance-of v5, p2, Landroid/os/StrictMode$InstanceCountViolation;

    if-eqz v5, :cond_1

    .line 2378
    check-cast p2, Landroid/os/StrictMode$InstanceCountViolation;

    .end local p2    # "tr":Ljava/lang/Throwable;
    iget-wide v6, p2, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2380
    :cond_1
    monitor-enter v4

    .line 2381
    :try_start_0
    iget v3, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2382
    .local v3, "spanActiveCount":I
    const/16 v5, 0x14

    if-le v3, v5, :cond_2

    .line 2383
    const/16 v3, 0x14

    .line 2385
    :cond_2
    if-eqz v3, :cond_3

    .line 2386
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2387
    iget-object v2, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2388
    .local v2, "iter":Landroid/os/StrictMode$Span;
    const/4 v1, 0x0

    .line 2389
    .local v1, "index":I
    :goto_0
    if-eqz v2, :cond_3

    if-ge v1, v3, :cond_3

    .line 2390
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get0(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2391
    add-int/lit8 v1, v1, 0x1

    .line 2392
    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "iter":Landroid/os/StrictMode$Span;
    :cond_3
    monitor-exit v4

    .line 2366
    return-void

    .line 2380
    .end local v3    # "spanActiveCount":I
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "policy"    # I

    .prologue
    .line 2360
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2359
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2491
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_0

    .line 2492
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v4, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2494
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2495
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "durationMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2498
    :cond_1
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "numInstances: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2501
    :cond_2
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v4, :cond_3

    .line 2502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "violationNumThisLoop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2504
    :cond_3
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v4, :cond_4

    .line 2505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "numAnimationsRunning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2507
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "violationUptimeMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2508
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "broadcastIntentAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2511
    :cond_5
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, "index":I
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v2, v4, v3

    .line 2514
    .local v2, "tag":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2513
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 2490
    .end local v1    # "index":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2400
    const/16 v0, 0x11

    .line 2401
    .local v0, "result":I
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v3, :cond_0

    .line 2402
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit16 v0, v3, 0x275

    .line 2404
    :cond_0
    iget v3, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v3, :cond_1

    .line 2405
    mul-int/lit8 v0, v0, 0x25

    .line 2407
    :cond_1
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2408
    mul-int/lit8 v3, v0, 0x25

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 2410
    :cond_2
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2411
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 2412
    .local v1, "tag":Ljava/lang/String;
    mul-int/lit8 v5, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 2411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2415
    .end local v1    # "tag":Ljava/lang/String;
    :cond_3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2457
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2458
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_1

    .line 2459
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v2, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2464
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2465
    .local v0, "start":I
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2466
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2468
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2470
    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2471
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2472
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2473
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int v1, v2, v0

    .line 2474
    .local v1, "total":I
    const/16 v2, 0x2800

    if-le v1, v2, :cond_0

    .line 2475
    const-string/jumbo v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VIO: policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2476
    const-string/jumbo v4, " numLoop="

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2476
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2477
    const-string/jumbo v4, " anim="

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2477
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2478
    const-string/jumbo v4, " uptime="

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2478
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2475
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2479
    const-string/jumbo v4, " numInst="

    .line 2475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2479
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2475
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string/jumbo v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VIO: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    const-string/jumbo v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VIO: tags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const-string/jumbo v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VIO: TOTAL BYTES WRITTEN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    return-void

    .line 2462
    .end local v0    # "start":I
    .end local v1    # "total":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0
.end method

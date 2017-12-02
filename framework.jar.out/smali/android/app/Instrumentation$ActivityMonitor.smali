.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 452
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 469
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 470
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 471
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 472
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 452
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 490
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 491
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 492
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 493
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 489
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getHits()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 584
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 587
    const-string/jumbo v3, "Instrumentation"

    const/4 v4, 0x1

    .line 586
    invoke-virtual {v1, v2, p3, v4, v3}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    monitor-exit p0

    .line 588
    return v5

    .line 590
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 593
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 597
    .end local v0    # "cls":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 601
    :cond_2
    if-eqz p2, :cond_3

    .line 602
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 603
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 605
    return v6

    .line 594
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 595
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .local v0, "cls":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "cls":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    .line 598
    return v5

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 541
    monitor-enter p0

    .line 542
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 544
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 548
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 549
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 550
    return-object v1

    .line 541
    .end local v1    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 5
    .param p1, "timeOut"    # J

    .prologue
    const/4 v3, 0x0

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 567
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    .line 572
    return-object v3

    .line 568
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 574
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 575
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 576
    return-object v1

    .line 564
    .end local v1    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

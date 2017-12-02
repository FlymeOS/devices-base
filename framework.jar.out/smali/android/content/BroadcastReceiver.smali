.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/BroadcastReceiver$PendingResult;
    }
.end annotation


# instance fields
.field private mDebugUnregister:Z

.field private mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 534
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 532
    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v1, :cond_0

    .line 616
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Call while result is not pending"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v1, :cond_2

    .line 623
    :cond_1
    return-void

    .line 625
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 626
    const-string/jumbo v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    .line 625
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 628
    const-string/jumbo v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    return-void
.end method

.method public final clearAbortBroadcast()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 541
    :cond_0
    return-void
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDebugUnregister()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return v0
.end method

.method public final getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "makeMap"    # Z

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v1, :cond_0

    .line 471
    return-object v2

    .line 473
    :cond_0
    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 474
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_1

    return-object v0

    .line 475
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 476
    :cond_2
    return-object v0
.end method

.method public getSendingUserId()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public final goAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 345
    .local v0, "res":Landroid/content/BroadcastReceiver$PendingResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 346
    return-object v0
.end method

.method public final isInitialStickyBroadcast()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrderedBroadcast()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .prologue
    .line 364
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 365
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 367
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 368
    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-interface {v0, p2, v3, v4}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 372
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 370
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setDebugUnregister(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    .line 603
    return-void
.end method

.method public final setOrderedHint(Z)V
    .locals 0
    .param p1, "isOrdered"    # Z

    .prologue
    .line 569
    return-void
.end method

.method public final setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    .line 577
    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 576
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 503
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 504
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 501
    return-void
.end method

.method public final setResultCode(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 394
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 392
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 423
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 455
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 453
    return-void
.end method

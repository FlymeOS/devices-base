.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDocument:Landroid/printservice/PrintDocument;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jobInfo"    # Landroid/print/PrintJobInfo;
    .param p3, "client"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 58
    iput-object p3, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 59
    new-instance v0, Landroid/printservice/PrintDocument;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    .line 60
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v2

    .line 59
    invoke-direct {v0, v1, p3, v2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    iput-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    .line 55
    return-void
.end method

.method private isInImmutableState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 459
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 460
    .local v0, "state":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 461
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setState(ILjava/lang/String;)Z
    .locals 4
    .param p1, "state"    # I
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/printservice/IPrintServiceClient;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 472
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1, p2}, Landroid/print/PrintJobInfo;->setStatus(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const/4 v1, 0x1

    return v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting the state of job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public block(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 240
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 241
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 242
    .local v0, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    .line 243
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 244
    :cond_0
    invoke-direct {p0, v3, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 246
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public cancel()Z
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 303
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public complete()Z
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 260
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 440
    if-ne p0, p1, :cond_0

    .line 441
    const/4 v1, 0x1

    return v1

    .line 443
    :cond_0
    if-nez p1, :cond_1

    .line 444
    return v3

    .line 446
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 447
    return v3

    :cond_2
    move-object v0, p1

    .line 449
    check-cast v0, Landroid/printservice/PrintJob;

    .line 450
    .local v0, "other":Landroid/printservice/PrintJob;
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public fail(Ljava/lang/String;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 282
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 435
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedIntOption(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 410
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Landroid/printservice/PrintDocument;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 110
    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 71
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 87
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v2

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 92
    .local v0, "info":Landroid/print/PrintJobInfo;
    :try_start_0
    iget-object v2, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    .end local v0    # "info":Landroid/print/PrintJobInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 97
    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 99
    :cond_1
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v2

    .line 93
    .restart local v0    # "info":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintJob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t get info for job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 398
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 423
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->hasAdvancedOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlocked()Z
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 157
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 199
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 171
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 185
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueued()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 125
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 141
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 316
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 319
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting progress for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 4
    .param p1, "statusResId"    # I

    .prologue
    .line 355
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 359
    iget-object v3, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-interface {v1, v2, p1, v3}, Landroid/printservice/IPrintServiceClient;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting status for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 336
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 339
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting status for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 376
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 377
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    return v4

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting tag for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    return v4
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 218
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 219
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 220
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 221
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 223
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

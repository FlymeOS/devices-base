.class abstract Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RequestInfo"
.end annotation


# instance fields
.field protected final mAccessLevel:I

.field private final mBinder:Landroid/os/IBinder;

.field protected final mCallingUid:I

.field protected mCollection:Lcom/android/server/net/NetworkStatsCollection;

.field private final mMessenger:Landroid/os/Messenger;

.field protected mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field protected final mRequest:Landroid/net/DataUsageRequest;

.field private final mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V
    .locals 0
    .param p1, "callbackType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->unlinkDeathRecipient()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 0
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "statsObserver"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "accessLevel"    # I

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    .line 245
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    .line 246
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 247
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    .line 248
    iput p5, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    .line 249
    iput p6, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->binderDied()V

    goto :goto_0
.end method

.method private callCallback(I)V
    .locals 6
    .param p1, "callbackType"    # I

    .prologue
    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "DataUsageRequest"

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 300
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 301
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NetworkStatsObservers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callbackTypeToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "callbackType"    # I

    .prologue
    .line 324
    packed-switch p1, :pswitch_data_0

    .line 330
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 326
    :pswitch_0
    const-string/jumbo v0, "LIMIT_REACHED"

    return-object v0

    .line 328
    :pswitch_1
    const-string/jumbo v0, "RELEASED"

    return-object v0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetRecorder()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 316
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 314
    return-void
.end method

.method private unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 272
    :cond_0
    return-void
.end method

.method private updateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 1
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->checkStats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->resetRecorder()V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 281
    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mStatsObserver:Lcom/android/server/net/NetworkStatsObservers;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->callCallback(I)V

    .line 259
    return-void
.end method

.method protected abstract checkStats()Z
.end method

.method protected abstract recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RequestInfo from uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string/jumbo v1, " for "

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string/jumbo v1, " accessLevel:"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mAccessLevel:I

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

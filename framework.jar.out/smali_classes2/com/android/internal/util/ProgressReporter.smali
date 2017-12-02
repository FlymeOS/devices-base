.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSegmentRange:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 63
    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 65
    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 74
    const/16 v0, 0x64

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 81
    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 80
    return-void
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 228
    return-void

    .line 232
    :catch_0
    move-exception v1

    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 218
    return-void

    .line 222
    :catch_0
    move-exception v1

    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 208
    return-void

    .line 212
    :catch_0
    move-exception v1

    .local v1, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 89
    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 92
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    .line 88
    return-void

    .line 98
    :pswitch_1
    :try_start_1
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    .line 99
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v3, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v1, v2, v3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 105
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .restart local v0    # "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 90
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endSegment([I)V
    .locals 3
    .param p1, "lastRange"    # [I

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 174
    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 171
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 203
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getProgress()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method getSegmentRange()[I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 119
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setProgress(II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "m"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be started to change progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 147
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 146
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 148
    if-eqz p3, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 141
    return-void
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 192
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    .line 193
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 189
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSegment(I)[I
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 163
    .local v0, "lastRange":[I
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 164
    return-object v0

    .line 161
    .end local v0    # "lastRange":[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

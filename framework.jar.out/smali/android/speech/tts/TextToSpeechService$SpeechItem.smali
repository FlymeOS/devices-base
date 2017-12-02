.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItem;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItem"
.end annotation


# instance fields
.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mCallerPid:I

.field private final mCallerUid:I

.field private mStarted:Z

.field private mStopped:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    .prologue
    const/4 v0, 0x0

    .line 756
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    .line 754
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    .line 757
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    .line 758
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    .line 759
    iput p4, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    .line 756
    return-void
.end method


# virtual methods
.method public getCallerIdentity()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallerPid()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerPid:I

    return v0
.end method

.method public getCallerUid()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallerUid:I

    return v0
.end method

.method protected declared-synchronized isStarted()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 821
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isStopped()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 817
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isValid()Z
.end method

.method public play()V
    .locals 2

    .prologue
    .line 787
    monitor-enter p0

    .line 788
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 791
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 793
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->playImpl()V

    .line 786
    return-void
.end method

.method protected abstract playImpl()V
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    if-eqz v0, :cond_0

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 809
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 811
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stopImpl()V

    .line 804
    return-void
.end method

.method protected abstract stopImpl()V
.end method

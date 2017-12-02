.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .locals 2
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "audioTrackHandler"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p3, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p4, "callerIdentity"    # Ljava/lang/Object;
    .param p5, "logger"    # Landroid/speech/tts/AbstractEventLogger;
    .param p6, "clientIsUsingV2"    # Z

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 46
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 62
    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 63
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    .line 64
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 65
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 58
    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 172
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v3

    if-gt p3, v3, :cond_0

    if-gtz p3, :cond_1

    .line 173
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buffer is too large or of zero length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    const-string/jumbo v5, " bytes)"

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v3, :cond_2

    .line 180
    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 181
    return v7

    .line 183
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    monitor-exit v4

    .line 185
    return v7

    .line 187
    :cond_3
    :try_start_2
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_4

    .line 188
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 190
    :cond_4
    :try_start_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    monitor-exit v4

    .line 194
    new-array v0, p3, [B

    .line 195
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v6, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v3, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 201
    :try_start_4
    invoke-virtual {v2, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    .line 210
    return v6

    .line 178
    .end local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 202
    .restart local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    const/4 v4, -0x5

    :try_start_5
    iput v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    .line 205
    return v7

    .line 203
    :catchall_1
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public done()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "statusCode":I
    const/4 v0, 0x0

    .line 219
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v2, :cond_0

    .line 221
    const-string/jumbo v2, "PlaybackSynthesisRequest"

    const-string/jumbo v4, "Duplicate call to done()"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 224
    return v6

    .line 226
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 230
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 232
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v2, :cond_3

    .line 235
    const-string/jumbo v2, "PlaybackSynthesisRequest"

    const-string/jumbo v4, "done() was called before start() call"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 241
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 242
    return v6

    .line 239
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 219
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 245
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_3
    :try_start_4
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 246
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    .line 250
    if-nez v1, :cond_4

    .line 251
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    .line 255
    :goto_1
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    .line 256
    return v5

    .line 253
    :cond_4
    invoke-virtual {v0, v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    goto :goto_1
.end method

.method public error()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    .line 260
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 267
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 269
    return-void

    .line 271
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 265
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start(III)I
    .locals 11
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, -0x1

    .line 128
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 129
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 130
    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    .line 131
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio format encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported. Please use one "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or "

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "AudioFormat.ENCODING_PCM_FLOAT"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 137
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v8

    .line 139
    .local v8, "channelConfig":I
    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 140
    if-nez v8, :cond_1

    .line 141
    :try_start_0
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported number of channels :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, -0x5

    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 143
    return v4

    .line 145
    :cond_1
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    .line 149
    :cond_2
    :try_start_2
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit v9

    .line 151
    return v4

    .line 153
    :cond_3
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v1, :cond_4

    .line 154
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    const-string/jumbo v2, "Start called twice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 155
    return v4

    .line 157
    :cond_4
    :try_start_4
    new-instance v0, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 158
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 159
    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    .line 157
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    .line 160
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 161
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    .line 164
    return v10

    .line 139
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 73
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 75
    return-void

    .line 77
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-ne v1, v3, :cond_1

    .line 78
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    const-string/jumbo v3, "stop() called twice"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 79
    return-void

    .line 82
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 83
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    const/4 v1, -0x2

    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 86
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0, v3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    .line 69
    :goto_0
    return-void

    .line 73
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 98
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v1, v3}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 99
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_0
.end method

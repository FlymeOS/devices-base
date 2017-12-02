.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 2106
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B

    .prologue
    .line 2149
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2150
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onAudioAvailable(Ljava/lang/String;[B)V

    .line 2148
    :cond_0
    return-void
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .prologue
    .line 2141
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2142
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/UtteranceProgressListener;->onBeginSynthesis(Ljava/lang/String;III)V

    .line 2140
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 2124
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2125
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2126
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 2123
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 2132
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2133
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 2131
    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2108
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2109
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    .line 2107
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 2116
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get5(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 2117
    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 2118
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 2115
    :cond_0
    return-void
.end method

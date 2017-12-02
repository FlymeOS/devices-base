.class final Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundTriggerListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 615
    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    .line 616
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 615
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 638
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .prologue
    .line 633
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Generic sound trigger event detected at AOHD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    .line 624
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 627
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    .line 628
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    .line 627
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[BLandroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 626
    const/4 v1, 0x2

    invoke-static {v7, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 620
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 2

    .prologue
    .line 644
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 2

    .prologue
    .line 650
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 649
    return-void
.end method

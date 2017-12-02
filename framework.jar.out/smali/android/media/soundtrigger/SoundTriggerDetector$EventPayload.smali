.class public Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPayload"
.end annotation


# instance fields
.field private final mAudioFormat:Landroid/media/AudioFormat;

.field private final mCaptureAvailable:Z

.field private final mCaptureSession:I

.field private final mData:[B

.field private final mTriggerAvailable:Z


# direct methods
.method private constructor <init>(ZZLandroid/media/AudioFormat;I[B)V
    .locals 0
    .param p1, "triggerAvailable"    # Z
    .param p2, "captureAvailable"    # Z
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "captureSession"    # I
    .param p5, "data"    # [B

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    .line 124
    iput-boolean p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    .line 125
    iput p4, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    .line 126
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    .line 127
    iput-object p5, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    .line 122
    return-void
.end method

.method synthetic constructor <init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V
    .locals 0
    .param p1, "triggerAvailable"    # Z
    .param p2, "captureAvailable"    # Z
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "captureSession"    # I
    .param p5, "data"    # [B

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[B)V

    return-void
.end method


# virtual methods
.method public getCaptureAudioFormat()Landroid/media/AudioFormat;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getCaptureSession()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTriggerAudio()[B
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

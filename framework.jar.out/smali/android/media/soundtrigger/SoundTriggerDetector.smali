.class public final Landroid/media/soundtrigger/SoundTriggerDetector;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerDetector$Callback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;,
        Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_SOUND_TRIGGER_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoundTriggerDetector"


# instance fields
.field private final mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

.field private final mSoundModelId:Ljava/util/UUID;

.field private final mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method static synthetic -get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .locals 1

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;
    .param p2, "soundModelId"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    .line 222
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 223
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    .line 224
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 225
    if-nez p4, :cond_0

    .line 226
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    .line 230
    :goto_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    invoke-direct {v0, p0, v2}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    .line 221
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 275
    return-void
.end method

.method public startRecognition(I)Z
    .locals 11
    .param p1, "recognitionFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 243
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 246
    .local v1, "captureTriggerAudio":Z
    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 247
    .local v0, "allowMultipleTriggers":Z
    :goto_1
    const/4 v3, 0x0

    .line 249
    .local v3, "status":I
    :try_start_0
    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v6, Landroid/os/ParcelUuid;

    iget-object v7, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 250
    iget-object v7, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    new-instance v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 251
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 250
    invoke-direct {v8, v1, v0, v9, v10}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    .line 249
    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/app/ISoundTriggerService;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 255
    if-nez v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 243
    .end local v0    # "allowMultipleTriggers":Z
    .end local v1    # "captureTriggerAudio":Z
    .end local v3    # "status":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "captureTriggerAudio":Z
    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowMultipleTriggers":Z
    goto :goto_1

    .line 252
    .restart local v3    # "status":I
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public stopRecognition()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "status":I
    :try_start_0
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 265
    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    .line 264
    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/ISoundTriggerService;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

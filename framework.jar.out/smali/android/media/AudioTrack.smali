.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 79
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 366
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 365
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 425
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    .line 422
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 420
    return-void
.end method

.method constructor <init>(J)V
    .locals 9
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 547
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    .line 224
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 229
    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 233
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 239
    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 240
    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 257
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 261
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 270
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 275
    iput v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 281
    iput v5, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 285
    iput v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 296
    iput v2, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 300
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 304
    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2405
    iput-object v4, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2491
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 549
    iput-wide v6, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 550
    iput-wide v6, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 554
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 557
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 560
    cmp-long v1, p1, v6

    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    .line 546
    :goto_0
    return-void

    .line 563
    :cond_1
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 22
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct/range {p0 .. p1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    .line 229
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 233
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 257
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 261
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 270
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 281
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2491
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 470
    if-nez p2, :cond_0

    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal null AudioFormat"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v21

    .local v21, "looper":Landroid/os/Looper;
    if-nez v21, :cond_1

    .line 477
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    .line 480
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    .line 481
    .local v3, "rate":I
    if-nez v3, :cond_2

    .line 482
    const/4 v3, 0x0

    .line 485
    :cond_2
    const/4 v5, 0x0

    .line 486
    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v5

    .line 490
    :cond_3
    const/4 v4, 0x0

    .line 491
    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    .line 498
    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 499
    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    :cond_5
    move-object/from16 v2, p0

    move/from16 v7, p4

    .line 502
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 503
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 505
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 507
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 509
    if-gez p5, :cond_7

    .line 510
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid audio session ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    .end local v6    # "encoding":I
    :cond_6
    if-nez v5, :cond_4

    .line 495
    const/16 v4, 0xc

    goto :goto_0

    .line 513
    .restart local v6    # "encoding":I
    :cond_7
    const/4 v2, 0x1

    new-array v11, v2, [I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/4 v7, 0x0

    aput v2, v11, v7

    .line 514
    .local v11, "sampleRate":[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 515
    .local v17, "session":[I
    const/4 v2, 0x0

    aput p5, v17, v2

    .line 517
    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 518
    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 519
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move/from16 v16, v0

    const-wide/16 v18, 0x0

    move-object/from16 v8, p0

    .line 517
    invoke-direct/range {v8 .. v19}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v20

    .line 520
    .local v20, "initResult":I
    if-eqz v20, :cond_8

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error code "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " when initializing AudioTrack."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 522
    return-void

    .line 525
    :cond_8
    const/4 v2, 0x0

    aget v2, v11, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 526
    const/4 v2, 0x0

    aget v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 528
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_9

    .line 529
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    .line 466
    :goto_1
    return-void

    .line 531
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_1
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .prologue
    .line 947
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 952
    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 953
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    .line 956
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 957
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 943
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 810
    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_0

    .line 811
    const v2, 0x2ee00

    if-le p1, v2, :cond_1

    .line 812
    :cond_0
    if-eqz p1, :cond_1

    .line 813
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 814
    const-string/jumbo v4, "Hz is not a supported sample rate."

    .line 813
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 821
    const/16 v2, 0xd

    if-ne p4, v2, :cond_2

    .line 822
    if-eq p2, v5, :cond_2

    .line 823
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 824
    const-string/jumbo v3, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    .line 823
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 831
    sparse-switch p2, :sswitch_data_0

    .line 844
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 845
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 856
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 857
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_6

    .line 859
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v2, v4, v2

    add-int/lit8 v1, v2, -0x1

    .line 860
    .local v1, "indexMask":I
    not-int v2, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_5

    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 836
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 840
    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 841
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 848
    :cond_3
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 850
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 852
    :cond_4
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 853
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 864
    .restart local v1    # "indexMask":I
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 865
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8

    .line 866
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 874
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_6
    if-ne p4, v4, :cond_7

    .line 875
    const/4 p4, 0x2

    .line 878
    :cond_7
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 879
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_6

    .line 868
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_9
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 885
    if-eq p5, v4, :cond_b

    if-eqz p5, :cond_b

    .line 887
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    :cond_b
    if-eq p5, v4, :cond_c

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 889
    :cond_c
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 807
    return-void

    .line 831
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    .prologue
    .line 2591
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2592
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2593
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2594
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2595
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 2596
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2592
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 2590
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 1478
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1481
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 1482
    const/4 p0, 0x0

    .line 1486
    :cond_1
    :goto_0
    return p0

    .line 1483
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1484
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 1005
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v4, -0x2

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 1310
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1311
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1312
    return v4

    .line 1303
    :sswitch_0
    const/4 v0, 0x1

    .line 1318
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1319
    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1320
    return v4

    .line 1307
    :sswitch_1
    const/4 v0, 0x2

    .line 1308
    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_0

    .line 1325
    :cond_1
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_2

    .line 1326
    const v2, 0x2ee00

    if-le p0, v2, :cond_3

    .line 1327
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1328
    return v4

    .line 1331
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1332
    .local v1, "size":I
    if-gtz v1, :cond_4

    .line 1333
    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1334
    const/4 v2, -0x1

    return v2

    .line 1337
    :cond_4
    return v1

    .line 1300
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1272
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    .prologue
    const/4 v6, 0x0

    .line 899
    and-int/lit16 v4, p0, 0x1cfc

    if-eq v4, p0, :cond_0

    .line 900
    const-string/jumbo v4, "Channel configuration features unsupported channels"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 901
    return v6

    .line 903
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 904
    .local v1, "channelCount":I
    sget v4, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v1, v4, :cond_1

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Channel configuration contains too many channels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 906
    const-string/jumbo v5, ">"

    .line 905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 906
    sget v5, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 907
    return v6

    .line 913
    :cond_1
    const/16 v2, 0xc

    .line 914
    .local v2, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    .line 915
    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 916
    return v6

    .line 919
    :cond_2
    const/16 v0, 0xc0

    .line 920
    .local v0, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_3

    .line 921
    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_3

    .line 922
    const-string/jumbo v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 923
    return v6

    .line 927
    :cond_3
    const/16 v3, 0x1800

    .line 928
    .local v3, "sidePair":I
    and-int/lit16 v4, p0, 0x1800

    if-eqz v4, :cond_4

    .line 929
    and-int/lit16 v4, p0, 0x1800

    const/16 v5, 0x1800

    if-eq v4, v5, :cond_4

    .line 930
    const-string/jumbo v4, "Side channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 931
    return v6

    .line 933
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2852
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2856
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2738
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 2739
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_0

    .line 2740
    return-void

    .line 2743
    :cond_0
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_1

    .line 2744
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 2745
    return-void

    .line 2747
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2748
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_2

    .line 2749
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2750
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 2751
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2752
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2736
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2475
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2468
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2466
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2505
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2506
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2504
    return-void

    .line 2507
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 2508
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2509
    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2510
    if-eqz p2, :cond_2

    .line 2509
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2508
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2505
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2510
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2572
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2571
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 2364
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2365
    const/4 v0, -0x3

    return v0

    .line 2367
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    .line 571
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 574
    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 575
    .local v9, "session":[I
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 576
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 577
    const/4 v2, 0x0

    .line 579
    const/4 v4, 0x0

    .line 580
    const/4 v5, 0x0

    .line 581
    const/4 v6, 0x0

    .line 582
    const/4 v7, 0x0

    .line 583
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v10, p1

    .line 576
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v12

    .line 586
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 588
    return-void

    .line 591
    :cond_0
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 593
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 570
    .end local v3    # "rates":[I
    .end local v9    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 980
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 978
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1812
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1814
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1816
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 1811
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 1067
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 1076
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1077
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1076
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1078
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1076
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1079
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1080
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1082
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1083
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1085
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1248
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1204
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 1236
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 1025
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 1221
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 2437
    monitor-enter p0

    .line 2438
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2449
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2450
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 2451
    return-object v4

    .line 2454
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 2455
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2456
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 2457
    aget-object v3, v1, v2

    return-object v3

    .line 2455
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2460
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 1018
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1392
    if-nez p1, :cond_0

    .line 1393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1396
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1397
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1398
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 1399
    return v3

    .line 1401
    :cond_1
    aget-wide v2, v0, v3

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1402
    aget-wide v2, v0, v4

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1403
    return v4
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1438
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1439
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1440
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1441
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1442
    return v1
.end method

.method public getUnderrunCount()I
    .locals 1

    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1783
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1789
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1790
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1791
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1782
    return-void

    .line 1789
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1741
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 1745
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1746
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1747
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1740
    return-void

    .line 1745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method playerSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    .prologue
    const/4 v1, 0x0

    .line 2397
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 2398
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2399
    .local v0, "err":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method playerSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1517
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 1518
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1520
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 1516
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 973
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 974
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 964
    return-void

    .line 969
    :catch_0
    move-exception v0

    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2336
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 2337
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2339
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .prologue
    .line 2523
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2524
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2522
    return-void

    .line 2523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2584
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 2583
    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 2389
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2390
    const/4 v0, -0x3

    return v0

    .line 2392
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    .prologue
    .line 1164
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1165
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1167
    :cond_1
    if-gez p1, :cond_2

    .line 1168
    const/4 v0, -0x2

    return v0

    .line 1170
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    .line 1686
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1688
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1687
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1690
    if-nez p3, :cond_3

    .line 1696
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 1692
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-lt p1, v0, :cond_5

    .line 1694
    :cond_4
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1693
    :cond_5
    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1604
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1605
    const/4 v0, -0x3

    return v0

    .line 1607
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    .line 1644
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1646
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1645
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1648
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 1649
    :cond_2
    const/4 v0, -0x2

    return v0

    .line 1651
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1587
    if-nez p1, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1586
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1455
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1469
    if-eqz p1, :cond_0

    .line 1470
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1468
    :goto_0
    return-void

    .line 1472
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 1562
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1563
    const/4 v0, -0x3

    return v0

    .line 1565
    :cond_0
    if-gtz p1, :cond_1

    .line 1566
    const/4 v0, -0x2

    return v0

    .line 1568
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1618
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1619
    const/4 v0, -0x3

    return v0

    .line 1621
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 2418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2421
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2422
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2423
    .local v1, "status":Z
    if-eqz v1, :cond_2

    .line 2424
    monitor-enter p0

    .line 2425
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2428
    :cond_2
    return v1

    .line 2419
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_3
    return v0

    .line 2424
    .restart local v0    # "preferredDeviceId":I
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1708
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1707
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1507
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1508
    const/4 v0, -0x3

    return v0

    .line 1511
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 1512
    return v1
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .prologue
    .line 1539
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1761
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    .line 1762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1766
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1767
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1768
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1769
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1770
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1760
    return-void

    .line 1766
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2176
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2177
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v0, -0x3

    return v0

    .line 2181
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v7, :cond_1

    .line 2182
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return v3

    .line 2186
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 2187
    :cond_2
    const-string/jumbo v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v3

    .line 2186
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 2191
    const/4 v6, 0x0

    .line 2192
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2195
    if-nez p3, :cond_4

    move v5, v7

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 2193
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    .line 2203
    :goto_0
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_5

    .line 2204
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2205
    if-lez v6, :cond_5

    .line 2207
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2210
    :cond_5
    if-lez v6, :cond_6

    .line 2211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2214
    :cond_6
    return v6

    .line 2197
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 2198
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 2199
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2200
    if-nez p3, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    move v3, p2

    .line 2197
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2249
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_0

    .line 2250
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    return v6

    .line 2254
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    .line 2255
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    return v7

    .line 2259
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v2, v3, :cond_2

    .line 2260
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    return v6

    .line 2264
    :cond_2
    iget-object v2, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    .line 2265
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    .line 2269
    :cond_3
    if-eqz p1, :cond_4

    if-gez p2, :cond_5

    .line 2270
    :cond_4
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return v7

    .line 2269
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt p2, v2, :cond_4

    .line 2275
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    .line 2276
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2277
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2278
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2279
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2280
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2281
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2282
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2286
    :cond_6
    const/4 v0, 0x0

    .line 2287
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2288
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2289
    if-gez v0, :cond_7

    .line 2290
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2292
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2293
    return v0

    .line 2295
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    .line 2296
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    return v4

    .line 2302
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2303
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2304
    if-gez v0, :cond_9

    .line 2305
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2307
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2308
    return v0

    .line 2311
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2312
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_a

    .line 2313
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2316
    :cond_a
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1905
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1906
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1909
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 1910
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return v2

    .line 1914
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1917
    :cond_3
    return v2

    .line 1914
    :cond_4
    if-ltz p3, :cond_3

    .line 1915
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 1916
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 1920
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1921
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1920
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .line 1923
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 1924
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1925
    if-lez v6, :cond_6

    .line 1927
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 1930
    :cond_6
    return v6
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2095
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2096
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return v2

    .line 2100
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2101
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    return v2

    .line 2105
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2106
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return v3

    .line 2110
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2113
    :cond_3
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    return v3

    .line 2110
    :cond_4
    if-ltz p3, :cond_3

    .line 2111
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2112
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2117
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2118
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2117
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .line 2120
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2121
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2122
    if-lez v6, :cond_6

    .line 2124
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2127
    :cond_6
    return v6
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2014
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2015
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2018
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2019
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return v2

    .line 2023
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2026
    :cond_3
    return v2

    .line 2023
    :cond_4
    if-ltz p3, :cond_3

    .line 2024
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2025
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2029
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2030
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2029
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    .line 2032
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2033
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2034
    if-lez v6, :cond_6

    .line 2036
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2039
    :cond_6
    return v6
.end method

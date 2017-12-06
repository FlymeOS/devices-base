.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 283
    const/4 v2, 0x1

    .line 282
    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 288
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 277
    return-void
.end method

.method constructor <init>(J)V
    .locals 7
    .param p1, "nativeRecordInJavaObj"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 218
    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 226
    iput-object v2, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 230
    iput-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 234
    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 238
    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 243
    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 1030
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1421
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1600
    iput-object v2, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 404
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeRecorderInJavaObj:J

    .line 405
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeCallbackCookie:J

    .line 406
    iput-wide v4, p0, Landroid/media/AudioRecord;->mNativeDeviceCallback:J

    .line 409
    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->deferred_connect(J)V

    .line 403
    :goto_0
    return-void

    .line 412
    :cond_0
    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 20
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 207
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 211
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 222
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 1030
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1421
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1600
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 314
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_0
    if-nez p2, :cond_1

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 329
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 330
    new-instance v15, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v15}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 331
    .local v15, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 332
    .local v19, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 334
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v2, "fixedVolume"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 336
    const-string/jumbo v2, "android.media.AudioRecord"

    const-string/jumbo v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 341
    .end local v18    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 342
    invoke-virtual {v15}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 347
    .end local v15    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v19    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v17

    .line 348
    .local v17, "rate":I
    if-nez v17, :cond_5

    .line 349
    const/16 v17, 0x0

    .line 352
    :cond_5
    const/4 v14, 0x1

    .line 353
    .local v14, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v14

    .line 358
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1, v14}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 365
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 374
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 376
    const/4 v2, 0x1

    new-array v5, v2, [I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mSampleRate:I

    const/4 v3, 0x0

    aput v2, v5, v3

    .line 377
    .local v5, "sampleRate":[I
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 378
    .local v10, "session":[I
    const/4 v2, 0x0

    aput p4, v10, v2

    .line 381
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 383
    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 384
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-object/from16 v2, p0

    .line 381
    invoke-direct/range {v2 .. v13}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    move-result v16

    .line 385
    .local v16, "initResult":I
    if-eqz v16, :cond_b

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " when initializing native AudioRecord object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 387
    return-void

    .line 344
    .end local v5    # "sampleRate":[I
    .end local v10    # "session":[I
    .end local v14    # "encoding":I
    .end local v16    # "initResult":I
    .end local v17    # "rate":I
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_1

    .line 369
    .restart local v14    # "encoding":I
    .restart local v17    # "rate":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v2, :cond_8

    .line 370
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 371
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    goto/16 :goto_2

    .line 390
    .restart local v5    # "sampleRate":[I
    .restart local v10    # "session":[I
    .restart local v16    # "initResult":I
    :cond_b
    const/4 v2, 0x0

    aget v2, v5, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 391
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 393
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 313
    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 722
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 723
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    .line 722
    mul-int v0, v1, v2

    .line 724
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 725
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 719
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 676
    if-ltz p1, :cond_0

    .line 677
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 678
    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    .line 679
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 686
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    .line 687
    const v0, 0x2ee00

    if-le p2, v0, :cond_3

    .line 688
    :cond_2
    if-eqz p2, :cond_3

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 690
    const-string/jumbo v2, "Hz is not a supported sample rate."

    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 696
    packed-switch p3, :pswitch_data_0

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 672
    :goto_0
    return-void

    .line 703
    :pswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    .prologue
    .line 1571
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1572
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1573
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

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

    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1574
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1575
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 1576
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1572
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 1570
    return-void
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 641
    sparse-switch p0, :sswitch_data_0

    .line 655
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :sswitch_0
    const/16 v0, 0x10

    .line 658
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 659
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 661
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 650
    .restart local v0    # "mask":I
    goto :goto_0

    .line 652
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    .line 653
    .restart local v0    # "mask":I
    goto :goto_0

    .line 664
    :cond_1
    return v0

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 941
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 942
    return v3

    .line 932
    :sswitch_0
    const/4 v0, 0x1

    .line 945
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 946
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 947
    return v3

    .line 937
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    .line 938
    goto :goto_0

    .line 949
    .restart local v1    # "size":I
    :cond_0
    if-ne v1, v2, :cond_1

    .line 950
    return v2

    .line 953
    :cond_1
    return v1

    .line 928
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .prologue
    .line 1032
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_0

    .line 1033
    return-void

    .line 1035
    :cond_0
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1036
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1038
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "android.media.AudioRecord"

    const-string/jumbo v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1788
    const-string/jumbo v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1792
    const-string/jumbo v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    return-void
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_timestamp(Landroid/media/AudioTimestamp;I)I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1711
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1712
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_0

    .line 1713
    return-void

    .line 1716
    :cond_0
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    .line 1717
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    .line 1718
    return-void

    .line 1721
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_2

    .line 1723
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1724
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1709
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 1405
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 1396
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1501
    return-void
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1435
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1436
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1434
    return-void

    .line 1437
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioRecord;->testEnableNativeRoutingCallbacksLocked()V

    .line 1438
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1439
    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1440
    if-eqz p2, :cond_2

    .line 1439
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1438
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1440
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeRecordInJavaObj"    # J

    .prologue
    .line 420
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 421
    const/4 v0, 0x1

    new-array v8, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v8, v1

    .line 422
    .local v8, "session":[I
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 427
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 435
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 428
    const/4 v2, 0x0

    .line 430
    const/4 v4, 0x0

    .line 431
    const/4 v5, 0x0

    .line 432
    const/4 v6, 0x0

    .line 433
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v10, p1

    .line 427
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    move-result v12

    .line 437
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " when initializing native AudioRecord object."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 439
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    aget v0, v8, v0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 444
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 419
    .end local v3    # "rates":[I
    .end local v8    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 750
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 858
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 805
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 806
    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 805
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 807
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 805
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 808
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_0

    .line 809
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 811
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 812
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 814
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 1633
    monitor-enter p0

    .line 1634
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1379
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    move-result v0

    .line 1380
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 1381
    return-object v4

    .line 1384
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1385
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1386
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1387
    aget-object v3, v1, v2

    return-object v3

    .line 1385
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1390
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;I)I
    .locals 1
    .param p1, "outTimestamp"    # Landroid/media/AudioTimestamp;
    .param p2, "timebase"    # I

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 897
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 898
    if-eqz p2, :cond_1

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 901
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_get_timestamp(Landroid/media/AudioTimestamp;I)I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 1267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1300
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v0, :cond_0

    .line 1301
    const/4 v0, -0x3

    return v0

    .line 1304
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    .line 1305
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return v3

    .line 1309
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 1310
    :cond_2
    return v3

    .line 1313
    :cond_3
    if-nez p3, :cond_4

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public read([BIII)I
    .locals 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1098
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1099
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1102
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1103
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return v4

    .line 1107
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1110
    :cond_3
    return v4

    .line 1107
    :cond_4
    if-ltz p3, :cond_3

    .line 1108
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1109
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1114
    if-nez p4, :cond_5

    .line 1113
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1114
    goto :goto_0
.end method

.method public read([FIII)I
    .locals 6
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v1, 0x0

    .line 1217
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v2, :cond_0

    .line 1218
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v4

    .line 1222
    :cond_0
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1223
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return v4

    .line 1227
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1228
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return v5

    .line 1232
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1235
    :cond_3
    return v5

    .line 1232
    :cond_4
    if-ltz p3, :cond_3

    .line 1233
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1234
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1239
    if-nez p4, :cond_5

    .line 1238
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1239
    goto :goto_0
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public read([SIII)I
    .locals 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1170
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1171
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1174
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1175
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v4

    .line 1179
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1182
    :cond_3
    return v4

    .line 1179
    :cond_4
    if-ltz p3, :cond_3

    .line 1180
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1181
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1186
    if-nez p4, :cond_5

    .line 1185
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1186
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 740
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 745
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 738
    return-void

    .line 741
    :catch_0
    move-exception v0

    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 1513
    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .prologue
    .line 1453
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1454
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-direct {p0}, Landroid/media/AudioRecord;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1452
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1366
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1367
    const/4 v0, -0x3

    return v0

    .line 1369
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1591
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1592
    const/4 v0, -0x3

    return v0

    .line 1594
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 1613
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1617
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1618
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 1619
    .local v1, "status":Z
    if-eqz v1, :cond_2

    .line 1620
    monitor-enter p0

    .line 1621
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1624
    :cond_2
    return v1

    .line 1614
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_3
    return v0

    .line 1620
    .restart local v0    # "preferredDeviceId":I
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 1325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1324
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1338
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1340
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1342
    if-eqz p1, :cond_1

    .line 1343
    if-eqz p2, :cond_0

    .line 1344
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1337
    return-void

    .line 1347
    :cond_0
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1350
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 975
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->hook_native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 983
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 984
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 974
    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 998
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1005
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->hook_native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1007
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 997
    return-void

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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

    .line 1018
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1025
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 1026
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1017
    return-void

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hook_native_start(II)I
    .locals 1
    .param p1, "syncEvent"    # I
    .param p2, "sessionId"    # I

    .prologue
    const/16 v0, 0x1b

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

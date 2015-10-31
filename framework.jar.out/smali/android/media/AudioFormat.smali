.class public Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$1;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4


# instance fields
.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "ignoredArgument"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method private constructor <init>(III)V
    .locals 1
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 282
    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 283
    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 284
    const/4 v0, 0x7

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 287
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/AudioFormat$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 30
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method public static channelCountFromInChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .locals 1
    .param p0, "javaMask"    # I

    .prologue
    .line 177
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .locals 1
    .param p0, "nativeMask"    # I

    .prologue
    .line 187
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getBytesPerSample(I)I
    .locals 3
    .param p0, "audioFormat"    # I

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 220
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static inChannelMaskFromOutChannelMask(I)I
    .locals 2
    .param p0, "outMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    const/16 v0, 0x10

    .line 146
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .locals 3
    .param p0, "audioFormat"    # I

    .prologue
    .line 247
    packed-switch p0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :pswitch_0
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 232
    packed-switch p0, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getChannelMask()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    goto :goto_0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    goto :goto_0
.end method

.method public getPropertySetMask()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

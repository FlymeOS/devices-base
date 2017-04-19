.class public Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic -get3(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic -get4(Landroid/media/AudioFormat;)I
    .locals 1

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p1
.end method

.method static synthetic -set1(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic -set3(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method static synthetic -set4(Landroid/media/AudioFormat;I)I
    .locals 0

    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "ignoredArgument"    # I

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "channelIndexMask"    # I

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 535
    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 536
    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 537
    iput p4, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 538
    const/16 v0, 0xf

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 533
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat;)V
    .locals 0
    .param p1, "ignoredArgument"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method public static channelCountFromInChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 361
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .locals 1
    .param p0, "javaMask"    # I

    .prologue
    .line 379
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .locals 1
    .param p0, "nativeMask"    # I

    .prologue
    .line 389
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static filterPublicFormats([I)[I
    .locals 4
    .param p0, "formats"    # [I

    .prologue
    const/4 v3, 0x0

    .line 499
    if-nez p0, :cond_0

    .line 500
    return-object v3

    .line 502
    :cond_0
    array-length v3, p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 503
    .local v1, "myCopy":[I
    const/4 v2, 0x0

    .line 504
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 505
    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    if-eq v2, v0, :cond_1

    .line 507
    aget v3, v1, v0

    aput v3, v1, v2

    .line 509
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 504
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_3
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    return-object v3
.end method

.method public static getBytesPerSample(I)I
    .locals 3
    .param p0, "audioFormat"    # I

    .prologue
    .line 417
    packed-switch p0, :pswitch_data_0

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 422
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 424
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 417
    nop

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
    .line 340
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 342
    const-string/jumbo v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :pswitch_0
    const/16 v0, 0x10

    return v0

    .line 348
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 344
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
    .line 472
    packed-switch p0, :pswitch_data_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 486
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isPublicEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 455
    packed-switch p0, :pswitch_data_0

    .line 465
    const/4 v0, 0x0

    return v0

    .line 463
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 434
    packed-switch p0, :pswitch_data_0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 446
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getChannelCount()I
    .locals 3

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 624
    .local v1, "channelIndexCount":I
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 625
    .local v0, "channelCount":I
    if-nez v0, :cond_1

    .line 626
    move v0, v1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 627
    :cond_1
    if-eq v0, v1, :cond_0

    if-eqz v1, :cond_0

    .line 628
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannelIndexMask()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 612
    return v1

    .line 614
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public getChannelMask()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 596
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 597
    return v1

    .line 599
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public getEncoding()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 570
    return v1

    .line 572
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public getPropertySetMask()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 582
    return v1

    .line 584
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 845
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 846
    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    const-string/jumbo v2, " enc="

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    const-string/jumbo v2, " chan=0x"

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    const-string/jumbo v2, " chan_index=0x"

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 850
    const-string/jumbo v2, " rate="

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 850
    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

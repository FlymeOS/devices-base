.class public final Landroid/media/MediaCodecInfo$AudioCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioCapabilities"
.end annotation


# static fields
.field private static final MAX_INPUT_CHANNEL_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AudioCapabilities"


# instance fields
.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxInputChannelCount:I

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRates:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyLevelLimits()V
    .locals 12

    .prologue
    const/16 v11, 0x3e80

    const/16 v6, 0x32c8

    const/4 v10, 0x0

    const/16 v9, 0x1f40

    const/4 v8, 0x1

    .line 870
    const/4 v4, 0x0

    .line 871
    .local v4, "sampleRates":[I
    const/4 v3, 0x0

    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 872
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 873
    .local v1, "maxChannels":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, "mime":Ljava/lang/String;
    const-string/jumbo v5, "audio/mpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 876
    const/16 v5, 0x9

    new-array v4, v5, [I

    .local v4, "sampleRates":[I
    fill-array-data v4, :array_0

    .line 880
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x4e200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 881
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    .line 930
    .end local v0    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "sampleRates":[I
    :goto_0
    if-eqz v4, :cond_c

    .line 931
    invoke-direct {p0, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([I)V

    .line 935
    :cond_0
    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits(ILandroid/util/Range;)V

    .line 869
    return-void

    .line 882
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_1
    const-string/jumbo v5, "audio/3gpp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 883
    new-array v4, v8, [I

    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    .line 884
    .local v4, "sampleRates":[I
    const/16 v5, 0x128e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2fa8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 885
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    goto :goto_0

    .line 886
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_2
    const-string/jumbo v5, "audio/amr-wb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 887
    new-array v4, v8, [I

    .end local v4    # "sampleRates":[I
    aput v11, v4, v10

    .line 888
    .local v4, "sampleRates":[I
    const/16 v5, 0x19c8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x5d2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 889
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    goto :goto_0

    .line 890
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_3
    const-string/jumbo v5, "audio/mp4a-latm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 891
    const/16 v5, 0xd

    new-array v4, v5, [I

    .local v4, "sampleRates":[I
    fill-array-data v4, :array_1

    .line 897
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7c830

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 898
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0x30

    goto :goto_0

    .line 899
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_4
    const-string/jumbo v5, "audio/vorbis"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 900
    const/16 v5, 0x7d00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7a120

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 901
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x2ee00

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 902
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    goto/16 :goto_0

    .line 903
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_5
    const-string/jumbo v5, "audio/opus"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 904
    const/16 v5, 0x1770

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7c830

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 905
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v5, 0x2ee0

    const/16 v6, 0x5dc0

    const v7, 0xbb80

    filled-new-array {v9, v5, v11, v6, v7}, [I

    move-result-object v4

    .line 906
    .local v4, "sampleRates":[I
    const/16 v1, 0xff

    goto/16 :goto_0

    .line 907
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_6
    const-string/jumbo v5, "audio/raw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 908
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x17700

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 909
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x989680

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 910
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 911
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_7
    const-string/jumbo v5, "audio/flac"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 912
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x9fff6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 914
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    goto/16 :goto_0

    .line 915
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v5, "audio/g711-alaw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 916
    const-string/jumbo v5, "audio/g711-mlaw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 915
    if-eqz v5, :cond_a

    .line 917
    :cond_9
    new-array v4, v8, [I

    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    .line 918
    .local v4, "sampleRates":[I
    const v5, 0xfa00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0xfa00

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_0

    .line 920
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_a
    const-string/jumbo v5, "audio/gsm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 921
    new-array v4, v8, [I

    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    .line 922
    .local v4, "sampleRates":[I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 923
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 925
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_b
    const-string/jumbo v5, "AudioCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported mime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v5, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    goto/16 :goto_0

    .line 932
    .end local v0    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "sampleRates":[I
    :cond_c
    if-eqz v3, :cond_0

    .line 933
    new-array v5, v8, [Landroid/util/Range;

    aput-object v3, v5, v10

    invoke-direct {p0, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    goto/16 :goto_1

    .line 876
    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
    .end array-data

    .line 891
    :array_1
    .array-data 4
        0x1cb6
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
        0xfa00
        0x15888
        0x17700
    .end array-data
.end method

.method private applyLimits(ILandroid/util/Range;)V
    .locals 2
    .param p1, "maxInputChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p2, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 940
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 939
    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    .line 941
    if-eqz p2, :cond_0

    .line 942
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0, p2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 938
    :cond_0
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 790
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;-><init>()V

    .line 791
    .local v0, "caps":Landroid/media/MediaCodecInfo$AudioCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 792
    return-object v0
.end method

.method private createDiscreteSampleRates()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 850
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    return-void
.end method

.method private initWithPlatformLimits()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 804
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 805
    const/16 v0, 0x1e

    iput v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    .line 807
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Range;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 803
    return-void
.end method

.method private limitSampleRates([I)V
    .locals 6
    .param p1, "rates"    # [I

    .prologue
    .line 836
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 839
    .local v1, "rate":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 843
    .end local v1    # "rate":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Range;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Range;

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 844
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 835
    return-void
.end method

.method private limitSampleRates([Landroid/util/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 857
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v1, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 860
    iget-object v3, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 861
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 863
    return-void

    .line 860
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 866
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 855
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 947
    const/16 v2, 0x1e

    .line 948
    .local v2, "maxInputChannels":I
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v0

    .line 950
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "sample-rate-ranges"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 951
    const-string/jumbo v5, "sample-rate-ranges"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, "rateStrings":[Ljava/lang/String;
    array-length v5, v4

    new-array v3, v5, [Landroid/util/Range;

    .line 953
    .local v3, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 954
    aget-object v5, v4, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    aput-object v5, v3, v1

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_0
    invoke-direct {p0, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    .line 958
    .end local v1    # "i":I
    .end local v3    # "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "rateStrings":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "max-channel-count"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 960
    const-string/jumbo v5, "max-channel-count"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 959
    invoke-static {v5, v2}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v2

    .line 962
    :cond_2
    const-string/jumbo v5, "bitrate-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 964
    const-string/jumbo v5, "bitrate-range"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 963
    invoke-virtual {v0, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 966
    :cond_3
    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits(ILandroid/util/Range;)V

    .line 946
    return-void
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "sampleRate"    # Ljava/lang/Integer;
    .param p2, "inputChannels"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 813
    if-eqz p2, :cond_1

    .line 814
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    if-le v1, v2, :cond_1

    .line 815
    :cond_0
    return v3

    .line 817
    :cond_1
    if-eqz p1, :cond_2

    .line 819
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 818
    invoke-static {v1, p1}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result v0

    .line 820
    .local v0, "ix":I
    if-gez v0, :cond_2

    .line 821
    return v3

    .line 824
    .end local v0    # "ix":I
    :cond_2
    return v4
.end method


# virtual methods
.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getMaxInputChannelCount()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    return v0
.end method

.method public getSupportedSampleRateRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedSampleRates()[I
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 797
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 798
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->initWithPlatformLimits()V

    .line 799
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLevelLimits()V

    .line 800
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 796
    return-void
.end method

.method public isSampleRateSupported(I)Z
    .locals 2
    .param p1, "sampleRate"    # I

    .prologue
    .line 831
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public setDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v2, 0x1

    .line 972
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const-string/jumbo v1, "bitrate"

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 975
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    if-ne v0, v2, :cond_1

    .line 977
    const-string/jumbo v0, "channel-count"

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 979
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    array-length v0, v0

    if-ne v0, v2, :cond_2

    .line 980
    const-string/jumbo v0, "sample-rate"

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 970
    :cond_2
    return-void
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 986
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 987
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "sample-rate"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 988
    .local v2, "sampleRate":Ljava/lang/Integer;
    const-string/jumbo v3, "channel-count"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 989
    .local v0, "channels":Ljava/lang/Integer;
    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 990
    const/4 v3, 0x0

    return v3

    .line 996
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

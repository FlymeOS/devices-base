.class public final Landroid/media/MediaCodecInfo$EncoderCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncoderCapabilities"
.end annotation


# static fields
.field public static final BITRATE_MODE_CBR:I = 0x2

.field public static final BITRATE_MODE_CQ:I = 0x0

.field public static final BITRATE_MODE_VBR:I = 0x1

.field private static final bitrates:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field private mBitControl:I

.field private mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultComplexity:Ljava/lang/Integer;

.field private mDefaultQuality:Ljava/lang/Integer;

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mQualityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQualityScale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2653
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    .line 2654
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "VBR"

    invoke-direct {v1, v2, v4, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    .line 2655
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "CBR"

    invoke-direct {v1, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    .line 2656
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "CQ"

    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    .line 2653
    sput-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    .line 2624
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyLevelLimits()V
    .locals 3

    .prologue
    .line 2708
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v1, "audio/flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2710
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 2711
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2712
    :cond_1
    const-string/jumbo v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2713
    const-string/jumbo v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2712
    if-nez v1, :cond_2

    .line 2714
    const-string/jumbo v1, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2712
    if-nez v1, :cond_2

    .line 2715
    const-string/jumbo v1, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2712
    if-nez v1, :cond_2

    .line 2716
    const-string/jumbo v1, "audio/gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2712
    if-eqz v1, :cond_0

    .line 2717
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    goto :goto_0
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 2690
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;-><init>()V

    .line 2691
    .local v0, "caps":Landroid/media/MediaCodecInfo$EncoderCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 2692
    return-object v0
.end method

.method private static parseBitrateMode(Ljava/lang/String;)I
    .locals 6
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2660
    sget-object v3, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2661
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2662
    iget v1, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    return v1

    .line 2660
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2665
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    return v2
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 8
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 2727
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 2729
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "complexity-range"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2731
    const-string/jumbo v3, "complexity-range"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 2730
    invoke-static {v3, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 2734
    :cond_0
    const-string/jumbo v3, "quality-range"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2736
    const-string/jumbo v3, "quality-range"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 2735
    invoke-static {v3, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 2738
    :cond_1
    const-string/jumbo v3, "feature-bitrate-control"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2739
    const-string/jumbo v3, "feature-bitrate-control"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 2740
    .local v2, "mode":Ljava/lang/String;
    iget v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    invoke-static {v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseBitrateMode(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 2739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2745
    .end local v2    # "mode":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v3, "complexity-default"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2749
    :goto_1
    :try_start_1
    const-string/jumbo v3, "quality-default"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2752
    :goto_2
    const-string/jumbo v3, "quality-scale"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityScale:Ljava/lang/String;

    .line 2726
    return-void

    .line 2750
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 2746
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "complexity"    # Ljava/lang/Integer;
    .param p2, "quality"    # Ljava/lang/Integer;
    .param p3, "profile"    # Ljava/lang/Integer;

    .prologue
    .line 2757
    const/4 v0, 0x1

    .line 2758
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2759
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    .line 2761
    .end local v0    # "ok":Z
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2762
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v2, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    .line 2764
    :cond_1
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 2765
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 2766
    .local v1, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 2767
    const/4 p3, 0x0

    .line 2771
    .end local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p3    # "profile":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_5

    const/4 v0, 0x1

    .line 2773
    :cond_3
    :goto_1
    return v0

    .line 2765
    .restart local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local p3    # "profile":Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2771
    .end local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p3    # "profile":Ljava/lang/Integer;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "ok":Z
    goto :goto_1
.end method


# virtual methods
.method public getComplexityRange()Landroid/util/Range;
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
    .line 2643
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    return-object v0
.end method

.method public getQualityRange()Landroid/util/Range;
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
    .line 2631
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    return-object v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    const/4 v2, 0x0

    .line 2698
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2699
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    .line 2700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    .line 2701
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    .line 2703
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->applyLevelLimits()V

    .line 2704
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 2696
    return-void
.end method

.method public isBitrateModeSupported(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2672
    sget-object v4, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 2673
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v6, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    if-ne p1, v6, :cond_1

    .line 2674
    iget v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    shl-int v4, v1, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2672
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2677
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return v2
.end method

.method public setDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v2, 0x0

    .line 2779
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2780
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2781
    const-string/jumbo v1, "quality"

    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2783
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2784
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2785
    const-string/jumbo v1, "complexity"

    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2788
    :cond_1
    sget-object v3, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 2789
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    iget v5, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    const/4 v6, 0x1

    shl-int v5, v6, v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 2790
    const-string/jumbo v1, "bitrate-mode"

    iget v2, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2777
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return-void

    .line 2788
    .restart local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 10
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 2798
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v3

    .line 2799
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, "mime":Ljava/lang/String;
    const-string/jumbo v8, "bitrate-mode"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2802
    .local v5, "mode":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2806
    :cond_0
    const-string/jumbo v8, "complexity"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2807
    .local v1, "complexity":Ljava/lang/Integer;
    const-string/jumbo v8, "audio/flac"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2809
    const-string/jumbo v8, "flac-compression-level"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2810
    .local v2, "flacComplexity":Ljava/lang/Integer;
    if-nez v1, :cond_4

    .line 2811
    move-object v1, v2

    .line 2820
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v8, "profile"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2821
    .local v6, "profile":Ljava/lang/Integer;
    const-string/jumbo v8, "audio/mp4a-latm"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2822
    const-string/jumbo v8, "aac-profile"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2823
    .local v0, "aacProfile":Ljava/lang/Integer;
    if-nez v6, :cond_5

    .line 2824
    move-object v6, v0

    .line 2831
    .end local v0    # "aacProfile":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v8, "quality"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2833
    .local v7, "quality":Ljava/lang/Integer;
    invoke-direct {p0, v1, v7, v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v8

    return v8

    .line 2803
    .end local v1    # "complexity":Ljava/lang/Integer;
    .end local v6    # "profile":Ljava/lang/Integer;
    .end local v7    # "quality":Ljava/lang/Integer;
    :cond_3
    const/4 v8, 0x0

    return v8

    .line 2812
    .restart local v1    # "complexity":Ljava/lang/Integer;
    .restart local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2813
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 2814
    const-string/jumbo v9, "conflicting values for complexity and flac-compression-level"

    .line 2813
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2825
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    .restart local v0    # "aacProfile":Ljava/lang/Integer;
    .restart local v6    # "profile":Ljava/lang/Integer;
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2826
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 2827
    const-string/jumbo v9, "conflicting values for profile and aac-profile"

    .line 2826
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

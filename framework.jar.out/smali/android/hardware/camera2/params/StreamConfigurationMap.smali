.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final DURATION_20FPS_NS:J = 0x2faf080L

.field private static final DURATION_MIN_FRAME:I = 0x0

.field private static final DURATION_STALL:I = 0x1

.field private static final HAL_DATASPACE_DEPTH:I = 0x1000

.field private static final HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputFormats:Landroid/util/SparseIntArray;

.field private final mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final mListHighResolution:Z

.field private final mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mOutputFormats:Landroid/util/SparseIntArray;

.field private final mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 21
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p8, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p9, "listHighResolution"    # Z

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 1673
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 1675
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1677
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 1679
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 1682
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1681
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 1685
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 102
    if-nez p1, :cond_1

    .line 104
    const-string/jumbo v13, "depthConfigurations"

    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 105
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 106
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 107
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 114
    :goto_0
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 116
    if-nez p4, :cond_2

    .line 117
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 118
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 119
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 129
    :goto_1
    if-nez p7, :cond_3

    .line 130
    const/4 v13, 0x0

    new-array v13, v13, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 137
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v13, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v14, v13

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    aget-object v3, v15, v14

    .line 138
    .local v3, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    .line 139
    .local v5, "fmt":I
    const/4 v10, 0x0

    .line 140
    .local v10, "map":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    const-wide/16 v6, 0x0

    .line 143
    .local v6, "duration":J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v13, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    if-ge v13, v0, :cond_0

    aget-object v4, v17, v13

    .line 145
    .local v4, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v5, :cond_4

    .line 146
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 147
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v19

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 148
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v6

    .line 153
    .end local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_0
    const-wide/32 v18, 0x2faf080

    cmp-long v13, v6, v18

    if-gtz v13, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 158
    .end local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :goto_5
    invoke-virtual {v10, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto/16 :goto_3

    .line 109
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "map":Landroid/util/SparseIntArray;
    :cond_1
    const-string/jumbo v13, "configurations"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 110
    const-string/jumbo v13, "minFrameDurations"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 111
    const-string/jumbo v13, "stallDurations"

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto/16 :goto_0

    .line 122
    :cond_2
    const-string/jumbo v13, "depthConfigurations"

    .line 121
    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 124
    const-string/jumbo v13, "depthMinFrameDurations"

    .line 123
    move-object/from16 v0, p5

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 126
    const-string/jumbo v13, "depthStallDurations"

    .line 125
    move-object/from16 v0, p6

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto/16 :goto_1

    .line 133
    :cond_3
    const-string/jumbo v13, "highSpeedVideoConfigurations"

    .line 132
    move-object/from16 v0, p7

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto/16 :goto_2

    .line 144
    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v5    # "fmt":I
    .restart local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 154
    .end local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .local v10, "map":Landroid/util/SparseIntArray;
    goto/16 :goto_5

    .line 156
    .end local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .local v10, "map":Landroid/util/SparseIntArray;
    goto/16 :goto_5

    .line 162
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "map":Landroid/util/SparseIntArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_6
    if-ge v13, v15, :cond_9

    aget-object v3, v14, v13

    .line 163
    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v16

    if-nez v16, :cond_8

    .line 162
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v17

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseIntArray;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    .line 168
    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7

    .line 172
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_9
    if-eqz p1, :cond_a

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_a

    .line 174
    new-instance v13, Ljava/lang/AssertionError;

    .line 175
    const-string/jumbo v14, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    .line 174
    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 179
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_8
    if-ge v13, v15, :cond_d

    aget-object v2, v14, v13

    .line 180
    .local v2, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v11

    .line 181
    .local v11, "size":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    .line 182
    .local v8, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 183
    .local v9, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v9, :cond_b

    .line 184
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 186
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 188
    .local v12, "sizeCount":Ljava/lang/Integer;
    if-nez v12, :cond_c

    .line 189
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 191
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 194
    .end local v2    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v8    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v11    # "size":Landroid/util/Size;
    .end local v12    # "sizeCount":Ljava/lang/Integer;
    :cond_d
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 100
    return-void
.end method

.method private appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1506
    const-string/jumbo v10, "HighResolutionOutputs("

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v3

    .line 1508
    .local v3, "formats":[I
    const/4 v10, 0x0

    array-length v12, v3

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget v2, v3, v11

    .line 1509
    .local v2, "format":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 1510
    .local v7, "sizes":[Landroid/util/Size;
    if-nez v7, :cond_1

    .line 1508
    :cond_0
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 1511
    :cond_1
    const/4 v10, 0x0

    array-length v13, v7

    :goto_1
    if-ge v10, v13, :cond_0

    aget-object v6, v7, v10

    .line 1512
    .local v6, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v4

    .line 1513
    .local v4, "minFrameDuration":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v8

    .line 1514
    .local v8, "stallDuration":J
    const-string/jumbo v14, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    .line 1515
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 1516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v15, v17

    .line 1514
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1520
    .end local v2    # "format":I
    .end local v4    # "minFrameDuration":J
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "sizes":[Landroid/util/Size;
    .end local v8    # "stallDuration":J
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_3

    .line 1521
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1523
    :cond_3
    const-string/jumbo v10, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    return-void
.end method

.method private appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 1566
    const-string/jumbo v4, "HighSpeedVideoConfigurations("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v3

    .line 1568
    .local v3, "sizes":[Landroid/util/Size;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v3, v6

    .line 1569
    .local v2, "size":Landroid/util/Size;
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v1

    .line 1570
    .local v1, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v8, v1

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v0, v1, v4

    .line 1571
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v9, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 1572
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 1571
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1568
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1576
    .end local v1    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "size":Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 1577
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1579
    :cond_2
    const-string/jumbo v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    return-void
.end method

.method private appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 1527
    const-string/jumbo v4, "Inputs("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    .line 1529
    .local v1, "formats":[I
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v1, v6

    .line 1530
    .local v0, "format":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 1531
    .local v3, "sizes":[Landroid/util/Size;
    array-length v8, v3

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v2, v3, v4

    .line 1532
    .local v2, "size":Landroid/util/Size;
    const-string/jumbo v9, "[w:%d, h:%d, format:%s(%d)], "

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 1533
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 1532
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1529
    .end local v2    # "size":Landroid/util/Size;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1537
    .end local v0    # "format":I
    .end local v3    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 1538
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1540
    :cond_2
    const-string/jumbo v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    return-void
.end method

.method private appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1486
    const-string/jumbo v10, "Outputs("

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v3

    .line 1488
    .local v3, "formats":[I
    const/4 v10, 0x0

    array-length v12, v3

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_1

    aget v2, v3, v11

    .line 1489
    .local v2, "format":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 1490
    .local v7, "sizes":[Landroid/util/Size;
    const/4 v10, 0x0

    array-length v13, v7

    :goto_1
    if-ge v10, v13, :cond_0

    aget-object v6, v7, v10

    .line 1491
    .local v6, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v4

    .line 1492
    .local v4, "minFrameDuration":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v8

    .line 1493
    .local v8, "stallDuration":J
    const-string/jumbo v14, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    .line 1494
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 1495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v15, v17

    .line 1493
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1488
    .end local v4    # "minFrameDuration":J
    .end local v6    # "size":Landroid/util/Size;
    .end local v8    # "stallDuration":J
    :cond_0
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 1499
    .end local v2    # "format":I
    .end local v7    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    .line 1500
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1502
    :cond_2
    const-string/jumbo v10, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    return-void
.end method

.method private appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 12
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1544
    const-string/jumbo v4, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v2

    .line 1546
    .local v2, "inputFormats":[I
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget v1, v2, v4

    .line 1547
    .local v1, "inputFormat":I
    const-string/jumbo v7, "[in:%s(%d), out:"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v3

    .line 1549
    .local v3, "outputFormats":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 1550
    const-string/jumbo v7, "%s(%d)"

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v3, v0

    invoke-direct {p0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1551
    aget v9, v3, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 1550
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    .line 1553
    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1556
    :cond_1
    const-string/jumbo v7, "], "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1559
    .end local v0    # "i":I
    .end local v1    # "inputFormat":I
    .end local v3    # "outputFormats":[I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 1560
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1562
    :cond_3
    const-string/jumbo v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 1410
    if-nez p0, :cond_0

    .line 1411
    return v2

    .line 1414
    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .line 1415
    .local v0, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1416
    const/4 v1, 0x1

    return v1

    .line 1414
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1420
    .end local v0    # "el":Ljava/lang/Object;, "TT;"
    :cond_2
    return v2
.end method

.method static checkArgumentFormat(I)I
    .locals 5
    .param p0, "format"    # I

    .prologue
    .line 1034
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    :cond_0
    return p0

    .line 1035
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1036
    const-string/jumbo v1, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    .line 1035
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1036
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1035
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkArgumentFormatInternal(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    .line 999
    sparse-switch p0, :sswitch_data_0

    .line 1009
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result v0

    return v0

    .line 1004
    :sswitch_0
    return p0

    .line 1006
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1007
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    .line 1006
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x100 -> :sswitch_1
        0x20363159 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkArgumentFormatSupported(IZ)I
    .locals 7
    .param p1, "format"    # I
    .param p2, "output"    # Z

    .prologue
    const/4 v6, 0x0

    .line 956
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 958
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 959
    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .line 961
    .local v0, "internalDataspace":I
    if-eqz p2, :cond_1

    .line 962
    const/16 v2, 0x1000

    if-ne v0, v2, :cond_0

    .line 963
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 964
    return p1

    .line 967
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 968
    return p1

    .line 972
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 973
    return p1

    .line 977
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 978
    const-string/jumbo v3, "format %x is not supported by this stream configuration map"

    .line 977
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 978
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 977
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static depthFormatToPublic(I)I
    .locals 3
    .param p0, "format"    # I

    .prologue
    .line 1116
    sparse-switch p0, :sswitch_data_0

    .line 1128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1128
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :sswitch_0
    const/16 v0, 0x101

    return v0

    .line 1120
    :sswitch_1
    const v0, 0x44363159

    return v0

    .line 1122
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1123
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    .line 1122
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1126
    const-string/jumbo v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    .line 1125
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x100 -> :sswitch_2
        0x20363159 -> :sswitch_1
    .end sparse-switch
.end method

.method private formatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 1583
    sparse-switch p1, :sswitch_data_0

    .line 1621
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1585
    :sswitch_0
    const-string/jumbo v0, "YV12"

    return-object v0

    .line 1587
    :sswitch_1
    const-string/jumbo v0, "YUV_420_888"

    return-object v0

    .line 1589
    :sswitch_2
    const-string/jumbo v0, "NV21"

    return-object v0

    .line 1591
    :sswitch_3
    const-string/jumbo v0, "NV16"

    return-object v0

    .line 1593
    :sswitch_4
    const-string/jumbo v0, "RGB_565"

    return-object v0

    .line 1595
    :sswitch_5
    const-string/jumbo v0, "RGBA_8888"

    return-object v0

    .line 1597
    :sswitch_6
    const-string/jumbo v0, "RGBX_8888"

    return-object v0

    .line 1599
    :sswitch_7
    const-string/jumbo v0, "RGB_888"

    return-object v0

    .line 1601
    :sswitch_8
    const-string/jumbo v0, "JPEG"

    return-object v0

    .line 1603
    :sswitch_9
    const-string/jumbo v0, "YUY2"

    return-object v0

    .line 1605
    :sswitch_a
    const-string/jumbo v0, "Y8"

    return-object v0

    .line 1607
    :sswitch_b
    const-string/jumbo v0, "Y16"

    return-object v0

    .line 1609
    :sswitch_c
    const-string/jumbo v0, "RAW_SENSOR"

    return-object v0

    .line 1611
    :sswitch_d
    const-string/jumbo v0, "RAW_PRIVATE"

    return-object v0

    .line 1613
    :sswitch_e
    const-string/jumbo v0, "RAW10"

    return-object v0

    .line 1615
    :sswitch_f
    const-string/jumbo v0, "DEPTH16"

    return-object v0

    .line 1617
    :sswitch_10
    const-string/jumbo v0, "DEPTH_POINT_CLOUD"

    return-object v0

    .line 1619
    :sswitch_11
    const-string/jumbo v0, "PRIVATE"

    return-object v0

    .line 1583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x14 -> :sswitch_9
        0x20 -> :sswitch_c
        0x22 -> :sswitch_11
        0x23 -> :sswitch_1
        0x24 -> :sswitch_d
        0x25 -> :sswitch_e
        0x100 -> :sswitch_8
        0x101 -> :sswitch_10
        0x20203859 -> :sswitch_a
        0x20363159 -> :sswitch_b
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_f
    .end sparse-switch
.end method

.method private getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 2
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    .prologue
    const/16 v0, 0x1000

    .line 1386
    packed-switch p1, :pswitch_data_0

    .line 1394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration was invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1389
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1388
    :goto_0
    return-object v0

    .line 1389
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    .line 1391
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 1392
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1391
    :goto_1
    return-object v0

    .line 1392
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_1

    .line 1386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "output"    # Z

    .prologue
    .line 1356
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method private getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 6
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    .prologue
    .line 1362
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1363
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size was not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_0
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object v1

    .line 1368
    .local v1, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1369
    .local v0, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1370
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1371
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1372
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v2

    return-wide v2

    .line 1368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1376
    .end local v0    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 20
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    .prologue
    .line 1273
    const/16 v15, 0x1000

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    if-eqz p4, :cond_0

    .line 1274
    const/4 v15, 0x0

    new-array v15, v15, [Landroid/util/Size;

    return-object v15

    .line 1278
    :cond_0
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 1283
    .local v8, "formatsMap":Landroid/util/SparseIntArray;
    :goto_0
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    .line 1284
    .local v14, "sizesCount":I
    if-eqz p3, :cond_1

    const/16 v15, 0x1000

    move/from16 v0, p2

    if-ne v0, v15, :cond_6

    :cond_1
    if-nez v14, :cond_6

    .line 1287
    :cond_2
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "format not available"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1279
    .end local v8    # "formatsMap":Landroid/util/SparseIntArray;
    .end local v14    # "sizesCount":I
    :cond_3
    const/16 v15, 0x1000

    move/from16 v0, p2

    if-ne v0, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1280
    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1281
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1285
    .restart local v8    # "formatsMap":Landroid/util/SparseIntArray;
    .restart local v14    # "sizesCount":I
    :cond_6
    if-eqz p3, :cond_7

    const/16 v15, 0x1000

    move/from16 v0, p2

    if-eq v0, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    if-eqz v15, :cond_2

    .line 1290
    :cond_7
    new-array v13, v14, [Landroid/util/Size;

    .line 1291
    .local v13, "sizes":[Landroid/util/Size;
    const/4 v11, 0x0

    .line 1294
    .local v11, "sizeIndex":I
    const/16 v15, 0x1000

    move/from16 v0, p2

    if-ne v0, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1296
    .local v3, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_1
    const/16 v15, 0x1000

    move/from16 v0, p2

    if-ne v0, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1298
    .local v10, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_2
    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v16, v15

    move v12, v11

    .end local v11    # "sizeIndex":I
    .local v12, "sizeIndex":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    aget-object v2, v3, v16

    .line 1299
    .local v2, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v5

    .line 1300
    .local v5, "fmt":I
    move/from16 v0, p1

    if-ne v5, v0, :cond_b

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v15

    move/from16 v0, p3

    if-ne v15, v0, :cond_b

    .line 1301
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v15, :cond_e

    .line 1304
    const-wide/16 v6, 0x0

    .line 1305
    .local v6, "duration":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v15, v10

    if-ge v9, v15, :cond_8

    .line 1306
    aget-object v4, v10, v9

    .line 1307
    .local v4, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v15

    if-ne v15, v5, :cond_c

    .line 1308
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-ne v15, v0, :cond_c

    .line 1309
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v15

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ne v15, v0, :cond_c

    .line 1310
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v6

    .line 1314
    .end local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_8
    const/16 v15, 0x1000

    move/from16 v0, p2

    if-eq v0, v15, :cond_e

    .line 1315
    const-wide/32 v18, 0x2faf080

    cmp-long v15, v6, v18

    if-lez v15, :cond_d

    const/4 v15, 0x1

    :goto_5
    move/from16 v0, p4

    if-eq v0, v15, :cond_e

    move v11, v12

    .line 1298
    .end local v6    # "duration":J
    .end local v9    # "i":I
    .end local v12    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    :goto_6
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    move v12, v11

    .end local v11    # "sizeIndex":I
    .restart local v12    # "sizeIndex":I
    goto :goto_3

    .line 1294
    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v3    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v12    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .restart local v3    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_1

    .line 1296
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .restart local v10    # "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    goto :goto_2

    .end local v11    # "sizeIndex":I
    .restart local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v5    # "fmt":I
    .restart local v12    # "sizeIndex":I
    :cond_b
    move v11, v12

    .line 1300
    .end local v12    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    goto :goto_6

    .line 1305
    .end local v11    # "sizeIndex":I
    .restart local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v6    # "duration":J
    .restart local v9    # "i":I
    .restart local v12    # "sizeIndex":I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1315
    .end local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_d
    const/4 v15, 0x0

    goto :goto_5

    .line 1319
    .end local v6    # "duration":J
    .end local v9    # "i":I
    :cond_e
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v15

    aput-object v15, v13, v12

    goto :goto_6

    .line 1323
    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v11    # "sizeIndex":I
    .restart local v12    # "sizeIndex":I
    :cond_f
    if-eq v12, v14, :cond_10

    .line 1324
    new-instance v15, Ljava/lang/AssertionError;

    .line 1325
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Too few sizes (expected "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", actual "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1324
    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 1328
    :cond_10
    return-object v13
.end method

.method private getPublicFormatCount(Z)I
    .locals 3
    .param p1, "output"    # Z

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1401
    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1402
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 1403
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1406
    :cond_0
    return v1
.end method

.method private getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 4
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    .prologue
    .line 1259
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v2

    .line 1265
    .local v2, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .line 1267
    .local v0, "dataspace":I
    invoke-direct {p0, v2, v0, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v3

    return-object v3

    .line 1260
    .end local v0    # "dataspace":I
    .end local v2    # "internalFormat":I
    :catch_0
    move-exception v1

    .line 1261
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPublicFormats(Z)[I
    .locals 9
    .param p1, "output"    # Z

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v6

    new-array v1, v6, [I

    .line 1335
    .local v1, "formats":[I
    const/4 v2, 0x0

    .line 1337
    .local v2, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1338
    .local v5, "map":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1339
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 1340
    .local v0, "format":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v6

    aput v6, v1, v2

    .line 1338
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1342
    .end local v0    # "format":I
    :cond_0
    if-eqz p1, :cond_1

    .line 1343
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1344
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v6

    aput v6, v1, v2

    .line 1343
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1347
    :cond_1
    array-length v6, v1

    if-eq v6, v2, :cond_2

    .line 1348
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Too few formats "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1351
    :cond_2
    return-object v1
.end method

.method static imageFormatToDataspace(I)I
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 1224
    sparse-switch p0, :sswitch_data_0

    .line 1231
    const/4 v0, 0x0

    return v0

    .line 1226
    :sswitch_0
    const/high16 v0, 0x8c20000

    return v0

    .line 1229
    :sswitch_1
    const/16 v0, 0x1000

    return v0

    .line 1224
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToInternal(I)I
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 1182
    sparse-switch p0, :sswitch_data_0

    .line 1189
    return p0

    .line 1185
    :sswitch_0
    const/16 v0, 0x21

    return v0

    .line 1187
    :sswitch_1
    const v0, 0x20363159

    return v0

    .line 1182
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static imageFormatToInternal([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1246
    if-nez p0, :cond_0

    .line 1247
    return-object v1

    .line 1250
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1251
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    :cond_1
    return-object p0
.end method

.method static imageFormatToPublic(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    .line 1073
    sparse-switch p0, :sswitch_data_0

    .line 1080
    return p0

    .line 1075
    :sswitch_0
    const/16 v0, 0x100

    return v0

    .line 1077
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1078
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    .line 1077
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToPublic([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1142
    if-nez p0, :cond_0

    .line 1143
    return-object v1

    .line 1146
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1147
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    :cond_1
    return-object p0
.end method

.method public static isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    .line 345
    const-string/jumbo v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-class v0, Landroid/media/ImageReader;

    if-ne p0, v0, :cond_0

    .line 348
    return v1

    .line 349
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_1

    .line 350
    return v1

    .line 351
    :cond_1
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_2

    .line 352
    return v1

    .line 353
    :cond_2
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_3

    .line 354
    return v1

    .line 355
    :cond_3
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_4

    .line 356
    return v1

    .line 357
    :cond_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_5

    .line 358
    return v1

    .line 361
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    .prologue
    .line 1426
    const/16 v2, 0x1000

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1428
    .local v0, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1429
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1430
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1429
    if-eqz v2, :cond_1

    .line 1431
    const/4 v2, 0x1

    return v2

    .line 1426
    .end local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .restart local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_0

    .line 1428
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1435
    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 923
    if-nez p1, :cond_0

    .line 924
    return v1

    .line 926
    :cond_0
    if-ne p0, p1, :cond_1

    .line 927
    const/4 v1, 0x1

    return v1

    .line 929
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 930
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 932
    .local v0, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 932
    if-eqz v2, :cond_2

    .line 934
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 932
    if-eqz v2, :cond_2

    .line 935
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 932
    if-eqz v2, :cond_2

    .line 936
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 937
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 936
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 932
    :cond_2
    return v1

    .line 939
    .end local v0    # "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_3
    return v1
.end method

.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x1

    .line 677
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 679
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getHighSpeedVideoFpsRanges()[Landroid/util/Range;
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
    .line 622
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 623
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    return-object v1
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 9
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 559
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 560
    .local v1, "fpsRangeCount":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    .line 561
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 562
    const-string/jumbo v7, "Size %s does not support high speed video recording"

    .line 561
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 562
    aput-object p1, v8, v5

    .line 561
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 566
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v2, v6, [Landroid/util/Range;

    .line 567
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 568
    .local v3, "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v7, v6

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 569
    .local v0, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 570
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    aput-object v8, v2, v4

    .line 568
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 573
    .end local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v2

    .restart local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 533
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    return-object v1
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 640
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 641
    .local v3, "sizeCount":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    .line 642
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 643
    const-string/jumbo v7, "FpsRange %s does not support high speed video recording"

    .line 642
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 643
    aput-object p1, v8, v5

    .line 642
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 646
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v4, v6, [Landroid/util/Size;

    .line 647
    .local v4, "sizes":[Landroid/util/Size;
    const/4 v1, 0x0

    .line 648
    .local v1, "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v7, v6

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 649
    .local v0, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 650
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    aput-object v8, v4, v2

    .line 648
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 653
    .end local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v4

    .restart local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public final getInputFormats()[I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getInputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputFormats()[I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    .line 721
    const-string/jumbo v0, "size must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 724
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 725
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 727
    const/4 v2, 0x0

    .line 724
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 775
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 494
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 462
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    const/16 v0, 0x22

    .line 467
    const/4 v1, 0x1

    .line 466
    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStallDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    const/4 v2, 0x1

    .line 868
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 870
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 871
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 870
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_0
    const/16 v0, 0x22

    .line 910
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 909
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getValidOutputFormatsForInput(I)[I
    .locals 1
    .param p1, "inputFormat"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 948
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/Object;

    .line 949
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 950
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 951
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 948
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOutputSupportedFor(I)Z
    .locals 5
    .param p1, "format"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 297
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 298
    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .line 299
    .local v0, "dataspace":I
    const/16 v4, 0x1000

    if-ne v0, v4, :cond_1

    .line 300
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 302
    :cond_1
    invoke-direct {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 402
    const-string/jumbo v6, "surface must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    .line 405
    .local v5, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    .line 406
    .local v4, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v3

    .line 409
    .local v3, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v2

    .line 412
    .local v2, "isFlexible":Z
    if-lt v4, v11, :cond_0

    .line 413
    const/4 v6, 0x5

    if-gt v4, v6, :cond_0

    .line 414
    const/16 v4, 0x22

    .line 418
    :cond_0
    const/16 v6, 0x1000

    if-eq v3, v6, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 419
    .local v1, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v0, v1, v6

    .line 420
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v9

    if-ne v9, v4, :cond_3

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 423
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 424
    return v11

    .line 418
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .line 425
    .restart local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    .line 426
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    const/16 v10, 0x780

    if-gt v9, v10, :cond_3

    .line 427
    return v11

    .line 419
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 431
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4
    return v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 1472
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 1474
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 1476
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 1478
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 1480
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

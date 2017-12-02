.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field private static final FRAME_INFO_FLAG_FIRST_DRAW:I = 0x1

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I


# instance fields
.field final mTimingData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    .line 32
    return-void

    .line 210
    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0x1
        0xd
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .locals 4
    .param p1, "other"    # Landroid/view/FrameMetrics;

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 244
    iget-object v0, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 242
    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .locals 6
    .param p1, "id"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x9

    const/4 v1, 0x0

    .line 265
    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    .line 266
    :cond_0
    return-wide v4

    .line 269
    :cond_1
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v2, :cond_2

    .line 270
    return-wide v4

    .line 273
    :cond_2
    if-ne p1, v3, :cond_4

    .line 274
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    int-to-long v2, v1

    return-wide v2

    .line 277
    :cond_4
    mul-int/lit8 v0, p1, 0x2

    .line 278
    .local v0, "durationsIdx":I
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v2, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aget-wide v2, v1, v2

    .line 279
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v4, Landroid/view/FrameMetrics;->DURATIONS:[I

    aget v4, v4, v0

    aget-wide v4, v1, v4

    .line 278
    sub-long/2addr v2, v4

    return-wide v2
.end method

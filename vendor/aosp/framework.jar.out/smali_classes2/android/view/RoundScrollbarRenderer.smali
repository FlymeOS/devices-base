.class Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field private static final DEFAULT_THUMB_COLOR:I = 0x4cffffff

.field private static final DEFAULT_TRACK_COLOR:I = 0x26ffffff

.field private static final MAX_SCROLLBAR_ANGLE_SWIPE:I = 0x10

.field private static final MIN_SCROLLBAR_ANGLE_SWIPE:I = 0x6

.field private static final SCROLLBAR_ANGLE_RANGE:I = 0x5a

.field private static final WIDTH_PERCENTAGE:F = 0.02f


# instance fields
.field private final mParent:Landroid/view/View;

.field private final mRect:Landroid/graphics/RectF;

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private final mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 45
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 42
    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 109
    .local v0, "alphaByte":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 98
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 99
    return p1

    .line 100
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    .line 101
    return p2

    .line 103
    :cond_1
    return p0
.end method

.method private setThumbColor(I)V
    .locals 1
    .param p1, "thumbColor"    # I

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 114
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    :cond_0
    return-void
.end method

.method private setTrackColor(I)V
    .locals 1
    .param p1, "trackColor"    # I

    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 120
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alpha"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 58
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    int-to-float v9, v1

    .line 63
    .local v9, "maxScroll":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    int-to-float v10, v1

    .line 64
    .local v10, "scrollExtent":F
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-lez v1, :cond_1

    cmpg-float v1, v9, v10

    if-gtz v1, :cond_2

    .line 65
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v7, v1

    .line 68
    .local v7, "currentScroll":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    int-to-float v8, v1

    .line 69
    .local v8, "linearThumbLength":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v13, v1, v2

    .line 70
    .local v13, "thumbWidth":F
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    const v1, 0x4cffffff    # 1.3421772E8f

    move/from16 v0, p2

    invoke-static {v1, v0}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/view/RoundScrollbarRenderer;->setThumbColor(I)V

    .line 74
    const v1, 0x26ffffff

    move/from16 v0, p2

    invoke-static {v1, v0}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/view/RoundScrollbarRenderer;->setTrackColor(I)V

    .line 77
    div-float v1, v8, v9

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float v12, v1, v2

    .line 78
    .local v12, "sweepAngle":F
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v12, v1, v2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v12

    .line 80
    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, v12

    mul-float/2addr v1, v7

    .line 81
    sub-float v2, v9, v8

    .line 80
    div-float/2addr v1, v2

    .line 81
    const/high16 v2, 0x42340000    # 45.0f

    .line 80
    sub-float v11, v1, v2

    .line 82
    .local v11, "startAngle":F
    const/high16 v1, -0x3dcc0000    # -45.0f

    .line 83
    const/high16 v2, 0x42340000    # 45.0f

    sub-float/2addr v2, v12

    .line 82
    invoke-static {v11, v1, v2}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v11

    .line 86
    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 87
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v13, v3

    sub-float/2addr v2, v3

    .line 88
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 89
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v13, v5

    sub-float/2addr v4, v5

    .line 90
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 86
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3dcc0000    # -45.0f

    const/high16 v4, 0x42b40000    # 90.0f

    .line 93
    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 92
    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget-object v6, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

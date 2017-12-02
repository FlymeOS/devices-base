.class public Lcom/android/server/wm/animation/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# instance fields
.field private final mFromTranslateY:I

.field private mNormalizedTime:F

.field private final mToTranslateY:I

.field private final mTranslateInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIIIIILandroid/view/animation/Interpolator;)V
    .locals 10
    .param p1, "fromT"    # I
    .param p2, "fromB"    # I
    .param p3, "toT"    # I
    .param p4, "toB"    # I
    .param p5, "fromTranslateY"    # I
    .param p6, "toTranslateY"    # I
    .param p7, "translateInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 44
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v7, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    .line 45
    iput p5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    .line 46
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    .line 47
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 78
    .local v2, "translationT":F
    iget v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    iget v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 79
    .local v1, "translation":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 80
    .local v0, "oldClipRect":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 81
    iget-object v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 82
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 83
    iget-object v6, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 80
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 75
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartOffset()J

    move-result-wide v4

    .line 57
    .local v4, "startOffset":J
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getDuration()J

    move-result-wide v0

    .line 59
    .local v0, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v6

    add-long/2addr v6, v4

    sub-long v6, p1, v6

    long-to-float v3, v6

    .line 61
    long-to-float v6, v0

    .line 60
    div-float v2, v3, v6

    .line 66
    .local v2, "normalizedTime":F
    :goto_0
    iput v2, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ClipRectAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    return v3

    .line 64
    .end local v2    # "normalizedTime":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    const/4 v2, 0x0

    .restart local v2    # "normalizedTime":F
    goto :goto_0

    .end local v2    # "normalizedTime":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "normalizedTime":F
    goto :goto_0
.end method

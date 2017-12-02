.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 3
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 35
    return-void

    .line 39
    :pswitch_0
    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 42
    :pswitch_1
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 45
    :pswitch_2
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 48
    :pswitch_3
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 51
    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 4
    .param p0, "isHorizontalDivision"    # Z
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I

    .prologue
    .line 101
    if-eqz p0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 102
    .local v1, "start":I
    :goto_0
    if-eqz p0, :cond_1

    .line 103
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, v2

    .line 105
    .local v0, "end":I
    :goto_1
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2

    .line 101
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .restart local v1    # "start":I
    goto :goto_0

    .line 104
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v2

    goto :goto_1
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "dockSide"    # I
    .param p2, "dividerSize"    # I

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    .line 89
    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 91
    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    .line 93
    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .locals 1
    .param p0, "dockOnTopOrLeft"    # Z
    .param p1, "isHorizontalDivision"    # Z

    .prologue
    .line 110
    if-eqz p0, :cond_1

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_1
    if-eqz p1, :cond_2

    .line 118
    const/4 v0, 0x4

    return v0

    .line 120
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static invertDockSide(I)I
    .locals 1
    .param p0, "dockSide"    # I

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 136
    const/4 v0, -0x1

    return v0

    .line 128
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 130
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 132
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 134
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "topLeft"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_2

    .line 68
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    .line 69
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 71
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_1

    .line 72
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_3

    .line 76
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 78
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_1

    .line 79
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

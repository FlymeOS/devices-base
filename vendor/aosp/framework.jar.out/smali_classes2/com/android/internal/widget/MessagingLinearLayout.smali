.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v4, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    .line 59
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 64
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 65
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 66
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 64
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    goto :goto_1

    .line 71
    :pswitch_1
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_1

    .line 76
    .end local v2    # "attr":I
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    if-gtz v4, :cond_1

    .line 77
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 78
    const-string/jumbo v5, "MessagingLinearLayout: Must specify positive maxHeight"

    .line 77
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 244
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    return v1

    .line 247
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 252
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 263
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 265
    nop

    nop

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 267
    :cond_0
    return-object v0
.end method

.method public getContractedChildId()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 195
    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    .line 200
    .local v11, "paddingLeft":I
    sub-int v12, p4, p2

    .line 201
    .local v12, "width":I
    iget v13, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v12, v13

    .line 203
    .local v3, "childRight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    .line 204
    .local v9, "layoutDirection":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 206
    .local v6, "count":I
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 208
    .local v4, "childTop":I
    const/4 v7, 0x1

    .line 210
    .local v7, "first":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 211
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 214
    .local v10, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    iget-boolean v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v13, :cond_1

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 219
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 222
    .local v1, "childHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_3

    .line 223
    sub-int v13, v3, v5

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 228
    .local v2, "childLeft":I
    :goto_2
    if-nez v7, :cond_2

    .line 229
    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v4, v13

    .line 232
    :cond_2
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    .line 233
    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v0, v2, v4, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 235
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    .line 237
    const/4 v7, 0x0

    goto :goto_1

    .line 225
    .end local v2    # "childLeft":I
    :cond_3
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v11, v13

    .restart local v2    # "childLeft":I
    goto :goto_2

    .line 194
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v10    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 104
    :goto_0
    :sswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 105
    .local v17, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 107
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_0

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 109
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 110
    .local v14, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 107
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 93
    .end local v3    # "child":Landroid/view/View;
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v17    # "targetHeight":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94
    const/high16 v4, -0x80000000

    .line 92
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 98
    :sswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    .line 99
    const/high16 v4, -0x80000000

    .line 97
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 113
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v17    # "targetHeight":I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    add-int v19, v2, v4

    .line 114
    .local v19, "totalHeight":I
    const/4 v11, 0x1

    .line 118
    .local v11, "first":Z
    add-int/lit8 v12, v10, -0x1

    :goto_2
    if-ltz v12, :cond_5

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 118
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 122
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .restart local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 125
    .restart local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_2

    move-object v2, v3

    .line 129
    nop

    nop

    .line 130
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    .line 129
    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    .line 133
    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 136
    .local v9, "childHeight":I
    add-int v2, v19, v9

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 137
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 136
    add-int/2addr v4, v2

    .line 137
    if-eqz v11, :cond_4

    const/4 v2, 0x0

    .line 136
    :goto_5
    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 138
    .local v16, "newHeight":I
    const/4 v11, 0x0

    .line 140
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 141
    move/from16 v19, v16

    .line 142
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    goto :goto_3

    .line 130
    .end local v9    # "childHeight":I
    .end local v16    # "newHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    goto :goto_4

    .line 137
    .restart local v9    # "childHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_5

    .line 149
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childHeight":I
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    add-int v15, v2, v4

    .line 150
    .local v15, "measuredWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 152
    .local v13, "imageLines":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    add-int v19, v2, v4

    .line 153
    const/4 v11, 0x1

    .line 154
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_c

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 156
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 158
    .restart local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    iget-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_7

    .line 154
    :cond_6
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 162
    :cond_7
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_a

    move-object/from16 v18, v3

    .line 163
    nop

    nop

    .line 164
    .local v18, "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    const/4 v2, 0x2

    if-ne v13, v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_8

    .line 168
    const/4 v13, 0x3

    .line 170
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    move-result v8

    .line 171
    .local v8, "changed":Z
    if-eqz v8, :cond_9

    .line 172
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 174
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    sub-int/2addr v13, v2

    .line 178
    .end local v8    # "changed":Z
    .end local v18    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 179
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingLeft:I

    .line 178
    add-int/2addr v2, v4

    .line 179
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    .line 178
    add-int/2addr v2, v4

    .line 177
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 180
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v19

    .line 181
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    add-int/2addr v2, v4

    .line 181
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 180
    add-int/2addr v4, v2

    .line 181
    if-eqz v11, :cond_b

    const/4 v2, 0x0

    .line 180
    :goto_8
    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 182
    const/4 v11, 0x0

    goto :goto_7

    .line 181
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_8

    .line 187
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v4

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 86
    return-void

    .line 90
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContractedChildId(I)V
    .locals 0
    .param p1, "contractedChildId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 283
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    .line 282
    return-void
.end method

.method public setNumIndentLines(I)V
    .locals 0
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 275
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 274
    return-void
.end method

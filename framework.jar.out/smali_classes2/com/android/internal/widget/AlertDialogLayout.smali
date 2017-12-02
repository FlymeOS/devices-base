.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 225
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 228
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 229
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 235
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 236
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 240
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 228
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 257
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 258
    return v0

    .line 261
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 262
    check-cast v1, Landroid/view/ViewGroup;

    .line 263
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 264
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    .line 268
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v4
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 356
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 355
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    const/16 v20, 0x0

    .line 77
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 78
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    .line 80
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v9

    .line 81
    .local v9, "count":I
    const/4 v14, 0x0

    .end local v4    # "buttonPanel":Landroid/view/View;
    .end local v18    # "middlePanel":Landroid/view/View;
    .end local v20    # "topPanel":Landroid/view/View;
    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_2

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 83
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    .line 88
    .local v15, "id":I
    sparse-switch v15, :sswitch_data_0

    .line 105
    const/16 v24, 0x0

    return v24

    .line 90
    :sswitch_0
    move-object/from16 v20, v6

    .line 91
    .local v20, "topPanel":Landroid/view/View;
    goto :goto_1

    .line 93
    .end local v20    # "topPanel":Landroid/view/View;
    :sswitch_1
    move-object v4, v6

    .line 94
    .local v4, "buttonPanel":Landroid/view/View;
    goto :goto_1

    .line 97
    .end local v4    # "buttonPanel":Landroid/view/View;
    :sswitch_2
    if-eqz v18, :cond_1

    .line 99
    const/16 v24, 0x0

    return v24

    .line 101
    :cond_1
    move-object/from16 v18, v6

    .line 102
    .local v18, "middlePanel":Landroid/view/View;
    goto :goto_1

    .line 109
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    .end local v18    # "middlePanel":Landroid/view/View;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 110
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 111
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 113
    .local v22, "widthMode":I
    const/4 v8, 0x0

    .line 114
    .local v8, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v25

    add-int v21, v24, v25

    .line 116
    .local v21, "usedHeight":I
    if-eqz v20, :cond_3

    .line 117
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 119
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 120
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 123
    :cond_3
    const/4 v3, 0x0

    .line 124
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    .line 125
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_4

    .line 126
    const/16 v24, 0x0

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 128
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v24, v3

    .line 130
    add-int v21, v21, v3

    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 134
    :cond_4
    const/16 v17, 0x0

    .line 135
    .local v17, "middleHeight":I
    if-eqz v18, :cond_5

    .line 137
    if-nez v10, :cond_a

    .line 138
    const/4 v7, 0x0

    .line 144
    .local v7, "childHeightSpec":I
    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 147
    add-int v21, v21, v17

    .line 148
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 151
    .end local v7    # "childHeightSpec":I
    :cond_5
    sub-int v19, v11, v21

    .line 156
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_7

    .line 157
    sub-int v21, v21, v3

    .line 159
    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 160
    .local v13, "heightToGive":I
    if-lez v13, :cond_6

    .line 161
    sub-int v19, v19, v13

    .line 162
    add-int/2addr v3, v13

    .line 166
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    .line 165
    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 167
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    .line 169
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 170
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 175
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_7
    if-eqz v18, :cond_8

    if-lez v19, :cond_8

    .line 176
    sub-int v21, v21, v17

    .line 178
    move/from16 v13, v19

    .line 179
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v19

    .line 180
    add-int v17, v17, v13

    .line 185
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 187
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 189
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 190
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 194
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_8
    const/16 v16, 0x0

    .line 195
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_b

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 197
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 198
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 195
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 141
    .end local v6    # "child":Landroid/view/View;
    .end local v16    # "maxWidth":I
    .end local v19    # "remainingHeight":I
    :cond_a
    sub-int v24, v11, v21

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 140
    move/from16 v0, v24

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_2

    .line 202
    .end local v7    # "childHeightSpec":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "remainingHeight":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 204
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v23

    .line 205
    .local v23, "widthSizeAndState":I
    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v12

    .line 206
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 210
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 214
    :cond_c
    const/16 v24, 0x1

    return v24

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020323 -> :sswitch_0
        0x1020327 -> :sswitch_1
        0x102032a -> :sswitch_2
        0x102032c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    move/from16 v20, v0

    .line 276
    .local v20, "paddingLeft":I
    sub-int v22, p4, p2

    .line 277
    .local v22, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v8, v22, v1

    .line 280
    .local v8, "childRight":I
    sub-int v1, v22, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v9, v1, v23

    .line 282
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v21

    .line 283
    .local v21, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v10

    .line 284
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    .line 285
    .local v13, "gravity":I
    and-int/lit8 v18, v13, 0x70

    .line 286
    .local v18, "majorGravity":I
    const v1, 0x800007

    and-int v19, v13, v1

    .line 289
    .local v19, "minorGravity":I
    sparse-switch v18, :sswitch_data_0

    .line 302
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    .line 306
    .local v4, "childTop":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 307
    .local v11, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_3

    .line 308
    const/4 v12, 0x0

    .line 310
    .local v12, "dividerHeight":I
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_4

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 312
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v1, v0, :cond_2

    .line 313
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 314
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 317
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 320
    .local v16, "layoutGravity":I
    if-gez v16, :cond_0

    .line 321
    move/from16 v16, v19

    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    move-result v15

    .line 324
    .local v15, "layoutDirection":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 328
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 340
    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v20, v1

    .line 344
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    add-int/2addr v4, v12

    .line 348
    :cond_1
    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    .line 349
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 350
    move-object/from16 v0, v17

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    .line 310
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 292
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    .end local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dividerHeight":I
    .end local v14    # "i":I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v4, v1, v21

    .line 293
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 297
    .end local v4    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    sub-int v23, p5, p3

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v4, v1, v23

    .line 298
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 308
    .restart local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .restart local v12    # "dividerHeight":I
    goto :goto_1

    .line 330
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "childWidth":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "absoluteGravity":I
    .restart local v14    # "i":I
    .restart local v15    # "layoutDirection":I
    .restart local v16    # "layoutGravity":I
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v20

    .line 331
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    .line 330
    add-int v1, v1, v23

    .line 331
    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    .line 330
    sub-int v3, v1, v23

    .line 332
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 335
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    .line 336
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 272
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 328
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method

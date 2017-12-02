.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 44
    iput v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 51
    const/16 v3, 0x140

    .line 50
    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 52
    .local v0, "allowStackingDefault":Z
    :goto_0
    sget-object v2, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void

    .line 50
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "allowStackingDefault":Z
    goto :goto_0
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 139
    move v1, p1

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 141
    return v1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 153
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 154
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 156
    const v3, 0x102032d

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 158
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 164
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 164
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 154
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2
    const/16 v3, 0x50

    goto :goto_0

    .line 158
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    .line 152
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 72
    .local v10, "widthSize":I
    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_1

    .line 73
    iget v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v10, v11, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 75
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 78
    :cond_0
    iput v10, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 81
    :cond_1
    const/4 v8, 0x0

    .line 87
    .local v8, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_6

    .line 88
    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 91
    .local v4, "initialWidthMeasureSpec":I
    const/4 v8, 0x1

    .line 96
    :goto_0
    move/from16 v0, p2

    invoke-super {p0, v4, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 98
    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 109
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 110
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    :cond_3
    const/4 v7, 0x0

    .line 116
    .local v7, "minHeight":I
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v3

    .line 117
    .local v3, "firstVisible":I
    if-ltz v3, :cond_4

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "firstButton":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .local v2, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 121
    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 120
    add-int/2addr v11, v12

    .line 121
    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 120
    add-int/2addr v11, v12

    add-int/lit8 v7, v11, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 123
    add-int/lit8 v11, v3, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v9

    .line 124
    .local v9, "secondVisible":I
    if-ltz v9, :cond_4

    .line 125
    int-to-float v11, v7

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v13, v14

    .line 125
    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v7, v11

    .line 133
    .end local v1    # "firstButton":Landroid/view/View;
    .end local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "secondVisible":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v11

    if-eq v11, v7, :cond_5

    .line 134
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 69
    :cond_5
    return-void

    .line 93
    .end local v3    # "firstVisible":I
    .end local v4    # "initialWidthMeasureSpec":I
    .end local v7    # "minHeight":I
    :cond_6
    move/from16 v4, p1

    .restart local v4    # "initialWidthMeasureSpec":I
    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v5

    .line 100
    .local v5, "measuredWidth":I
    const/high16 v11, -0x1000000

    and-int v6, v5, v11

    .line 101
    .local v6, "measuredWidthState":I
    const/high16 v11, 0x1000000

    if-ne v6, v11, :cond_2

    .line 102
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 105
    const/4 v8, 0x1

    goto :goto_1

    .line 129
    .end local v5    # "measuredWidth":I
    .end local v6    # "measuredWidthState":I
    .restart local v1    # "firstButton":Landroid/view/View;
    .restart local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "firstVisible":I
    .restart local v7    # "minHeight":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 60
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    .line 58
    :cond_1
    return-void
.end method

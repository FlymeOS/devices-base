.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 146
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 152
    .local v0, "adapter":Landroid/widget/DayPickerPagerAdapter;
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v2

    .line 153
    .local v2, "current":Landroid/widget/SimpleMonthView;
    if-eq v2, p2, :cond_1

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 155
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 156
    return-object v5

    .line 160
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 161
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 162
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, "child":Landroid/view/View;
    if-eq v1, p2, :cond_2

    if-eq v1, v2, :cond_2

    .line 165
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 167
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 168
    return-object v5

    .line 161
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    return-object v7
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 65
    .local v4, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_2

    .line 66
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v12, :cond_3

    const/4 v10, 0x1

    .line 68
    .local v10, "measureMatchParentChildren":Z
    :goto_0
    const/4 v8, 0x0

    .line 69
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 70
    .local v9, "maxWidth":I
    const/4 v2, 0x0

    .line 72
    .local v2, "childState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 73
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 75
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 77
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v2, v11}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v2

    .line 80
    if-eqz v10, :cond_1

    .line 81
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 82
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 83
    :cond_0
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v6    # "i":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxWidth":I
    .end local v10    # "measureMatchParentChildren":Z
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    .line 66
    .end local v10    # "measureMatchParentChildren":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    .line 90
    .restart local v2    # "childState":I
    .restart local v6    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v9    # "maxWidth":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 99
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 100
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 101
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 104
    :cond_5
    invoke-static {v9, p1, v2}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v11

    .line 106
    shl-int/lit8 v12, v2, 0x10

    .line 105
    invoke-static {v8, p2, v12}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v12

    .line 104
    invoke-virtual {p0, v11, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 108
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 109
    const/4 v11, 0x1

    if-le v4, v11, :cond_8

    .line 110
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    .line 111
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 117
    .restart local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 120
    const/high16 v12, 0x40000000    # 2.0f

    .line 118
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 127
    .local v3, "childWidthMeasureSpec":I
    :goto_3
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 130
    const/high16 v12, 0x40000000    # 2.0f

    .line 128
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 137
    .local v1, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 123
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    .line 124
    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    invoke-static {p1, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v3

    .restart local v3    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 133
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    .line 134
    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    invoke-static {p2, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 141
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

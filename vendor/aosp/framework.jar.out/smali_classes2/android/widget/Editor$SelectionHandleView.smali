.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .prologue
    const/4 v7, 0x0

    .line 4650
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 4652
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    .line 4637
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 4643
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4648
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 4653
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 4654
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 4655
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 4651
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4947
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4948
    .local v2, "line":I
    if-eqz p3, :cond_1

    move v3, p2

    .line 4949
    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4950
    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 4951
    .local v1, "isRtlParagraph":Z
    :cond_0
    if-ne v0, v1, :cond_2

    .line 4952
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4951
    :goto_1
    return v4

    .line 4948
    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_1
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 4952
    .restart local v0    # "isRtlChar":Z
    .restart local v1    # "isRtlParagraph":Z
    .restart local v3    # "offsetToCheck":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_1
.end method

.method private isStartHandle()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4659
    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4888
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4889
    .local v1, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_3

    if-lt p1, v1, :cond_3

    .line 4891
    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4892
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 4893
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_7

    if-eq p1, v1, :cond_7

    .line 4894
    invoke-virtual {p0, v5, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 4896
    .local v4, "horiz":F
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    .line 4895
    :goto_1
    invoke-direct {p0, v5, v1, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    .line 4897
    .local v0, "anotherHandleHoriz":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {p0, v5, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .line 4898
    .local v2, "currentHoriz":F
    cmpg-float v7, v2, v0

    if-gez v7, :cond_6

    cmpg-float v7, v4, v0

    if-gez v7, :cond_6

    .line 4902
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v3

    .line 4903
    .local v3, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_9

    move v6, v3

    .line 4905
    .local v6, "offsetToGetRunRange":I
    :goto_2
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .line 4906
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4907
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    .line 4911
    :goto_3
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    .line 4912
    return-void

    .line 4888
    .end local v0    # "anotherHandleHoriz":F
    .end local v1    # "anotherHandleOffset":I
    .end local v2    # "currentHoriz":F
    .end local v3    # "currentOffset":I
    .end local v4    # "horiz":F
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .restart local v1    # "anotherHandleOffset":I
    goto :goto_0

    .line 4890
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-nez v7, :cond_4

    if-le p1, v1, :cond_0

    .line 4918
    :cond_4
    :goto_4
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    .line 4886
    return-void

    .restart local v4    # "horiz":F
    .restart local v5    # "layout":Landroid/text/Layout;
    :cond_5
    move v7, v11

    .line 4896
    goto :goto_1

    .line 4899
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    :cond_6
    cmpl-float v7, v2, v0

    if-lez v7, :cond_7

    cmpl-float v7, v4, v0

    if-gtz v7, :cond_1

    .line 4916
    .end local v0    # "anotherHandleHoriz":F
    .end local v2    # "currentHoriz":F
    .end local v4    # "horiz":F
    :cond_7
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v12

    if-eqz v12, :cond_8

    move v11, v10

    :cond_8
    invoke-static {v7, v1, v11}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;IZ)I

    move-result p1

    goto :goto_4

    .line 4904
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    .restart local v3    # "currentOffset":I
    .restart local v4    # "horiz":F
    :cond_9
    add-int/lit8 v7, v3, -0x1

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 4909
    .restart local v6    # "offsetToGetRunRange":I
    .restart local v8    # "range":J
    :cond_a
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    goto :goto_3
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4922
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4924
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    .line 4925
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 4926
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 4925
    sub-int v2, v3, v4

    .line 4927
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 4932
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 4927
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 4929
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 4930
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4678
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4943
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4673
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4664
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 4665
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4667
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 4957
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    .line 4958
    .local v3, "localX":F
    invoke-virtual {p1, p2, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    .line 4959
    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4960
    return v6

    .line 4962
    :cond_0
    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    .line 4963
    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 4964
    .local v0, "currentOffset":I
    sub-int v10, v6, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 4965
    .local v5, "primaryDiff":I
    sub-int v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 4966
    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    .line 4967
    return v6

    .line 4968
    :cond_1
    if-le v5, v7, :cond_2

    .line 4969
    return v8

    .line 4971
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v0

    .line 4973
    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 4974
    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 4975
    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    .line 4972
    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .restart local v1    # "isRtlChar":Z
    .restart local v4    # "offsetToCheck":I
    :cond_4
    move v2, v9

    .line 4974
    goto :goto_1

    .restart local v2    # "isRtlParagraph":Z
    :cond_5
    move v6, v8

    .line 4975
    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4937
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 4938
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    .line 4937
    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4876
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4877
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4880
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4881
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 4883
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4870
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4871
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 4869
    return-void

    .line 4871
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    .line 4699
    .local v12, "layout":Landroid/text/Layout;
    if-nez v12, :cond_0

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4703
    return-void

    .line 4706
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 4707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4710
    :cond_1
    const/16 v16, 0x0

    .line 4712
    .local v16, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 4713
    .local v5, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-static {v0, v12, v1, v2}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v7

    .line 4714
    .local v7, "currLine":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 4716
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_7

    if-lt v9, v5, :cond_7

    .line 4720
    :goto_1
    invoke-virtual {v12, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 4721
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 4724
    :cond_2
    move v14, v9

    .line 4725
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    move-result v21

    .line 4726
    .local v21, "wordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    move-result v22

    .line 4728
    .local v22, "wordStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3

    .line 4729
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 4732
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v8

    .line 4733
    .local v8, "currentOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v17

    .line 4734
    .local v17, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    .line 4735
    .local v6, "atRtl":Z
    invoke-virtual {v12, v14}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v11

    .line 4740
    .local v11, "isLvlBoundary":Z
    if-nez v11, :cond_5

    if-eqz v17, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-nez v17, :cond_8

    if-eqz v6, :cond_8

    .line 4743
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4744
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4745
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4746
    return-void

    .line 4712
    .end local v5    # "anotherHandleOffset":I
    .end local v6    # "atRtl":Z
    .end local v7    # "currLine":I
    .end local v8    # "currentOffset":I
    .end local v9    # "initialOffset":I
    .end local v11    # "isLvlBoundary":Z
    .end local v14    # "offset":I
    .end local v17    # "rtlAtCurrentOffset":Z
    .end local v21    # "wordEnd":I
    .end local v22    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .restart local v5    # "anotherHandleOffset":I
    goto/16 :goto_0

    .line 4717
    .restart local v7    # "currLine":I
    .restart local v9    # "initialOffset":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_2

    if-gt v9, v5, :cond_2

    goto/16 :goto_1

    .line 4747
    .restart local v6    # "atRtl":Z
    .restart local v8    # "currentOffset":I
    .restart local v11    # "isLvlBoundary":Z
    .restart local v14    # "offset":I
    .restart local v17    # "rtlAtCurrentOffset":Z
    .restart local v21    # "wordEnd":I
    .restart local v22    # "wordStart":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    if-eqz v11, :cond_c

    .line 4757
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    sub-float v23, p1, v24

    .line 4758
    .local v23, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 4759
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_d

    const/4 v10, 0x1

    .line 4763
    .local v10, "isExpanding":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_11

    .line 4764
    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_10

    const/16 v24, 0x1

    :goto_3
    or-int v10, v10, v24

    .line 4769
    .local v10, "isExpanding":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 4770
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 4771
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getScrollX()I

    move-result v24

    if-eqz v24, :cond_13

    .line 4774
    :cond_a
    if-eqz v10, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_1d

    if-ge v14, v8, :cond_1d

    .line 4780
    :cond_b
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4781
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_1f

    .line 4782
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v13

    .line 4784
    .local v13, "nextOffset":I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4785
    return-void

    .line 4750
    .end local v10    # "isExpanding":Z
    .end local v13    # "nextOffset":I
    .end local v23    # "xDiff":F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4751
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4752
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 4753
    return-void

    .line 4759
    .restart local v23    # "xDiff":F
    :cond_d
    const/4 v10, 0x0

    .local v10, "isExpanding":Z
    goto/16 :goto_2

    .line 4761
    .end local v10    # "isExpanding":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_f

    const/4 v10, 0x1

    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    .end local v10    # "isExpanding":Z
    :cond_f
    const/4 v10, 0x0

    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    .line 4764
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 4766
    :cond_11
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_12

    const/16 v24, 0x1

    :goto_6
    or-int v10, v10, v24

    .local v10, "isExpanding":Z
    goto/16 :goto_4

    .local v10, "isExpanding":Z
    :cond_12
    const/16 v24, 0x0

    goto :goto_6

    .line 4772
    .local v10, "isExpanding":Z
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_14

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    if-eqz v6, :cond_1c

    const/16 v24, -0x1

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v24

    .line 4770
    if-nez v24, :cond_a

    .line 4789
    :cond_14
    :goto_8
    if-eqz v10, :cond_2b

    .line 4791
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_20

    move/from16 v20, v22

    .line 4792
    .local v20, "wordBoundary":I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 4793
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_22

    .line 4794
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_23

    const/16 v24, 0x1

    :goto_a
    move/from16 v19, v24

    .line 4795
    .local v19, "snapToWord":Z
    :goto_b
    if-eqz v19, :cond_18

    .line 4799
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v7, :cond_16

    .line 4800
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 4801
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 4803
    :cond_16
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_25

    .line 4804
    sub-int v24, v21, v20

    div-int/lit8 v24, v24, 0x2

    sub-int v15, v21, v24

    .line 4806
    .local v15, "offsetThresholdToSnap":I
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_26

    .line 4807
    if-le v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_26

    .line 4810
    :cond_17
    move/from16 v14, v22

    .line 4820
    .end local v15    # "offsetThresholdToSnap":I
    :cond_18
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_29

    if-ge v14, v9, :cond_29

    .line 4822
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 4824
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    .line 4823
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4828
    .end local v4    # "adjustedX":F
    :goto_f
    const/16 v16, 0x1

    .line 4861
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_1a
    :goto_10
    if-eqz v16, :cond_1b

    .line 4862
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4863
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4865
    :cond_1b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 4697
    return-void

    .line 4773
    :cond_1c
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 4775
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_1e

    if-gt v14, v8, :cond_b

    .line 4776
    :cond_1e
    if-eqz v10, :cond_b

    goto/16 :goto_8

    .line 4783
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v13

    goto/16 :goto_5

    .line 4791
    :cond_20
    move/from16 v20, v21

    .restart local v20    # "wordBoundary":I
    goto/16 :goto_9

    .line 4793
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v7, v0, :cond_15

    .line 4792
    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 4794
    :cond_23
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 4801
    .restart local v19    # "snapToWord":Z
    :cond_24
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    goto/16 :goto_c

    .line 4805
    :cond_25
    sub-int v24, v20, v22

    div-int/lit8 v24, v24, 0x2

    add-int v15, v22, v24

    .restart local v15    # "offsetThresholdToSnap":I
    goto/16 :goto_d

    .line 4811
    :cond_26
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_28

    .line 4812
    if-ge v14, v15, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_28

    .line 4815
    :cond_27
    move/from16 v14, v21

    .line 4812
    goto/16 :goto_e

    .line 4817
    :cond_28
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    goto/16 :goto_e

    .line 4821
    .end local v15    # "offsetThresholdToSnap":I
    :cond_29
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_2a

    if-gt v14, v9, :cond_19

    .line 4826
    :cond_2a
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_f

    .line 4831
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    move/from16 v24, v0

    sub-float v24, p1, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .line 4832
    .local v3, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_2f

    .line 4833
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v3, v0, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_2e

    :cond_2c
    const/16 v18, 0x1

    .line 4835
    .local v18, "shrinking":Z
    :goto_11
    if-eqz v18, :cond_36

    .line 4837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v7, v0, :cond_35

    .line 4839
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_32

    move/from16 v14, v22

    .line 4840
    :goto_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_33

    if-ge v14, v9, :cond_33

    .line 4842
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 4844
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    .line 4843
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 4851
    .end local v4    # "adjustedX":F
    :goto_13
    const/16 v16, 0x1

    goto/16 :goto_10

    .line 4833
    .end local v18    # "shrinking":Z
    :cond_2e
    const/16 v18, 0x0

    goto :goto_11

    .line 4834
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v3, v0, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_31

    :cond_30
    const/16 v18, 0x1

    goto :goto_11

    :cond_31
    const/16 v18, 0x0

    goto :goto_11

    .line 4839
    .restart local v18    # "shrinking":Z
    :cond_32
    move/from16 v14, v21

    goto :goto_12

    .line 4841
    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_34

    if-gt v14, v9, :cond_2d

    .line 4846
    :cond_34
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_13

    .line 4849
    :cond_35
    move v14, v3

    goto :goto_13

    .line 4852
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_37

    .line 4856
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    .line 4857
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v25

    .line 4856
    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_10

    .line 4853
    :cond_37
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v3, v0, :cond_1a

    goto :goto_14
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4683
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4684
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4685
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4684
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4690
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4691
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4692
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4682
    :cond_0
    return-void

    .line 4687
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4688
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4687
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

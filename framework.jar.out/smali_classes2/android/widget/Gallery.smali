.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$1;,
        Landroid/widget/Gallery$FlingRunnable;,
        Landroid/widget/Gallery$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method static synthetic -get0(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Gallery;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/Gallery;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Gallery;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 84
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 121
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 127
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 152
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 157
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 183
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 207
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    .line 206
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 210
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 211
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 215
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 216
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    .line 217
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 221
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 222
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 225
    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    .line 224
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 226
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 234
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 203
    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 944
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 945
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 947
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 949
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 962
    :goto_2
    return v2

    .line 944
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .restart local v3    # "myHeight":I
    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .restart local v1    # "childHeight":I
    goto :goto_1

    .line 951
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 954
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    .line 955
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 954
    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 956
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 957
    goto :goto_2

    .line 959
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    .line 960
    goto :goto_2

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 494
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 495
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 496
    .local v8, "start":I
    const/4 v1, 0x0

    .line 498
    .local v1, "count":I
    if-eqz p1, :cond_5

    .line 499
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 500
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 501
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 502
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 511
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 512
    const/4 v8, 0x0

    .line 532
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 534
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 535
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 492
    :cond_2
    return-void

    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    .line 501
    goto :goto_1

    .line 506
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_4
    move v8, v6

    .line 507
    add-int/lit8 v1, v1, 0x1

    .line 508
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 516
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 517
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 518
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 519
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 527
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 528
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 517
    goto :goto_4

    .line 522
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_8
    move v8, v6

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 524
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 516
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "useOffsets"    # Z

    .prologue
    .line 1207
    const/4 v6, 0x0

    .line 1209
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1211
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    .line 1210
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1214
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 1215
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1217
    if-eqz p7, :cond_3

    .line 1218
    invoke-super {p0, p1, p5, p6}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v6

    .line 1224
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 1225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1228
    :cond_2
    return v6

    .line 1220
    :cond_3
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .local v6, "handled":Z
    goto :goto_0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1122
    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1126
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1120
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1129
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 699
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 739
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 740
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 743
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 747
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 748
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 749
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 757
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 758
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 762
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 765
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 766
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 752
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 753
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 754
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 738
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 708
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 709
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 710
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 711
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 714
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 718
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 719
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 720
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 728
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 729
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    .line 730
    const/4 v8, 0x0

    .line 729
    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 733
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 724
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 725
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 770
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 810
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 811
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 812
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 813
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 816
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 820
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 821
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 822
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 829
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 830
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 834
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 825
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 826
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 809
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 779
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 780
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 783
    .local v2, "galleryRight":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 787
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 788
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 789
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 796
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 797
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 801
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 804
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 805
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 791
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .line 792
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 793
    .restart local v0    # "curLeftEdge":I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 778
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    const/4 v3, 0x0

    .line 857
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 858
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 859
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 864
    .local v1, "childLeft":I
    iget v2, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 865
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 864
    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 866
    iget v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 869
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 871
    return-object v0

    .line 876
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 879
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 881
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 468
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 467
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 560
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 563
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 565
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 558
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 547
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 548
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 550
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 551
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    .line 552
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 543
    :goto_0
    return-void

    .line 554
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .param p1, "childPosition"    # I

    .prologue
    .line 1305
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1307
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1308
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1309
    .local v1, "distance":I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1310
    const/4 v2, 0x1

    return v2

    .line 1313
    .end local v1    # "distance":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 582
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 583
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 588
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_1

    .line 589
    return-void

    .line 593
    :cond_1
    const v2, 0x7fffffff

    .line 594
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 595
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 597
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 601
    move v6, v4

    .line 613
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 615
    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_3

    .line 616
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 617
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 618
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 580
    :cond_3
    return-void

    .line 605
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 606
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 605
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 607
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 608
    move v2, v1

    .line 609
    move v6, v4

    .line 595
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 901
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 905
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 907
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 910
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 911
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 910
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 912
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 913
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 916
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 922
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 923
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 925
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 926
    .local v7, "width":I
    if-eqz p4, :cond_3

    .line 927
    move v2, p3

    .line 928
    .local v2, "childLeft":I
    add-int v3, p3, v7

    .line 934
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 896
    return-void

    .line 905
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 907
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 930
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    .line 931
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 9
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1176
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1177
    .local v3, "longPressPosition":I
    if-gez v3, :cond_0

    .line 1178
    return v0

    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .local v4, "longPressId":J
    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 1182
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result v0

    return v0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1196
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    .line 1197
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v3

    .line 1198
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1199
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result v1

    return v1

    .line 1202
    .end local v0    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return v3
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1326
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1328
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1329
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1330
    return-void

    .line 1333
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1334
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1337
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1342
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1345
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1349
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1324
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 337
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1234
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1148
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1139
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 355
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 342
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1405
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1370
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1373
    .local v0, "selectedIndex":I
    if-gez v0, :cond_0

    return p2

    .line 1375
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    .line 1377
    return v0

    .line 1378
    :cond_1
    if-lt p2, v0, :cond_2

    .line 1380
    add-int/lit8 v1, p2, 0x1

    return v1

    .line 1383
    :cond_2
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 312
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 314
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 429
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v5, :cond_0

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v5, -0x1

    .line 430
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 433
    return p2

    .line 429
    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "extremeItemPosition":I
    goto :goto_0

    .line 436
    .restart local v1    # "extremeChild":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 437
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 439
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    .line 440
    if-gt v2, v4, :cond_3

    .line 443
    return v6

    .line 446
    :cond_2
    if-lt v2, v4, :cond_3

    .line 449
    return v6

    .line 453
    :cond_3
    sub-int v0, v4, v2

    .line 455
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    .line 456
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 455
    :goto_1
    return v5

    .line 457
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 637
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 638
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 640
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 645
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 646
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 647
    return-void

    .line 651
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 652
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 656
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    .line 660
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 666
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 667
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 675
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 676
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 679
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 680
    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 679
    add-int v3, v4, v5

    .line 681
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 683
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 684
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 687
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 689
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 690
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 692
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 693
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 694
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 696
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 633
    return-void
.end method

.method moveDirection(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int p1, p1

    .line 1294
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int v0, v1, p1

    .line 1296
    .local v0, "targetPosition":I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v1, :cond_1

    .line 1297
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1298
    const/4 v1, 0x1

    return v1

    .line 1300
    :cond_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onAttachedToWindow()V

    .line 241
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 243
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1096
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1064
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1069
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1070
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1071
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1075
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1078
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 1005
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1012
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1016
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1018
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1396
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1398
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1388
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1411
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1412
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1413
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1415
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1418
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1410
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1412
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1243
    sparse-switch p1, :sswitch_data_0

    .line 1263
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1246
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1248
    return v1

    .line 1252
    :sswitch_1
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1254
    return v1

    .line 1259
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1243
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1268
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1270
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1271
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1272
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    .line 1277
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 1272
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1279
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1280
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1281
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1280
    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1286
    .end local v0    # "selectedIndex":I
    :cond_0
    iput-boolean v6, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1287
    const/4 v1, 0x1

    return v1

    .line 1289
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 368
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 369
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 360
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1103
    return-void

    .line 1106
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1108
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1109
    .local v4, "id":J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    .line 1101
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1035
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1039
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1040
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1046
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1054
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1056
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1057
    return v1

    .line 1050
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1115
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 985
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 988
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 991
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 992
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 993
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 992
    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 996
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 969
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 971
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 972
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 974
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 979
    :cond_0
    :goto_0
    return v1

    .line 975
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 976
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->-get0(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1090
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1084
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1426
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    const/4 v1, 0x1

    return v1

    .line 1429
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1443
    return v3

    .line 1431
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1432
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1433
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    .line 1435
    .end local v0    # "currentChildIndex":I
    :cond_1
    return v3

    .line 1437
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v1, :cond_2

    .line 1438
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1439
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    .line 1441
    .end local v0    # "currentChildIndex":I
    :cond_2
    return v3

    .line 1429
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 572
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 570
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 283
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 282
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 256
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1362
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1363
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1364
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 1360
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1318
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1321
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1317
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 294
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 293
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    .prologue
    .line 305
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 304
    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1187
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1192
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    return v2

    .line 1166
    :cond_0
    invoke-direct {p0, p1, v1, v1, v2}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1171
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 385
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .line 391
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 392
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    .line 394
    iget-object v7, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->-wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 395
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 398
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 400
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 402
    if-eqz v5, :cond_4

    .line 404
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 411
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 413
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 415
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 416
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 417
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 418
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 419
    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 420
    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 423
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 383
    return-void

    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    move v5, v6

    .line 389
    goto :goto_0

    .line 407
    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_1
.end method

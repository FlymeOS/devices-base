.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewAnimator;)I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 60
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 65
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 71
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 77
    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 92
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 97
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 103
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 123
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 128
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 134
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 140
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 141
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 152
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 182
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    .line 181
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 185
    .local v2, "resource":I
    if-lez v2, :cond_0

    .line 186
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 191
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 192
    if-lez v2, :cond_1

    .line 193
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 199
    :goto_1
    const/4 v3, 0x2

    .line 198
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 200
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 203
    const/4 v3, 0x3

    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 178
    return-void

    .line 188
    .end local v1    # "flag":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_1
.end method

.method private addChild(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 578
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 583
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v2, :cond_1

    .line 584
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 585
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 577
    .end local v0    # "measureSpec":I
    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 396
    .local v0, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 397
    return-object v0

    .line 400
    .end local v0    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method private measureChildren()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 682
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 683
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 685
    .local v1, "childHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 686
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 687
    .local v0, "child":Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 688
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 687
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 685
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 3
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_1

    .line 301
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 302
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 303
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_2

    :goto_0
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 308
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 310
    .local v0, "hasFocus":Z
    :goto_2
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 311
    if-eqz v0, :cond_1

    .line 313
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 299
    .end local v0    # "hasFocus":Z
    :cond_1
    return-void

    .line 303
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    :cond_3
    if-gez p1, :cond_0

    .line 305
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_1

    .line 308
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "hasFocus":Z
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 1072
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1071
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 325
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 604
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 599
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .prologue
    .line 737
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 738
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_0

    .line 739
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 756
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 736
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .prologue
    .line 245
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    .line 248
    :cond_0
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 249
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 250
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 244
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 405
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1027
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1086
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 278
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 279
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    return-object v0

    .line 278
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 284
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    return-object v0

    .line 284
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 377
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 4
    .param p1, "relativeIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 364
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 365
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 366
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    .line 370
    .end local v0    # "i":I
    :cond_0
    return-object v3
.end method

.method getWindowSize()I
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 384
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 385
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    .line 387
    :cond_0
    return v0

    .line 390
    .end local v0    # "adapterCount":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 595
    return-void
.end method

.method modulo(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 350
    if-lez p2, :cond_0

    .line 351
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    .line 353
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 763
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 764
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 765
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 768
    .local v3, "childRight":I
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 770
    .local v1, "childBottom":I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x1000000

    const/4 v8, -0x1

    const/high16 v9, -0x80000000

    .line 694
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 695
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 696
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 697
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 699
    .local v2, "heightSpecMode":I
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v7, v8, :cond_2

    const/4 v0, 0x1

    .line 704
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    .line 705
    if-eqz v0, :cond_3

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v8

    .line 706
    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    .line 705
    add-int v3, v7, v8

    .line 718
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    .line 719
    if-eqz v0, :cond_6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    .line 720
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    .line 719
    add-int v6, v7, v8

    .line 732
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 733
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 693
    return-void

    .line 699
    .end local v0    # "haveChildRefSize":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "haveChildRefSize":Z
    goto :goto_0

    .line 706
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 707
    :cond_4
    if-ne v2, v9, :cond_0

    .line 708
    if-eqz v0, :cond_0

    .line 709
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    add-int v1, v7, v8

    .line 710
    .local v1, "height":I
    if-le v1, v3, :cond_5

    .line 711
    or-int/2addr v3, v10

    goto :goto_1

    .line 713
    :cond_5
    move v3, v1

    goto :goto_1

    .line 720
    .end local v1    # "height":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 721
    :cond_7
    if-ne v2, v9, :cond_1

    .line 722
    if-eqz v0, :cond_1

    .line 723
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    add-int v4, v7, v8

    .line 724
    .local v4, "width":I
    if-le v4, v6, :cond_8

    .line 725
    or-int/2addr v6, v10

    goto :goto_2

    .line 727
    :cond_8
    move v6, v4

    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1035
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v0, v1, :cond_2

    .line 1036
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1038
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1040
    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1044
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    if-le v0, v3, :cond_1

    .line 1045
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1046
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1048
    :cond_1
    return v2

    .line 1049
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    .line 1050
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1051
    const/4 v0, 0x1

    return v0

    .line 1053
    :cond_3
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 827
    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 828
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 833
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 839
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 840
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 826
    :goto_0
    return-void

    .line 842
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 818
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 819
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 822
    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 619
    .local v0, "action":I
    const/4 v1, 0x0

    .line 620
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 677
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 622
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 623
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 626
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 628
    :cond_1
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 629
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 637
    .end local v3    # "v":Landroid/view/View;
    :pswitch_2
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v9, :cond_3

    .line 638
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 639
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 640
    .local v4, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 643
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 644
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 647
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    .line 661
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 647
    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    const/4 v1, 0x1

    .line 666
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    .line 670
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 671
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 672
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 674
    :cond_4
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 412
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_0

    return-void

    .line 413
    :cond_0
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v2, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_3

    .line 414
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 416
    .local v3, "index":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 418
    .local v0, "adapterCount":I
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v6

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 420
    .local v4, "updatedChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 421
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 424
    :cond_1
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 427
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_2

    .line 429
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 430
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 413
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "adapterCount":I
    .end local v3    # "index":I
    .end local v4    # "updatedChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 958
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 959
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 961
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 962
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 963
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 964
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 966
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 967
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 968
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 953
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 939
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 938
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 295
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 878
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 877
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 915
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 914
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 902
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 901
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 928
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 927
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 982
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 983
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 984
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 985
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 984
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 986
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 987
    return-void

    .line 990
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 992
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 993
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 979
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1005
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1014
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 338
    return-void
.end method

.method showOnly(IZ)V
    .locals 35
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    .line 460
    .local v4, "adapterCount":I
    if-nez v4, :cond_1

    return-void

    .line 462
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_3

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v31, v0

    .line 464
    .local v31, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    .line 466
    move-object/from16 v0, v31

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object/from16 v29, v31

    .line 467
    nop

    nop

    .line 468
    .local v29, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 472
    .end local v29    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 462
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 476
    .end local v31    # "viewToRemove":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 477
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v23, p1, v5

    .line 478
    .local v23, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v5

    add-int v5, v5, v23

    add-int/lit8 v21, v5, -0x1

    .line 479
    .local v21, "newWindowEndUnbounded":I
    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 480
    .local v22, "newWindowStart":I
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, v21

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 482
    .local v20, "newWindowEnd":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v5, :cond_4

    .line 483
    move/from16 v22, v23

    .line 484
    move/from16 v20, v21

    .line 486
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v27

    .line 487
    .local v27, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v26

    .line 489
    .local v26, "rangeEnd":I
    const/16 v32, 0x0

    .line 490
    .local v32, "wrap":Z
    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 491
    const/16 v32, 0x1

    .line 498
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "index$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 499
    .local v17, "index":Ljava/lang/Integer;
    const/16 v28, 0x0

    .line 500
    .local v28, "remove":Z
    if-nez v32, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-lt v5, v0, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_9

    .line 501
    :cond_7
    const/16 v28, 0x1

    .line 506
    :cond_8
    :goto_2
    if-eqz v28, :cond_6

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v25, v0

    .line 508
    .local v25, "previousView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    .line 510
    .local v24, "oldRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_1

    .line 502
    .end local v24    # "oldRelativeIndex":I
    .end local v25    # "previousView":Landroid/view/View;
    :cond_9
    if-eqz v32, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-ge v5, v0, :cond_8

    .line 503
    const/16 v28, 0x1

    goto :goto_2

    .line 516
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v28    # "remove":Z
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v20

    if-eq v0, v5, :cond_d

    .line 519
    :cond_b
    move/from16 v14, v22

    :goto_3
    move/from16 v0, v20

    if-gt v14, v0, :cond_13

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v16

    .line 523
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    .line 528
    .restart local v24    # "oldRelativeIndex":I
    :goto_4
    sub-int v8, v14, v23

    .line 533
    .local v8, "newRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_c
    const/4 v15, 0x0

    .line 535
    .local v15, "inOldRange":Z
    :goto_5
    if-eqz v15, :cond_11

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    .line 537
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v30

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 562
    .end local v30    # "view":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 519
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 517
    .end local v8    # "newRelativeIndex":I
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v24    # "oldRelativeIndex":I
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v23

    if-ne v0, v5, :cond_b

    .line 573
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 457
    return-void

    .line 526
    .restart local v16    # "index":I
    :cond_f
    const/16 v24, -0x1

    .restart local v24    # "oldRelativeIndex":I
    goto :goto_4

    .line 533
    .restart local v8    # "newRelativeIndex":I
    :cond_10
    const/4 v15, 0x1

    goto :goto_5

    .line 544
    .restart local v15    # "inOldRange":Z
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v9

    .line 545
    .local v9, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 546
    .local v19, "newView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    .line 550
    .local v10, "itemId":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v7

    .line 553
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v19, :cond_12

    .line 554
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 556
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 559
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 560
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v8, v7, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_6

    .line 564
    .end local v7    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "newRelativeIndex":I
    .end local v9    # "adapterPosition":I
    .end local v10    # "itemId":J
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v19    # "newView":Landroid/view/View;
    .end local v24    # "oldRelativeIndex":I
    :cond_13
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 565
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 566
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 567
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v5, :cond_e

    .line 568
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v13

    .line 569
    .local v13, "adapterStart":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v12

    .line 570
    .local v12, "adapterEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    goto/16 :goto_7
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 345
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 592
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 591
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 268
    if-ne p1, v0, :cond_1

    .line 269
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-ne p2, v0, :cond_0

    .line 272
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

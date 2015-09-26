.class public Lcom/android/internal/app/ActionBarImpl;
.super Landroid/app/ActionBar;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ActionBarImpl$TabImpl;,
        Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionModeHeaderHidden:Z

.field private mActionView:Lcom/android/internal/widget/MzActionBarView;

.field private mActivity:Landroid/app/Activity;

.field private mAnimationDuration:I

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/MzActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomTabsHeight:I

.field private mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDelayUpdateTabs:Ljava/lang/Runnable;

.field private mDialog:Landroid/app/Dialog;

.field private mDisableBackButton:Z

.field private mDisplayHomeAsUpSet:Z

.field private mEmbedTabsWhenNarrow:Z

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mLastOreientation:I

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

.field private mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowTabsAtBottom:Z

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/ActionBarImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    iput-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    iput-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    const/16 v3, 0x96

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    if-nez v1, :cond_0

    const v3, #android:id@content#t

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->disableBackButton(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    iput-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$4;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    sget-boolean v0, Lcom/android/internal/app/ActionBarImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzDecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ActionBarImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzSplitActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ActionBarImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private animateToHide(Z)V
    .locals 9
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v4, #android:interpolator@accelerate_decelerate#t

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v3

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateToShow(Z)V
    .locals 8
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v4, #android:interpolator@accelerate_decelerate#t

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v3

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeAllTabs()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .local v3, "tabi":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableBackButton(Z)V
    .locals 5
    .param p1, "init"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    .local v0, "disableBackButton":Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzActionBarView;->setEnableBackButton(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-nez v0, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-nez v0, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setEnableBackButton(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    if-nez v0, :cond_8

    :goto_4
    invoke-interface {v1, v2}, Landroid/app/ActionBar$OnBackButtonEnableChangeListener;->onBackButtonEnableChange(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .local v0, "tabScroller":Lcom/android/internal/widget/MzScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    :goto_1
    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setHeight(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMeasureWithLargestChildEnable(Z)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarView;->showTabsAtBottom(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_1
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v5, #android:id@decor_content_parent#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/MzActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    :cond_0
    const v5, #android:id@action_bar#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzDecorToolbar;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    const v5, #android:id@action_context_bar#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarContextView;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    const v5, #android:id@action_bar_container#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    const v5, #android:id@split_action_bar#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MzSplitActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v2

    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_8

    move v4, v6

    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_9

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/R$styleable;->ActionBar:[I

    const v10, #android:attr@actionBarStyle#t

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ActionBarImpl;->setHideOnContentScrollEnabled(Z)V

    :cond_5
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .local v3, "elevation":I
    if-eqz v3, :cond_6

    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setElevation(F)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->initExt(Landroid/view/View;)V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v5, v7

    goto :goto_0

    .restart local v2    # "current":I
    :cond_8
    move v4, v7

    goto :goto_1

    .restart local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_9
    move v5, v7

    goto :goto_2
.end method

.method private initExt(Landroid/view/View;)V
    .locals 2
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$integer;->config_statusbarAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mAnimationDuration:I

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    instance-of v0, v0, Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    check-cast v0, Lcom/android/internal/widget/MzActionBarView;

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    new-instance v1, Lcom/android/internal/app/ActionBarImpl$5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ActionBarImpl$5;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setActionBarSplitChangedListener(Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;)V

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateBackButtonDrawable()V

    :cond_0
    return-void
.end method

.method private onConfigurationChangedExt(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/MzActionBarView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/MzActionBarContextView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    :cond_1
    const/4 v0, 0x1

    .local v0, "oreientation":I
    if-eqz p1, :cond_2

    if-eqz p1, :cond_5

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "resConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_3

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mLastOreientation:I

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    return-void

    .end local v0    # "oreientation":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "oreientation":I
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 7
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    move v0, v2

    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_3

    if-eqz v0, :cond_a

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-nez v6, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    move v4, v2

    :goto_4
    invoke-interface {v5, v4}, Lcom/android/internal/widget/MzDecorToolbar;->setCollapsible(Z)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_c

    if-eqz v0, :cond_c

    :goto_5
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    .end local v0    # "isInTabMode":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTabContainer(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-boolean v6, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setShowAtBottom(ZZ)V

    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-interface {v5, v6}, Lcom/android/internal/widget/MzDecorToolbar;->mzSetEmbeddedTabView(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    .restart local v0    # "isInTabMode":Z
    :cond_9
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v4, v3

    goto :goto_4

    :cond_c
    move v2, v3

    goto :goto_5
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private updateBackButtonDrawable()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarContextView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private updateEmbededTabs()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "hasEmbeddedTabs":Z
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .end local v0    # "hasEmbeddedTabs":Z
    :cond_0
    return-void

    .restart local v0    # "hasEmbeddedTabs":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarView;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .local v0, "shown":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doShow(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->showForActionMode()V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/internal/widget/MzDecorToolbar;->animateToVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MzActionBarContextView;->animateToVisibility(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToVisibility(I)V

    :cond_0
    :goto_4
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->hideForActionMode()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToVisibility(I)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 2
    .param p1, "fromSystem"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->animateToHide(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v0

    goto :goto_1
.end method

.method public doShow(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->animateToShow(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarContainer;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarContainer;->setTranslationY(F)V

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarView;->isCompulsorySplit()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarView;->setShowing(Z)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->isSplitWhenNarrow()Z

    move-result v0

    goto :goto_1
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    return-void
.end method

.method public getActionModeHeaderHidden()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, #android:attr@actionBarWidgetTheme#t

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public isBackButtonEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisableBackButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getHeight()I

    move-result v0

    .local v0, "height":I
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->onConfigurationChangedExt(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->removeTabAt(I)V

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .local v2, "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/MzDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .local v0, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->animateToTab(I)V

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .end local v0    # "trans":Landroid/app/FragmentTransaction;
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setTabSelected(I)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7
    check-cast p1, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_2
.end method

.method public setActionBarViewCollapsable(Z)V
    .locals 1
    .param p1, "collapsable"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setCollapsableByUser(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionModeHeaderHidden:Z

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setActionModeHeaderHidden(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setActionModeHeaderHidden(Z)V

    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateBackButtonDrawable()V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getDisplayOptions()I

    move-result v0

    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/MzDecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setElevation(F)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setEmbeddedTabsWhenNarrow(Z)V
    .locals 1
    .param p1, "embedTabsWhenNarrow"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mEmbedTabsWhenNarrow:Z

    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    :cond_0
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "disableBackButton":Z
    if-eqz v0, :cond_1

    .end local v0    # "disableBackButton":Z
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "disableBackButton":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzActionBarView;->setEnableBackButton(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setEnableBackButton(Z)V

    goto :goto_0
.end method

.method public setEnabledBackWhenOverlay(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setEnabledBackWhenOverlay(Z)V

    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHideOnContentScroll:Z

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/MzDecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setMeasureWithLargestChildEnable(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setMeasureWithLargestChildEnable(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setNavigationMode(I)V

    packed-switch p1, :pswitch_data_1

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/android/internal/widget/MzDecorToolbar;->setCollapsible(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setVisibility(I)V

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iput v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnBackButtonEnableChangeListener(Landroid/app/ActionBar$OnBackButtonEnableChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mOnBackButtonEnableChangeListener:Landroid/app/ActionBar$OnBackButtonEnableChangeListener;

    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setProgressBarShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setProgressBarShowAtBottom(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTabsHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setTabsHeight(I)V

    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCustomTabsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setTabsShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowTabsAtBottom:Z

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/MzScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->showTabsAtBottom(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopBarHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setTopBarHeight(I)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarView;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$VisibilityAnimationListener;

    .prologue
    invoke-super {p0, p1}, Landroid/app/ActionBar;->setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V

    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/MzDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarContextView;->killMode()V

    new-instance v0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .local v0, "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MzActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/MzSplitActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->requestApplyInsets()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MzActionBarContextView;->sendAccessibilityEvent(I)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarView;->setInActionMode(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MzActionBarContextView;->setInActionMode(Z)V

    .end local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

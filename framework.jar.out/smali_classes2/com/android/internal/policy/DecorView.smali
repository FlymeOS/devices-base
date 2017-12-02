.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field private static final DEBUG_MEASURE:Z = false

.field private static final DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field private static final DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private mAllowUpdateElevation:Z

.field private mApplyFloatingHorizontalInsets:Z

.field private mApplyFloatingVerticalInsets:Z

.field private mAvailableWidth:F

.field private mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanging:Z

.field mContentRoot:Landroid/view/ViewGroup;

.field mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mElevationAdjustedForStack:Z

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final mFloatingInsets:Landroid/graphics/Rect;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mForceWindowDrawsStatusBarBackground:Z

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mHasCaption:Z

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasLeftStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastLeftInset:I

.field private mLastRightInset:I

.field private mLastShouldAlwaysConsumeNavBar:Z

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field mLogTag:Ljava/lang/String;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mOutsets:Landroid/graphics/Rect;

.field mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mResizeMode:I

.field private final mResizeShadowSize:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootScrollY:I

.field private final mSemiTransparentStatusBarColor:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field mStackId:I

.field private final mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private mWatchingForMenu:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowResizeCallbacksAdded:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 164
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 167
    const-string/jumbo v6, "android:status:background"

    .line 165
    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    .line 166
    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x5

    .line 168
    const v7, 0x102002f

    .line 169
    const/16 v8, 0x400

    .line 164
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 170
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 173
    const-string/jumbo v6, "android:navigation:background"

    .line 171
    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    .line 172
    const/16 v3, 0x50

    const/4 v4, 0x5

    const/4 v5, 0x3

    .line 174
    const v7, 0x1020030

    .line 175
    const/4 v8, 0x0

    .line 170
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 183
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 223
    const-string/jumbo v0, "DecorView"

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 236
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 239
    const v0, 0x10c000e

    .line 238
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 241
    const v0, 0x10c000f

    .line 240
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    const v1, 0x10e00ce

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 246
    const v1, 0x11200b0

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 245
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    const v1, 0x1060074

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    .line 251
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 253
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 255
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 258
    const v1, 0x10500c2

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 234
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateStatusBarColor()I
    .locals 2

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1134
    .local v0, "flags":I
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    :goto_0
    return v1

    .line 1135
    :cond_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    goto :goto_0

    .line 1136
    :cond_1
    const/high16 v1, -0x1000000

    goto :goto_0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 890
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 894
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 896
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 898
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 887
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 880
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 877
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    .line 1576
    packed-switch p1, :pswitch_data_0

    .line 1579
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1581
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1859
    const/4 v1, 0x0

    .line 1860
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    if-nez v1, :cond_1

    .line 1861
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1862
    .local v4, "view":Landroid/view/View;
    instance-of v7, v4, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v7, :cond_0

    move-object v1, v4

    .line 1864
    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    .line 1865
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 1860
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1868
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1869
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v5, :cond_2

    .line 1870
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1869
    :cond_2
    const/4 v3, 0x1

    .line 1872
    .local v3, "isApplication":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v3, :cond_6

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1875
    if-nez v1, :cond_3

    .line 1876
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v1

    .line 1878
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v7, v5}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 1884
    :goto_2
    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 1885
    return-object v1

    .line 1870
    .end local v3    # "isApplication":Z
    :cond_4
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    const/4 v3, 0x1

    .restart local v3    # "isApplication":Z
    goto :goto_1

    .end local v3    # "isApplication":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isApplication":Z
    goto :goto_1

    .line 1880
    :cond_6
    const/4 v1, 0x0

    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    goto :goto_2

    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_7
    move v5, v6

    .line 1884
    goto :goto_3
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1729
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 1731
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 1733
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    .line 1734
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 1736
    new-instance v1, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    .line 1735
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1743
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 1594
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 1595
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1602
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1672
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_5

    .line 1673
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1674
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    .line 1675
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1676
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_4

    move v7, v8

    .line 1674
    :goto_1
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 1677
    .local v4, "mode":Landroid/view/ActionMode;
    return-object v4

    .line 1603
    .end local v4    # "mode":Landroid/view/ActionMode;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1605
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1606
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1607
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1610
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 1611
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1612
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1613
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1615
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1616
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1621
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1622
    new-instance v7, Landroid/widget/PopupWindow;

    .line 1623
    const v10, 0x116001e

    .line 1622
    invoke-direct {v7, v0, v11, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1624
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1625
    const/4 v10, 0x2

    .line 1624
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1626
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1627
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1629
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 1630
    const v10, 0x10102eb

    .line 1629
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1631
    iget v7, v5, Landroid/util/TypedValue;->data:I

    .line 1632
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 1631
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 1633
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1634
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1635
    new-instance v7, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 1618
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v3    # "height":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_2

    .line 1665
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const v7, 0x10203ef

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 1666
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 1667
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1668
    iput-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    goto/16 :goto_0

    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_4
    move v7, v9

    .line 1676
    goto/16 :goto_1

    .line 1679
    :cond_5
    return-object v11
.end method

.method private dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    .prologue
    .line 2199
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2198
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    const/4 v1, 0x0

    .line 2110
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    .line 2110
    if-nez v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    .line 2110
    if-eqz v0, :cond_1

    .line 2113
    :cond_0
    return-void

    .line 2115
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    .line 2116
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2118
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    .line 2119
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    .line 2120
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2121
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2122
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    .line 2109
    return-void
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 1379
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v5, :cond_0

    .line 1380
    return-void

    .line 1383
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 1384
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    .line 1385
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 1386
    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 1383
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 1388
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 1390
    const/4 v4, -0x1

    .line 1391
    .local v4, "opacity":I
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1393
    const/4 v4, -0x3

    .line 1438
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 1439
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_2

    .line 1440
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 1378
    :cond_2
    return-void

    .line 1400
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1401
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1402
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1403
    if-nez v2, :cond_4

    .line 1404
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    goto :goto_0

    .line 1405
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_9

    .line 1406
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_9

    .line 1409
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 1410
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 1413
    .local v1, "bop":I
    if-eq v3, v10, :cond_5

    if-ne v1, v10, :cond_6

    .line 1414
    :cond_5
    const/4 v4, -0x1

    .line 1413
    goto :goto_0

    .line 1415
    :cond_6
    if-nez v3, :cond_7

    .line 1416
    move v4, v1

    goto :goto_0

    .line 1417
    :cond_7
    if-nez v1, :cond_8

    .line 1418
    move v4, v3

    goto :goto_0

    .line 1420
    :cond_8
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_0

    .line 1428
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_9
    const/4 v4, -0x3

    goto :goto_0
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1682
    :cond_0
    return-void
.end method

.method private static enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    .prologue
    const/16 v6, 0xff

    .line 1971
    if-nez p1, :cond_0

    instance-of v3, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 1972
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1973
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 1974
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1975
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 1978
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1977
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1979
    return-object v2

    .line 1982
    .end local v0    # "color":I
    .end local v1    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object p0
.end method

.method static getColorViewBottomInset(II)I
    .locals 1
    .param p0, "stableBottom"    # I
    .param p1, "systemBottom"    # I

    .prologue
    .line 990
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static getColorViewLeftInset(II)I
    .locals 1
    .param p0, "stableLeft"    # I
    .param p1, "systemLeft"    # I

    .prologue
    .line 998
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static getColorViewRightInset(II)I
    .locals 1
    .param p0, "stableRight"    # I
    .param p1, "systemRight"    # I

    .prologue
    .line 994
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static getColorViewTopInset(II)I
    .locals 1
    .param p0, "stableTop"    # I
    .param p1, "systemTop"    # I

    .prologue
    .line 986
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .prologue
    .line 1140
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    .line 1141
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 1143
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static getNavBarSize(III)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .prologue
    .line 1010
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "rightInset":I
    :goto_0
    return p1

    .line 1011
    .restart local p1    # "rightInset":I
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundRes"    # I
    .param p2, "backgroundFallbackRes"    # I
    .param p3, "windowTranslucent"    # Z

    .prologue
    .line 1949
    if-eqz p1, :cond_0

    .line 1950
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1951
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1952
    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 1956
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    .line 1957
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1958
    .local v1, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1959
    invoke-static {v1, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 1962
    .end local v1    # "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v2
.end method

.method private getStackId()I
    .locals 5

    .prologue
    .line 1992
    const/4 v2, -0x1

    .line 1993
    .local v2, "workspaceId":I
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 1994
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    .line 1996
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2001
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2002
    const/4 v3, 0x1

    return v3

    .line 1997
    :catch_0
    move-exception v1

    .line 1998
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string/jumbo v4, "Failed to get the workspace ID of a PhoneWindow."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2004
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2213
    if-nez p0, :cond_0

    .line 2214
    const-string/jumbo v1, ""

    return-object v1

    .line 2216
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2217
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 2218
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 2220
    :cond_1
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1891
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1892
    const v2, 0x109004e

    .line 1893
    const/4 v3, 0x0

    .line 1892
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    .line 1894
    .local v1, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 1895
    return-object v1
.end method

.method private initResizingPaints()V
    .locals 12

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2097
    const v1, 0x1060075

    const/4 v2, 0x0

    .line 2096
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    .line 2098
    .local v10, "startColor":I
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2099
    const v1, 0x1060076

    const/4 v2, 0x0

    .line 2098
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 2100
    .local v8, "endColor":I
    add-int v0, v10, v8

    div-int/lit8 v9, v0, 0x2

    .line 2101
    .local v9, "middleColor":I
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    .line 2102
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v10, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 2103
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 2101
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2104
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    .line 2105
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v10, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 2106
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 2104
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2095
    return-void

    .line 2103
    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 2106
    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeElevation()V
    .locals 1

    .prologue
    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 2151
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2148
    return-void
.end method

.method static isNavBarToLeftEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .prologue
    const/4 v0, 0x0

    .line 1006
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .prologue
    const/4 v0, 0x0

    .line 1002
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOutOfBounds(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x5

    .line 435
    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutOfInnerBounds(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 431
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    if-gt p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isResizing()Z
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBackgroundDrawablesIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1837
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1838
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1839
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 1840
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    .line 1838
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1841
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1849
    const v1, 0x1080255

    .line 1848
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1836
    :cond_2
    return-void

    .line 1840
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseThreadedRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2127
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2129
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 2134
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2136
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2126
    :cond_1
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .prologue
    .line 1937
    const v0, 0x1020364

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1938
    const v1, 0x1080259

    .line 1937
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1939
    const v0, 0x1020365

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1940
    const v1, 0x1080257

    .line 1939
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1936
    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .prologue
    .line 1899
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getDecorCaptionShade()I

    move-result v0

    .line 1900
    .local v0, "shade":I
    packed-switch v0, :pswitch_data_0

    .line 1908
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1909
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010433

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1913
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/graphics/Color;->luminance(I)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 1914
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 1898
    .end local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    return-void

    .line 1902
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_0

    .line 1905
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_0

    .line 1916
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_0

    .line 1900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1586
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1587
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1589
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 1748
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1752
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1751
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1746
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 1690
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 1691
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    .line 1716
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1717
    const/16 v1, 0x20

    .line 1716
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1688
    return-void

    .line 1696
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 1698
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1710
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 1713
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0

    .line 1697
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .prologue
    .line 1930
    const v0, 0x1020364

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1931
    const v1, 0x108025a

    .line 1930
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1932
    const v0, 0x1020365

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1933
    const v1, 0x1080258

    .line 1932
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1929
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 774
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 776
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v6, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 781
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v3, :cond_3

    .line 782
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v6, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v6, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 783
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 789
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v2, v4

    .line 790
    .local v2, "isPopup":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 791
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v1

    .line 796
    .local v1, "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v1, :cond_2

    .line 800
    if-eqz v2, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 801
    invoke-interface {v1, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 804
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v1, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 805
    if-eqz v1, :cond_7

    :goto_4
    return v5

    .line 785
    .end local v1    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    .end local v2    # "isPopup":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    :cond_4
    move v2, v5

    .line 789
    goto :goto_1

    .line 793
    .restart local v2    # "isPopup":Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    .restart local v1    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_2

    :cond_6
    move v3, v5

    .line 800
    goto :goto_3

    :cond_7
    move v5, v4

    .line 805
    goto :goto_4
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 832
    new-instance v3, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 833
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v2, 0x0

    .line 834
    .local v2, "mode":Landroid/view/ActionMode;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 849
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 850
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_4

    .line 851
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 852
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 867
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 874
    :cond_2
    :goto_2
    return-object v2

    .line 836
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v3, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    .line 837
    .local v2, "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v0

    .line 839
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 841
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    .line 853
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_4
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 854
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5

    .line 855
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 857
    :cond_5
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 860
    :cond_6
    invoke-direct {p0, p3, v3, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v2

    .line 861
    .restart local v2    # "mode":Landroid/view/ActionMode;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 862
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 864
    :cond_7
    const/4 v2, 0x0

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_1

    .line 869
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 870
    :catch_1
    move-exception v0

    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    .line 843
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :catch_2
    move-exception v1

    .local v1, "ame2":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method private updateAvailableWidth()V
    .locals 4

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2231
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2230
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    .line 2228
    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V
    .locals 16
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z

    .prologue
    .line 1162
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    and-int v13, v13, p2

    if-nez v13, :cond_5

    .line 1163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    and-int/2addr v13, v14

    if-nez v13, :cond_5

    .line 1164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v14, -0x80000000

    and-int/2addr v13, v14

    if-nez v13, :cond_4

    move/from16 v13, p9

    .line 1162
    :goto_0
    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1166
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v13, :cond_7

    .line 1167
    const/high16 v13, -0x1000000

    and-int v13, v13, p3

    if-eqz v13, :cond_7

    .line 1168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_6

    .end local p9    # "force":Z
    :goto_1
    move/from16 v8, p9

    .line 1169
    .local v8, "show":Z
    :goto_2
    if-eqz v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_0
    const/4 v9, 0x0

    .line 1171
    .local v9, "showView":Z
    :goto_3
    const/4 v12, 0x0

    .line 1172
    .local v12, "visibilityChanged":Z
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1174
    .local v10, "view":Landroid/view/View;
    if-eqz p5, :cond_9

    const/4 v5, -0x1

    .line 1175
    .local v5, "resolvedHeight":I
    :goto_4
    if-eqz p5, :cond_a

    move/from16 v6, p4

    .line 1176
    .local v6, "resolvedWidth":I
    :goto_5
    if-eqz p5, :cond_c

    .line 1177
    if-eqz p6, :cond_b

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->seascapeGravity:I

    .line 1180
    .local v4, "resolvedGravity":I
    :goto_6
    if-nez v10, :cond_e

    .line 1181
    if-eqz v9, :cond_1

    .line 1182
    new-instance v10, Landroid/view/View;

    .end local v10    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v10, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v10    # "view":Landroid/view/View;
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1183
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1184
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    invoke-virtual {v10, v13}, Landroid/view/View;->setId(I)V

    .line 1186
    const/4 v12, 0x1

    .line 1187
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1190
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1192
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p6, :cond_d

    .line 1193
    move/from16 v0, p7

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1197
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1221
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_8
    if-eqz v12, :cond_3

    .line 1222
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1223
    if-eqz p8, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1243
    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1244
    if-eqz v9, :cond_19

    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    :cond_3
    :goto_a
    move-object/from16 v0, p1

    iput-boolean v8, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 1248
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 1161
    return-void

    .line 1164
    .end local v4    # "resolvedGravity":I
    .end local v5    # "resolvedHeight":I
    .end local v6    # "resolvedWidth":I
    .end local v8    # "show":Z
    .end local v9    # "showView":Z
    .end local v10    # "view":Landroid/view/View;
    .end local v12    # "visibilityChanged":Z
    .restart local p9    # "force":Z
    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1162
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1168
    :cond_6
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 1166
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1169
    .end local p9    # "force":Z
    .restart local v8    # "show":Z
    :cond_8
    if-lez p4, :cond_0

    const/4 v9, 0x1

    .restart local v9    # "showView":Z
    goto/16 :goto_3

    .line 1174
    .restart local v10    # "view":Landroid/view/View;
    .restart local v12    # "visibilityChanged":Z
    :cond_9
    move/from16 v5, p4

    .restart local v5    # "resolvedHeight":I
    goto/16 :goto_4

    .line 1175
    :cond_a
    const/4 v6, -0x1

    .restart local v6    # "resolvedWidth":I
    goto/16 :goto_5

    .line 1177
    :cond_b
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    .restart local v4    # "resolvedGravity":I
    goto/16 :goto_6

    .line 1178
    .end local v4    # "resolvedGravity":I
    :cond_c
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    .restart local v4    # "resolvedGravity":I
    goto/16 :goto_6

    .line 1195
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    move/from16 v0, p7

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_7

    .line 1201
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    if-eqz v9, :cond_11

    const/4 v11, 0x0

    .line 1202
    .local v11, "vis":I
    :goto_b
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v13, v11, :cond_12

    const/4 v12, 0x1

    .line 1203
    :goto_c
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1204
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1205
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p6, :cond_13

    const/4 v7, 0x0

    .line 1206
    .local v7, "rightMargin":I
    :goto_d
    if-eqz p6, :cond_14

    move/from16 v2, p7

    .line 1207
    .local v2, "leftMargin":I
    :goto_e
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v13, v5, :cond_f

    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v13, v6, :cond_15

    .line 1210
    :cond_f
    :goto_f
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1211
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1212
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1213
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1214
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1215
    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    :cond_10
    if-eqz v9, :cond_1

    .line 1218
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 1201
    .end local v2    # "leftMargin":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "rightMargin":I
    .end local v11    # "vis":I
    :cond_11
    const/4 v11, 0x4

    .restart local v11    # "vis":I
    goto :goto_b

    .line 1202
    :cond_12
    const/4 v12, 0x0

    goto :goto_c

    .line 1205
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_13
    move/from16 v7, p7

    .restart local v7    # "rightMargin":I
    goto :goto_d

    .line 1206
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "leftMargin":I
    goto :goto_e

    .line 1208
    :cond_15
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v13, v4, :cond_f

    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-ne v13, v7, :cond_f

    .line 1209
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v13, v2, :cond_10

    goto :goto_f

    .line 1224
    .end local v2    # "leftMargin":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "rightMargin":I
    .end local v11    # "vis":I
    :cond_16
    if-eqz v9, :cond_18

    .line 1225
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_17

    .line 1226
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1229
    :cond_17
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 1230
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v14, v14

    .line 1229
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_a

    .line 1232
    :cond_18
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 1233
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v14, v14

    .line 1232
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 1234
    new-instance v14, Lcom/android/internal/policy/DecorView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/internal/policy/DecorView$1;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 1232
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_a

    .line 1244
    :cond_19
    const/4 v13, 0x4

    goto/16 :goto_9
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1254
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1255
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_2

    move v1, v0

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_3

    .end local v0    # "rootScrollY":I
    :goto_1
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1251
    :cond_1
    return-void

    .restart local v0    # "rootScrollY":I
    :cond_2
    move v1, v2

    .line 1256
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1259
    goto :goto_1
.end method

.method private updateElevation()V
    .locals 4

    .prologue
    .line 2155
    const/4 v0, 0x0

    .line 2156
    .local v0, "elevation":F
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2159
    .local v1, "wasAdjustedForStack":Z
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2173
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2178
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v2, :cond_2

    .line 2179
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 2180
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 2154
    :cond_2
    return-void

    .line 2160
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2161
    const/16 v2, 0x14

    .line 2160
    :goto_1
    int-to-float v0, v2

    .line 2166
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 2167
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2170
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    .line 2171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_0

    .line 2161
    :cond_5
    const/4 v2, 0x5

    goto :goto_1
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v8, 0x0

    .line 1336
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 1337
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 1339
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1340
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 1342
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1343
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1344
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1348
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1349
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 1350
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 1351
    const v4, 0x1060032

    .line 1350
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1352
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1353
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1354
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    .line 1353
    const/4 v6, -0x1

    .line 1355
    const v7, 0x800053

    .line 1353
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1352
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    .line 1363
    const/4 v2, 0x1

    .line 1362
    invoke-virtual {p1, v8, v8, v8, v2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1365
    :cond_1
    return-object p1

    .line 1357
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1358
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1359
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v8, 0x0

    .line 1264
    const/4 v6, 0x0

    .line 1266
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 1267
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 1270
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1269
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1271
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 1272
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1273
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 1274
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1276
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1280
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 1281
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 1282
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    .line 1283
    const/4 v2, 0x1

    .line 1284
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1286
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    .line 1287
    new-instance v7, Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1288
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 1289
    const v10, 0x1060032

    .line 1288
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1290
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v9, v9, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1291
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1292
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1291
    const/4 v12, -0x1

    .line 1292
    const v13, 0x800033

    .line 1291
    invoke-direct {v10, v12, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1290
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 1311
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .line 1314
    .local v4, "nonOverlay":Z
    :goto_3
    if-eqz v4, :cond_9

    move v7, v6

    .line 1313
    :goto_4
    invoke-virtual {p1, v8, v7, v8, v8}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1322
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 1323
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1328
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    :cond_4
    return-object p1

    .line 1281
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "newMargin":I
    goto :goto_0

    .line 1295
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1294
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1296
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v9, :cond_1

    .line 1297
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1298
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1305
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    move v4, v8

    .line 1311
    goto :goto_3

    .restart local v4    # "nonOverlay":Z
    :cond_9
    move v7, v8

    .line 1314
    goto :goto_4

    .line 1317
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 1318
    const/4 v2, 0x1

    .line 1319
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 1328
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v8, 0x8

    goto :goto_6
.end method


# virtual methods
.method clearContentView()V
    .locals 3

    .prologue
    .line 2008
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_1

    .line 2009
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    .line 2007
    :cond_0
    return-void

    .line 2013
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2014
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2015
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_2

    .line 2016
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-eq v1, v2, :cond_2

    .line 2017
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2013
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 389
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 389
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 390
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 296
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 297
    .local v0, "action":I
    if-nez v0, :cond_0

    move v3, v5

    .line 299
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 302
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v7, v4, :cond_1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 304
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    .line 305
    return v5

    .end local v2    # "handled":Z
    .end local v3    # "isDown":Z
    :cond_0
    move v3, v6

    .line 297
    goto :goto_0

    .line 311
    .restart local v3    # "isDown":Z
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_2

    .line 312
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    return v5

    .line 318
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 319
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 320
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_3

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v6, :cond_3

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 322
    .restart local v2    # "handled":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 323
    return v5

    .line 321
    .end local v2    # "handled":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 327
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_4
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_2
    return v5

    .line 328
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 338
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 339
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 342
    :cond_0
    return v6

    .line 347
    .end local v1    # "handled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 348
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 349
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 350
    .restart local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 351
    return v6

    .line 348
    .end local v1    # "handled":Z
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v3, :cond_2

    .line 349
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 359
    .restart local v1    # "handled":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v7, v7}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 360
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 362
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v2, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 364
    iput-boolean v7, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 365
    if-eqz v1, :cond_5

    .line 366
    return v6

    .line 369
    :cond_5
    return v7
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 557
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 558
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, 0x1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 375
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 375
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 376
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 382
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 382
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 383
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 754
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    :cond_0
    return-void
.end method

.method enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    .prologue
    .line 1761
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_0

    .line 1762
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 1763
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1760
    :cond_0
    return-void
.end method

.method finishChanging()V
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 908
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 906
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v2

    .line 270
    .local v2, "statusOpaque":Z
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 271
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 274
    .local v0, "decorOpaque":Z
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .end local v0    # "decorOpaque":Z
    :goto_0
    return v0

    .restart local v0    # "decorOpaque":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 278
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getCaptionHeight()I
    .locals 1

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowingCaption()Z
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitionGroup()Z
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 950
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 951
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 952
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    .line 957
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v4, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 959
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 960
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 961
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 960
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v4, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 965
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 966
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 967
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 966
    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 971
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 972
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 973
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 975
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 977
    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1472
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1474
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1475
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1479
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 1490
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_4

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1471
    :cond_2
    :goto_1
    return-void

    .line 1475
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1476
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    goto :goto_0

    .line 1495
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    goto :goto_1
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1542
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 1541
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, -0x1

    .line 1780
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1781
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    move-result v1

    .line 1782
    .local v1, "workspaceId":I
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    if-eq v2, v1, :cond_1

    .line 1783
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 1784
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1786
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1787
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 1788
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_1

    .line 1789
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 1791
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1790
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 1794
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 1795
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1794
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1803
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 1804
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 1779
    return-void

    .line 1797
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_1

    .line 1799
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 1800
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    goto :goto_0
.end method

.method public onContentDrawn(IIII)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_0

    .line 2073
    const/4 v0, 0x0

    return v0

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1504
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1506
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1507
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 1508
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 1511
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_1

    .line 1512
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1515
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 1516
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1517
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1520
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1522
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v2, :cond_4

    .line 1523
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 1524
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 1527
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1528
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    .line 1529
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1532
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 1534
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v2, :cond_6

    .line 1535
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1536
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1503
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 288
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 442
    .local v0, "action":I
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 453
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 454
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    return v5

    .line 460
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v3, :cond_1

    .line 461
    if-nez v0, :cond_1

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 463
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 464
    .restart local v2    # "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 466
    return v5

    .line 472
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 727
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 735
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 738
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 744
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 745
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 747
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-ne v0, v1, :cond_4

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 726
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 613
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v7, 0x1

    .line 615
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 616
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 618
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 619
    .local v2, "fixedWidth":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 620
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 621
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 622
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 624
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 625
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 632
    .local v15, "w":I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 633
    .local v18, "widthSize":I
    if-lez v15, :cond_c

    .line 635
    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    .line 634
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 636
    const/4 v2, 0x1

    .line 646
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 647
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    .line 648
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 650
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_4
    if-eqz v13, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 652
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 653
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .line 660
    .local v3, "h":I
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 661
    .local v6, "heightSize":I
    if-lez v3, :cond_10

    .line 663
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    .line 662
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 672
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 674
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 675
    .local v11, "mode":I
    if-eqz v11, :cond_3

    .line 676
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 678
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 677
    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 681
    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gtz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 682
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 683
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    .line 684
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 686
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 685
    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 690
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v16

    .line 693
    .restart local v16    # "width":I
    const/4 v8, 0x0

    .line 695
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 697
    if-nez v2, :cond_6

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 698
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 699
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_7
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 701
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 702
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 711
    .local v10, "min":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    .line 712
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 713
    const/4 v8, 0x1

    .line 720
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    .line 721
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 610
    :cond_7
    return-void

    .line 613
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "isPortrait":Z
    goto/16 :goto_0

    .line 621
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v17    # "widthMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 626
    .restart local v14    # "tvw":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 627
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .line 629
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .line 639
    .restart local v18    # "widthSize":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    .line 640
    const/high16 v20, -0x80000000

    .line 638
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 641
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto/16 :goto_3

    .line 649
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_4

    .line 654
    .restart local v13    # "tvh":Landroid/util/TypedValue;
    :cond_e
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 655
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_5

    .line 657
    .end local v3    # "h":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_5

    .line 664
    .restart local v6    # "heightSize":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, -0x80000000

    .line 665
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 667
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto/16 :goto_6

    .line 698
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_7

    .line 703
    .restart local v12    # "tv":Landroid/util/TypedValue;
    :cond_12
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_8

    .line 706
    .end local v10    # "min":I
    :cond_13
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_8
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2092
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    .line 2091
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2082
    :cond_1
    if-eqz p1, :cond_0

    .line 2084
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    goto :goto_0
.end method

.method onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1808
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 1810
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 1811
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 1812
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 1813
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1814
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v5

    .line 1815
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v6

    move-object v1, p0

    .line 1812
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1818
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 1819
    invoke-virtual {p1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1820
    .local v7, "root":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_2

    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 1823
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1822
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 1826
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1825
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    :goto_0
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "root":Landroid/view/View;
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 1833
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 1807
    return-void

    .line 1830
    .restart local v7    # "root":Landroid/view/View;
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1, v0}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .prologue
    .line 1570
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1571
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1569
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowDragResizeEnd()V
    .locals 2

    .prologue
    .line 2064
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2065
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2066
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2067
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2063
    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 14
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .prologue
    .line 2034
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2037
    return-void

    .line 2039
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_1

    .line 2040
    return-void

    .line 2042
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHardwareRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v3

    .line 2043
    .local v3, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v3, :cond_2

    .line 2044
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 2045
    new-instance v1, Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2046
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2047
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 2048
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v9

    move-object v2, p0

    move-object v4, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 2045
    invoke-direct/range {v1 .. v13}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2054
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2056
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2058
    :cond_2
    move/from16 v0, p5

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2059
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2033
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1446
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1450
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_4

    .line 1455
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1456
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1460
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1461
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1463
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 1464
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1467
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1445
    return-void

    .line 1451
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    goto :goto_0

    .line 1456
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 1457
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    goto :goto_1
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2025
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 945
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 944
    return-void
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    const/4 v2, 0x0

    .line 2239
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 2240
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, p1, v2, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2238
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 543
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    .line 544
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 548
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 535
    :goto_0
    return-void

    .line 545
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 546
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 550
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method setBackgroundFallback(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 262
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 568
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 570
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 573
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 574
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 575
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 576
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 577
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 578
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 579
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 580
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 581
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 582
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 583
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 584
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 587
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 588
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 606
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 1559
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 1564
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    .line 1563
    :goto_0
    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 1555
    return-void
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2207
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2205
    :cond_0
    return-void
.end method

.method setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1771
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1772
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1773
    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 1774
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1769
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    if-eqz p1, :cond_2

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    .line 915
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 927
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 911
    :cond_1
    return-void

    .line 919
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 920
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    .line 919
    :cond_3
    const/4 v3, 0x0

    .line 918
    invoke-static {v1, v3, v2, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 925
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 934
    if-eqz p1, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 939
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 931
    :cond_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method shouldAnimatePrimaryActionModeView()Z
    .locals 1

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    .line 763
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 768
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 827
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method startChanging()V
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 902
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 395
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 396
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 398
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 399
    if-ne v0, v3, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 402
    :cond_0
    return v3

    .line 406
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2248
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    .line 2247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2248
    const-string/jumbo v1, "]"

    .line 2247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 34
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 1016
    .local v19, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int v4, v2, v3

    .line 1018
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v26, 0x0

    .line 1020
    .local v26, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v2, v3

    .line 1021
    const/high16 v3, -0x80000000

    .line 1020
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    or-int v26, v26, v2

    .line 1022
    .local v26, "disallowAnimate":Z
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 1026
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 1025
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    .line 1028
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1027
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 1029
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v2

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 1031
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v30, 0x1

    .line 1038
    .local v30, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    move/from16 v0, v30

    if-eq v0, v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    or-int v26, v26, v2

    .line 1039
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1041
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_c

    const/16 v27, 0x1

    .line 1042
    .local v27, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    move/from16 v0, v27

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    :goto_5
    or-int v26, v26, v2

    .line 1043
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1045
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v29, 0x1

    .line 1046
    .local v29, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    move/from16 v0, v29

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    :goto_7
    or-int v26, v26, v2

    .line 1047
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1049
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v2

    if-eqz v2, :cond_10

    const/16 v28, 0x1

    .line 1050
    .local v28, "hasLeftStableInset":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    move/from16 v0, v28

    if-eq v0, v2, :cond_11

    const/4 v2, 0x1

    :goto_9
    or-int v26, v26, v2

    .line 1051
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 1056
    .end local v27    # "hasBottomStableInset":Z
    .end local v28    # "hasLeftStableInset":Z
    .end local v29    # "hasRightStableInset":Z
    .end local v30    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v32

    .line 1057
    .local v32, "navBarToRightEdge":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v8

    .line 1058
    .local v8, "navBarToLeftEdge":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v2, v3, v5}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v6

    .line 1059
    .local v6, "navBarSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v2, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-nez v32, :cond_12

    move v7, v8

    .line 1062
    :goto_a
    if-eqz p2, :cond_1

    if-eqz v26, :cond_13

    :cond_1
    const/4 v10, 0x0

    :goto_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    .line 1059
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V

    .line 1064
    if-eqz v32, :cond_14

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    move/from16 v33, v0

    .line 1066
    :goto_c
    if-eqz v8, :cond_15

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1068
    :goto_d
    if-eqz v33, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move/from16 v16, v0

    .line 1070
    .local v16, "statusBarSideInset":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1073
    if-eqz p2, :cond_2

    if-eqz v26, :cond_18

    :cond_2
    const/16 v17, 0x0

    .line 1074
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    move/from16 v18, v0

    .line 1072
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move v11, v4

    .line 1070
    invoke-direct/range {v9 .. v18}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V

    .line 1081
    .end local v6    # "navBarSize":I
    .end local v8    # "navBarToLeftEdge":Z
    .end local v16    # "statusBarSideInset":I
    .end local v26    # "disallowAnimate":Z
    .end local v32    # "navBarToRightEdge":Z
    :cond_3
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1082
    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_19

    .line 1083
    and-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_19

    .line 1081
    const/16 v24, 0x1

    .line 1088
    :goto_10
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_1b

    .line 1089
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_1b

    .line 1090
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_1b

    .line 1091
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_1b

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 1088
    if-eqz v2, :cond_1b

    .line 1093
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz v2, :cond_1a

    const/16 v25, 0x1

    .line 1095
    .local v25, "consumingStatusBar":Z
    :goto_11
    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    move/from16 v23, v0

    .line 1096
    .local v23, "consumedTop":I
    :goto_12
    if-eqz v24, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move/from16 v22, v0

    .line 1097
    .local v22, "consumedRight":I
    :goto_13
    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move/from16 v20, v0

    .line 1098
    .local v20, "consumedBottom":I
    :goto_14
    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v21, v0

    .line 1100
    .local v21, "consumedLeft":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1100
    if-eqz v2, :cond_6

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1103
    .local v31, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v31

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_4

    move-object/from16 v0, v31

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v22

    if-eq v2, v0, :cond_20

    .line 1105
    :cond_4
    :goto_16
    move/from16 v0, v23

    move-object/from16 v1, v31

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1106
    move/from16 v0, v22

    move-object/from16 v1, v31

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1107
    move/from16 v0, v20

    move-object/from16 v1, v31

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1108
    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    if-nez p1, :cond_5

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 1117
    :cond_5
    if-eqz p1, :cond_6

    .line 1119
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    sub-int v2, v2, v21

    .line 1120
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    sub-int v3, v3, v23

    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    sub-int v5, v5, v22

    .line 1122
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    sub-int v7, v7, v20

    .line 1118
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1126
    .end local v31    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    if-eqz p1, :cond_7

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 1129
    :cond_7
    return-object p1

    .line 1019
    .end local v20    # "consumedBottom":I
    .end local v21    # "consumedLeft":I
    .end local v22    # "consumedRight":I
    .end local v23    # "consumedTop":I
    .end local v25    # "consumingStatusBar":Z
    :cond_8
    const/16 v26, 0x1

    .local v26, "disallowAnimate":Z
    goto/16 :goto_0

    .line 1020
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1037
    .local v26, "disallowAnimate":Z
    :cond_a
    const/16 v30, 0x0

    .restart local v30    # "hasTopStableInset":Z
    goto/16 :goto_2

    .line 1038
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1041
    :cond_c
    const/16 v27, 0x0

    .restart local v27    # "hasBottomStableInset":Z
    goto/16 :goto_4

    .line 1042
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1045
    :cond_e
    const/16 v29, 0x0

    .restart local v29    # "hasRightStableInset":Z
    goto/16 :goto_6

    .line 1046
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1049
    :cond_10
    const/16 v28, 0x0

    .restart local v28    # "hasLeftStableInset":Z
    goto/16 :goto_8

    .line 1050
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1060
    .end local v27    # "hasBottomStableInset":Z
    .end local v28    # "hasLeftStableInset":Z
    .end local v29    # "hasRightStableInset":Z
    .end local v30    # "hasTopStableInset":Z
    .restart local v6    # "navBarSize":I
    .restart local v8    # "navBarToLeftEdge":Z
    .restart local v32    # "navBarToRightEdge":Z
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_a

    .line 1062
    :cond_13
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 1064
    :cond_14
    const/16 v33, 0x0

    .local v33, "statusBarNeedsRightInset":Z
    goto/16 :goto_c

    .line 1066
    .end local v33    # "statusBarNeedsRightInset":Z
    :cond_15
    const/4 v15, 0x0

    .local v15, "statusBarNeedsLeftInset":Z
    goto/16 :goto_d

    .line 1069
    .end local v15    # "statusBarNeedsLeftInset":Z
    :cond_16
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v16, v0

    .restart local v16    # "statusBarSideInset":I
    goto/16 :goto_e

    .end local v16    # "statusBarSideInset":I
    :cond_17
    const/16 v16, 0x0

    .restart local v16    # "statusBarSideInset":I
    goto/16 :goto_e

    .line 1073
    :cond_18
    const/16 v17, 0x1

    goto/16 :goto_f

    .line 1084
    .end local v6    # "navBarSize":I
    .end local v8    # "navBarToLeftEdge":Z
    .end local v16    # "statusBarSideInset":I
    .end local v26    # "disallowAnimate":Z
    .end local v32    # "navBarToRightEdge":Z
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    move/from16 v24, v0

    .local v24, "consumingNavBar":Z
    goto/16 :goto_10

    .line 1093
    .end local v24    # "consumingNavBar":Z
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 1088
    :cond_1b
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 1095
    .restart local v25    # "consumingStatusBar":Z
    :cond_1c
    const/16 v23, 0x0

    .restart local v23    # "consumedTop":I
    goto/16 :goto_12

    .line 1096
    :cond_1d
    const/16 v22, 0x0

    .restart local v22    # "consumedRight":I
    goto/16 :goto_13

    .line 1097
    :cond_1e
    const/16 v20, 0x0

    .restart local v20    # "consumedBottom":I
    goto/16 :goto_14

    .line 1098
    :cond_1f
    const/16 v21, 0x0

    .restart local v21    # "consumedLeft":I
    goto/16 :goto_15

    .line 1104
    .restart local v31    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_20
    move-object/from16 v0, v31

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v0, v20

    if-ne v2, v0, :cond_4

    move-object/from16 v0, v31

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_5

    goto/16 :goto_16
.end method

.method updateDecorCaptionShade()V
    .locals 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 1923
    :cond_0
    return-void
.end method

.method updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 2224
    return-void
.end method

.method updateNavigationGuardColor()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1369
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v2

    if-nez v2, :cond_0

    .line 1374
    const/4 v0, 0x4

    .line 1373
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    :cond_1
    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    .line 1548
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

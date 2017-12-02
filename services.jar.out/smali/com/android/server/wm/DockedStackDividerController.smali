.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private final mDimLayer:Lcom/android/server/wm/DimLayer;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field private mLastAnimationProgress:F

.field private mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 66
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 92
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 114
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 127
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 137
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 142
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 144
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 145
    const-string/jumbo v4, "DockedStackDim"

    .line 144
    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 147
    const v1, 0x10c000d

    .line 146
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 140
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F
    .param p3, "naturalAmount"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 823
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 824
    return p3

    .line 826
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    .line 827
    .local v1, "minimizeDistance":I
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v4

    int-to-float v4, v4

    .line 828
    int-to-float v5, v1

    .line 827
    div-float v2, v4, v5

    .line 829
    .local v2, "startPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v4, p2

    sub-float v5, v6, p2

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 830
    .local v0, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v4, p2, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 831
    .local v3, "t2":F
    mul-float v4, v0, v3

    sub-float v5, v6, v3

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    return v4
.end method

.method private animateForIme(J)Z
    .locals 13
    .param p1, "now"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 723
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v5, :cond_1

    .line 724
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 725
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 727
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v5

    const/high16 v6, 0x438c0000    # 280.0f

    mul-float/2addr v5, v6

    .line 726
    float-to-long v6, v5

    iput-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 729
    :cond_1
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v6, p1, v6

    long-to-float v5, v6

    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 730
    .local v3, "t":F
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 733
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v4, 0x0

    .line 734
    .local v4, "updated":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .end local v4    # "updated":Z
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 735
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 736
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 737
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_4

    .line 738
    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 739
    const/4 v4, 0x1

    .line 748
    :goto_2
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_2

    .line 749
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 734
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 730
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_3
    sget-object v5, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 741
    .restart local v0    # "i":I
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 742
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 744
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 745
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 743
    invoke-virtual {v1, v5, v6, v9}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v4, v5

    .local v4, "updated":Z
    goto :goto_2

    .line 753
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "updated":Z
    :cond_5
    if-eqz v4, :cond_6

    .line 754
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 756
    :cond_6
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_7

    .line 757
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 758
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 759
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 760
    return v9

    .line 762
    :cond_7
    return v10
.end method

.method private animateForMinimizedDockedStack(J)Z
    .locals 11
    .param p1, "now"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 767
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 768
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-nez v4, :cond_0

    .line 769
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 770
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 771
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 772
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v2

    .line 775
    .local v2, "transitionDuration":J
    :goto_0
    long-to-float v4, v2

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v5

    mul-float/2addr v4, v5

    .line 774
    float-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 776
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 777
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 778
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v5, v6

    float-to-long v6, v5

    .line 777
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 780
    .end local v2    # "transitionDuration":J
    :cond_0
    iget-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 781
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 783
    if-eqz v0, :cond_1

    .line 784
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 785
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 788
    :cond_1
    cmpl-float v4, v1, v8

    if-ltz v4, :cond_4

    .line 789
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 790
    return v9

    .line 773
    .end local v1    # "t":F
    :cond_2
    const-wide/16 v2, 0x150

    goto :goto_0

    .line 781
    .restart local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 792
    :cond_4
    return v10
.end method

.method private checkMinimizeChanged(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 530
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    if-nez v9, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 534
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_1

    .line 535
    return-void

    .line 537
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 538
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 542
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 543
    .local v0, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 544
    .local v3, "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 545
    .local v6, "topHomeStackTask":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 546
    .local v5, "homeVisible":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v9

    if-nez v9, :cond_6

    .line 547
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v8, :cond_7

    if-eq v6, v4, :cond_7

    const/4 v1, 0x1

    .line 548
    .local v1, "homeBehind":Z
    :goto_1
    if-eqz v5, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    :goto_2
    invoke-direct {p0, v7, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 529
    return-void

    .line 539
    .end local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "homeBehind":Z
    .end local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "homeVisible":Z
    .end local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_4
    return-void

    .line 545
    .restart local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .restart local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "homeVisible":Z
    goto :goto_0

    .line 546
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "homeBehind":Z
    goto :goto_1

    .line 547
    .end local v1    # "homeBehind":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "homeBehind":Z
    goto :goto_1

    :cond_8
    move v7, v8

    .line 548
    goto :goto_2
.end method

.method private clearImeAdjustAnimation()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 599
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 600
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 601
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 603
    const/4 v0, 0x1

    .line 599
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 606
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 607
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v4, 0x0

    .line 516
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 517
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 518
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 519
    const/4 v2, 0x1

    return v2

    .line 516
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return v4
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 839
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 841
    :cond_0
    return v5

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    .line 844
    .local v1, "minimizeDistance":I
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 845
    int-to-float v4, v1

    .line 844
    div-float v0, v3, v4

    .line 846
    .local v0, "fraction":F
    const/4 v3, 0x0

    sub-float v4, v0, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 849
    .local v2, "t":F
    sub-float v3, v5, v2

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v4

    .line 848
    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v3, v4

    return v3
.end method

.method private getInterpolatedAnimationValue(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 797
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getInterpolatedDividerValue(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 801
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F

    .prologue
    .line 808
    invoke-direct {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 809
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    .line 812
    :cond_0
    return v0
.end method

.method private initSnapAlgorithmForRotations()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 197
    .local v7, "baseConfig":Landroid/content/res/Configuration;
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    .line 198
    .local v8, "config":Landroid/content/res/Configuration;
    const/4 v10, 0x0

    .local v10, "rotation":I
    :goto_0
    const/4 v0, 0x4

    if-ge v10, v0, :cond_6

    .line 199
    if-eq v10, v12, :cond_0

    const/4 v0, 0x3

    if-ne v10, v0, :cond_1

    :cond_0
    move v9, v12

    .line 200
    .local v9, "rotated":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 203
    .local v2, "dw":I
    :goto_2
    if-eqz v9, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 206
    .local v3, "dh":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v10, v2, v3, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v8}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 208
    if-gt v2, v3, :cond_4

    move v0, v12

    :goto_4
    iput v0, v8, Landroid/content/res/Configuration;->orientation:I

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIII)I

    move-result v0

    int-to-float v0, v0

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 210
    div-float/2addr v0, v1

    .line 209
    float-to-int v0, v0

    iput v0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIII)I

    move-result v0

    int-to-float v0, v0

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 213
    div-float/2addr v0, v1

    .line 212
    float-to-int v0, v0

    iput v0, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v11

    .line 216
    .local v11, "rotationContext":Landroid/content/Context;
    iget-object v14, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 217
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 218
    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v12, :cond_5

    move v5, v12

    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v0, v14, v10

    .line 198
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_1
    move v9, v13

    .line 199
    goto :goto_1

    .line 202
    .restart local v9    # "rotated":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v2    # "dw":I
    goto :goto_2

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .restart local v3    # "dh":I
    goto :goto_3

    .line 208
    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    .restart local v11    # "rotationContext":Landroid/content/Context;
    :cond_5
    move v5, v13

    .line 218
    goto :goto_5

    .line 193
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_6
    return-void
.end method

.method private isAnimationMaximizing()Z
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 552
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 224
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    const v2, 0x1050025

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 227
    const v2, 0x1050026

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x4

    .line 228
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 230
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 222
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 271
    .local v1, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 272
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    .line 271
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 6
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 565
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 566
    .local v2, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 567
    if-ne p1, v2, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v0

    .line 572
    .local v0, "imeChanged":Z
    const/4 v1, 0x0

    .line 573
    .local v1, "minimizedChange":Z
    if-eqz p1, :cond_5

    .line 574
    if-eqz p2, :cond_4

    .line 575
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    .line 586
    .end local v1    # "minimizedChange":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 587
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_7

    .line 592
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 564
    :cond_3
    return-void

    .line 577
    .restart local v1    # "minimizedChange":Z
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    .local v1, "minimizedChange":Z
    goto :goto_0

    .line 580
    .local v1, "minimizedChange":Z
    :cond_5
    if-eqz p2, :cond_6

    .line 581
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_0

    .line 583
    :cond_6
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    .local v1, "minimizedChange":Z
    goto :goto_0

    .line 588
    .end local v1    # "minimizedChange":Z
    :cond_7
    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    const-string/jumbo v5, " minimizedChange="

    .line 588
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setMinimizedDockedStack(Z)Z
    .locals 4
    .param p1, "minimized"    # Z

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 698
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 699
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startAdjustAnimation(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 613
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 614
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 610
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "imeWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v8, 0x18

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 623
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-nez v3, :cond_4

    .line 624
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 625
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 626
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 627
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 632
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 633
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 634
    if-eqz p1, :cond_5

    move v3, v4

    :goto_3
    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 635
    if-eqz p2, :cond_0

    move v5, v4

    :cond_0
    int-to-float v3, v5

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 637
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 638
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_6

    .line 639
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 640
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 638
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_2
    move v3, v5

    .line 624
    goto :goto_0

    :cond_3
    move v3, v5

    .line 625
    goto :goto_1

    .line 629
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 630
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    goto :goto_2

    :cond_5
    move v3, v5

    .line 634
    goto :goto_3

    .line 647
    .restart local v0    # "i":I
    .restart local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 648
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 649
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 650
    const-wide/16 v6, 0xc8

    .line 649
    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 651
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 652
    if-eqz p3, :cond_8

    .line 655
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_7

    .line 656
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    .line 658
    :cond_7
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 659
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->startDelayingAnimationStart()V

    .line 666
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_9

    .line 667
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 669
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 618
    :goto_5
    return-void

    .line 692
    :cond_a
    if-nez p1, :cond_b

    move v4, p2

    :cond_b
    const-wide/16 v6, 0x118

    .line 691
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    goto :goto_5
.end method


# virtual methods
.method synthetic -com_android_server_wm_DockedStackDividerController_lambda$1(ZZ)V
    .locals 5
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z

    .prologue
    .line 670
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 671
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    .line 676
    :cond_0
    const-wide/16 v0, 0x0

    .line 677
    .local v0, "duration":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v2, p1, :cond_1

    .line 678
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v2, p2, :cond_1

    .line 679
    const-wide/16 v0, 0x118

    .line 688
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 687
    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 0
    return-void

    .line 681
    :cond_1
    sget-object v2, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 683
    const-string/jumbo v4, " adjustedForDivider="

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 684
    const-string/jumbo v4, " mAdjustedForIme="

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 684
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 685
    const-string/jumbo v4, " mAdjustedForDivider="

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 685
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 681
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public animate(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 708
    return v2

    .line 710
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_1

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    .line 712
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 718
    :cond_3
    return v2
.end method

.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  Dim layer is dimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 876
    :cond_0
    return-void
.end method

.method getContentInsets()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 863
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getImeHeightAdjustedFor()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    .line 155
    .local v9, "di":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_1

    .line 156
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v3, v4, :cond_1

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v3

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 160
    .local v8, "baseDisplayWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 161
    .local v7, "baseDisplayHeight":I
    const v10, 0x7fffffff

    .line 165
    .local v10, "minWidth":I
    const/4 v14, 0x0

    .local v14, "rotation":I
    :goto_0
    const/4 v3, 0x4

    if-ge v14, v3, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v14, v5}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 168
    const/4 v3, 0x1

    if-eq v14, v3, :cond_2

    const/4 v3, 0x3

    if-ne v14, v3, :cond_3

    :cond_2
    const/4 v13, 0x1

    .line 169
    .local v13, "rotated":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 170
    if-eqz v13, :cond_4

    move v4, v7

    .line 171
    :goto_2
    if-eqz v13, :cond_5

    move v3, v8

    .line 169
    :goto_3
    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v6, v15, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 173
    const/4 v11, 0x1

    .line 175
    .local v11, "orientation":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v3, v4, v11}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 176
    .local v2, "dockSide":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 176
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v12

    .line 181
    .local v12, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v3, v3, v14

    invoke-virtual {v3, v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 183
    .local v1, "snappedPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    .line 183
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 186
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 185
    invoke-interface {v3, v14, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 165
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1    # "snappedPosition":I
    .end local v2    # "dockSide":I
    .end local v11    # "orientation":I
    .end local v12    # "position":I
    .end local v13    # "rotated":Z
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "rotated":Z
    goto/16 :goto_1

    :cond_4
    move v4, v8

    .line 170
    goto/16 :goto_2

    :cond_5
    move v3, v7

    .line 171
    goto/16 :goto_3

    .line 174
    :cond_6
    const/4 v11, 0x2

    .restart local v11    # "orientation":I
    goto/16 :goto_4

    .line 190
    .end local v11    # "orientation":I
    .end local v13    # "rotated":Z
    :cond_7
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 264
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isImeHideRequested()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method notifyAdjustedForImeChanged(ZJ)V
    .locals 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 446
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 447
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 448
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 450
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 445
    return-void
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .locals 3
    .param p2, "appTransition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x1

    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 499
    .local v0, "wasMinimized":Z
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 506
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    if-eqz p2, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    .line 497
    :cond_0
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 493
    return-void
.end method

.method notifyDockSideChanged(I)V
    .locals 6
    .param p1, "newDockSide"    # I

    .prologue
    .line 433
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 434
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 435
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 437
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 432
    return-void
.end method

.method notifyDockedDividerVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 360
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 361
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 364
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 359
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .locals 7
    .param p1, "exists"    # Z

    .prologue
    .line 373
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 374
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 375
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    .line 377
    .local v3, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Error delivering docked stack exists changed event."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 383
    if-eqz p1, :cond_2

    .line 385
    const-class v5, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 386
    .local v2, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_1

    .line 390
    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 391
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 372
    .end local v2    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    :cond_1
    :goto_2
    return-void

    .line 393
    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    goto :goto_2
.end method

.method notifyDockedStackMinimizedChanged(ZJ)V
    .locals 8
    .param p1, "minimizedDock"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/16 v7, 0x35

    const/4 v5, 0x0

    .line 417
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 418
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 419
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 418
    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 420
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 421
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 422
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 424
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "size":I
    :cond_0
    move v4, v5

    .line 419
    goto :goto_0

    .line 425
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/view/IDockedStackListener;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering minimized dock changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 416
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 233
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 326
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 333
    return-void

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 338
    .local v0, "side":I
    packed-switch v0, :pswitch_data_0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    return-void

    .line 340
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 341
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 340
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    .line 345
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    .line 344
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 348
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 349
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 348
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 352
    :pswitch_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    .line 353
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    .line 352
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reevaluateVisibility(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 288
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 289
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v2, v1, :cond_1

    if-eqz p1, :cond_4

    .line 292
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 294
    if-nez v1, :cond_2

    .line 295
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 281
    :cond_2
    return-void

    .line 288
    .end local v1    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 290
    :cond_4
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .prologue
    const-wide/16 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 461
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 463
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 464
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 458
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetImeHideRequested()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 401
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "animate"    # Z
    .param p4, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"    # I

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-eq v0, p5, :cond_3

    .line 308
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_4

    .line 312
    :cond_1
    if-nez p1, :cond_5

    move v0, p2

    :goto_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 314
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 315
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 316
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 305
    :cond_2
    return-void

    .line 307
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_2

    goto :goto_0

    .line 309
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_2

    .line 312
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method setResizeDimLayer(ZIF)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "targetStackId"    # I
    .param p3, "alpha"    # F

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 470
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 471
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 472
    .local v0, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v2, v3

    .line 473
    .local v2, "visibleAndValid":Z
    if-eqz v2, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 475
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    move-result v4

    .line 478
    const-wide/16 v6, 0x0

    .line 477
    invoke-virtual {v3, v4, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 483
    .end local v2    # "visibleAndValid":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 484
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 486
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 468
    return-void

    .line 480
    .restart local v2    # "visibleAndValid":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "visibleAndValid":Z
    goto :goto_0
.end method

.method setResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_0

    .line 255
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 256
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 253
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 276
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method wasVisible()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method

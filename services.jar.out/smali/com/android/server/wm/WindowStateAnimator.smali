.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;,
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field private static final SYSTEM_UI_FLAGS_LAYOUT_STABLE_FULLSCREEN:I = 0x500

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"


# instance fields
.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimateMove:Z

.field mAnimating:Z

.field mAnimatingMove:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLocalAnimating:Z

.field mPendingDestroySurface:Landroid/view/SurfaceControl;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceH:F

.field mSurfaceLayer:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field mTmpClipRect:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 110
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 111
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 112
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 117
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 125
    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    .line 130
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 131
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 192
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 194
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 195
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 196
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 197
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 199
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 201
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    .line 202
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .line 208
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 209
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 211
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_2

    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 212
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 213
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 214
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 191
    return-void

    .line 204
    :cond_0
    const-string/jumbo v3, "WindowStateAnimator"

    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_1

    .line 211
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_2
.end method

.method private applyDecorRect(Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "decorRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1242
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1243
    .local v4, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1244
    .local v5, "width":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1247
    .local v0, "height":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v1, v6, v7

    .line 1248
    .local v1, "left":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v3, v6, v7

    .line 1251
    .local v3, "top":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->isInFlymeMovedMode(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v6

    if-nez v6, :cond_flyme_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->setSystemDecorRectTop(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_flyme_0

    .line 1254
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v1

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    .line 1255
    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    .line 1254
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 1263
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v6, :cond_0

    iget v6, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 1264
    iget v2, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1265
    .local v2, "scale":F
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1266
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1267
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1268
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1241
    .end local v2    # "scale":F
    :cond_0
    return-void
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    .prologue
    .line 1898
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    .line 1899
    .local v8, "startTime":J
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    .line 1900
    .local v0, "duration":J
    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    sub-long v2, v10, v8

    .line 1901
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    .line 1902
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    .line 1904
    return-void

    .line 1906
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1907
    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1908
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 1909
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1911
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v11, 0x10a0011

    .line 1910
    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1912
    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1913
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1914
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1915
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 1916
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 1897
    return-void
.end method

.method private stepAnimation(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 281
    .local v0, "more":Z
    return v0

    .line 274
    .end local v0    # "more":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 7
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1829
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v5, p2, :cond_2

    .line 1836
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v4, :cond_1

    .line 1837
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    .line 1838
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    .line 1840
    :cond_1
    return v3

    .line 1830
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 1829
    if-nez v5, :cond_0

    .line 1847
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1848
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 1849
    .local v1, "anim":I
    const/4 v2, -0x1

    .line 1850
    .local v2, "attr":I
    const/4 v0, 0x0

    .line 1851
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_6

    .line 1852
    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1878
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1887
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1888
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1894
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_8

    :goto_2
    return v3

    .line 1852
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "anim":I
    .restart local v2    # "attr":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1854
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 1868
    :goto_3
    if-ltz v2, :cond_3

    .line 1869
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1856
    .local v0, "a":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v2, 0x0

    .line 1857
    goto :goto_3

    .line 1859
    :pswitch_1
    const/4 v2, 0x1

    .line 1860
    goto :goto_3

    .line 1862
    :pswitch_2
    const/4 v2, 0x2

    .line 1863
    goto :goto_3

    .line 1865
    :pswitch_3
    const/4 v2, 0x3

    .line 1866
    goto :goto_3

    .line 1891
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto :goto_1

    :cond_8
    move v3, v4

    .line 1894
    goto :goto_2

    .line 1854
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1805
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_1

    .line 1806
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1807
    const/4 v0, 0x1

    .line 1811
    .local v0, "transit":I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1813
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1803
    :cond_0
    return-void

    .line 1809
    .end local v0    # "transit":I
    :cond_1
    const/4 v0, 0x3

    .restart local v0    # "transit":I
    goto :goto_0
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 266
    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 263
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 240
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 241
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 235
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 537
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v1, v3, :cond_0

    .line 538
    return v4

    .line 543
    :cond_0
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 544
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 545
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_2

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v1

    return v1

    .line 548
    :cond_2
    return v4
.end method

.method computeShownFrameLocked()V
    .locals 29

    .prologue
    .line 1030
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 1032
    .local v13, "selfTransformation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 1034
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1039
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 1040
    .local v20, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1041
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    .line 1042
    .local v19, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1043
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1044
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1050
    :cond_0
    :goto_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v24, v0

    if-nez v24, :cond_12

    .line 1051
    const/16 v21, 0x0

    .line 1052
    :goto_3
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1053
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1054
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1062
    .end local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    .line 1064
    .local v7, "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v12

    .line 1066
    .local v12, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v11

    .line 1068
    :goto_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 1069
    if-nez v13, :cond_2

    if-eqz v6, :cond_15

    .line 1072
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1073
    .local v8, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 1074
    .local v15, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    .line 1077
    .local v16, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v11, :cond_17

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1085
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1086
    .local v17, "w":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v9, v0

    .line 1087
    .local v9, "h":F
    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v17, v24

    if-ltz v24, :cond_16

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v9, v24

    if-ltz v24, :cond_16

    .line 1088
    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v24, v17

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, v25, v9

    const/high16 v26, 0x3f800000    # 1.0f

    add-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v26, v17, v26

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v9, v27

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1095
    .end local v9    # "h":F
    .end local v17    # "w":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1096
    if-eqz v13, :cond_3

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1099
    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1100
    if-eqz v6, :cond_4

    .line 1101
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1103
    :cond_4
    if-eqz v5, :cond_5

    .line 1104
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1106
    :cond_5
    if-eqz v11, :cond_6

    .line 1107
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1111
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    if-nez v7, :cond_7

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v24, v0

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    .line 1112
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 1114
    .local v14, "spec":Landroid/view/MagnificationSpec;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1126
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    :goto_7
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1127
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1128
    const/16 v24, 0x0

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1129
    const/16 v24, 0x3

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1130
    const/16 v24, 0x1

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1131
    const/16 v24, 0x4

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 1132
    const/16 v24, 0x2

    aget v22, v15, v24

    .line 1133
    .local v22, "x":F
    const/16 v24, 0x5

    aget v23, v15, v24

    .line 1134
    .local v23, "y":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 1135
    .local v18, "w":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1136
    .local v10, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v22

    int-to-float v0, v10

    move/from16 v26, v0

    add-float v26, v26, v23

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1147
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v22, v24

    if-nez v24, :cond_e

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v23, v24

    if-nez v24, :cond_e

    .line 1149
    :cond_8
    if-eqz v13, :cond_9

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1152
    :cond_9
    if-eqz v6, :cond_a

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v24, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1155
    :cond_a
    if-eqz v5, :cond_d

    .line 1156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v24, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1157
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_b

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1163
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_c

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1167
    :cond_c
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 1170
    :cond_d
    if-eqz v11, :cond_e

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v24, v0

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1186
    :cond_e
    return-void

    .line 1033
    .end local v7    # "displayId":I
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v12    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v18    # "w":I
    .end local v20    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_f
    const/4 v6, 0x0

    .local v6, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    .line 1035
    .end local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_10
    const/4 v5, 0x0

    .local v5, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    .line 1045
    .end local v5    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v20    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .local v6, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_2

    .line 1051
    .end local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_12
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    .local v21, "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_3

    .line 1055
    .end local v21    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_13
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .local v5, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_4

    .line 1066
    .end local v5    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v19    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_14
    const/4 v11, 0x0

    .local v11, "screenAnimation":Z
    goto/16 :goto_5

    .line 1070
    .end local v11    # "screenAnimation":Z
    :cond_15
    if-nez v5, :cond_2

    .line 1069
    if-nez v11, :cond_2

    .line 1187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 1188
    return-void

    .line 1090
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "h":F
    .restart local v15    # "tmpFloats":[F
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v17    # "w":F
    :cond_16
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_6

    .line 1093
    .end local v9    # "h":F
    .end local v17    # "w":F
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_6

    .line 1115
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_18
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v24, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1116
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v24, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    .line 1195
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_19
    const/4 v14, 0x0

    .line 1197
    .local v14, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a

    if-nez v7, :cond_1a

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 1200
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    :cond_1a
    if-eqz v14, :cond_1d

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1202
    .restart local v8    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 1203
    .restart local v15    # "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    .line 1205
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1206
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1208
    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 1213
    :cond_1b
    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1215
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1216
    const/16 v24, 0x0

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1217
    const/16 v24, 0x3

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1218
    const/16 v24, 0x1

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1219
    const/16 v24, 0x4

    aget v24, v15, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 1220
    const/16 v24, 0x2

    aget v22, v15, v24

    .line 1221
    .restart local v22    # "x":F
    const/16 v24, 0x5

    aget v23, v15, v24

    .line 1222
    .restart local v23    # "y":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 1223
    .restart local v18    # "w":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1224
    .restart local v10    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v22

    int-to-float v0, v10

    move/from16 v26, v0

    add-float v26, v26, v23

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1029
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v10    # "h":I
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v18    # "w":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :goto_9
    return-void

    .line 1209
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v15    # "tmpFloats":[F
    .restart local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1c
    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v24, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1210
    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v24, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_8

    .line 1228
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v15    # "tmpFloats":[F
    .end local v16    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v24, v0

    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    .line 1230
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 1232
    :cond_1f
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->moveShownFrameIfNeed(Lcom/android/server/wm/WindowStateAnimator;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1233
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1235
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1236
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    goto/16 :goto_9
.end method

.method createSurfaceLocked()Landroid/view/SurfaceControl;
    .locals 20

    .prologue
    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    .line 770
    .local v17, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_6

    .line 773
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 774
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    .line 775
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_7

    .line 776
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 777
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 785
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 787
    const/4 v8, 0x4

    .line 788
    .local v8, "flags":I
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 790
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    const/16 v8, 0x84

    .line 796
    :cond_1
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_8

    .line 799
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 800
    .local v5, "width":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 808
    .local v6, "height":I
    :goto_1
    if-gtz v5, :cond_2

    .line 809
    const/4 v5, 0x1

    .line 811
    :cond_2
    if-gtz v6, :cond_3

    .line 812
    const/4 v6, 0x1

    .line 815
    :cond_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    .line 816
    .local v15, "left":F
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v16, v0

    .line 819
    .local v16, "top":F
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    .line 820
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v6, v2

    .line 821
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v15, v2

    .line 822
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v16, v16, v2

    .line 833
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 834
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 835
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    .line 836
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 838
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 839
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    int-to-float v2, v5

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    .line 846
    int-to-float v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    .line 848
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 849
    const/high16 v3, 0x1000000

    .line 848
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v14, 0x1

    .line 850
    .local v14, "isHwAccelerated":Z
    :goto_2
    if-eqz v14, :cond_a

    const/4 v7, -0x3

    .line 851
    .local v7, "format":I
    :goto_3
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 852
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_4

    .line 853
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_4

    .line 854
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_4

    .line 855
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_4

    .line 856
    or-int/lit16 v8, v8, 0x400

    .line 859
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    .line 866
    new-instance v2, Landroid/view/SurfaceControl;

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 868
    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 872
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 913
    :try_start_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 914
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 918
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 919
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 920
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_5

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 923
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 925
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_4
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 932
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 939
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "format":I
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "isHwAccelerated":Z
    .end local v15    # "left":F
    .end local v16    # "top":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v2

    .line 781
    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto/16 :goto_0

    .line 802
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 803
    .restart local v5    # "width":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .restart local v6    # "height":I
    goto/16 :goto_1

    .line 848
    .restart local v15    # "left":F
    .restart local v16    # "top":F
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "isHwAccelerated":Z
    goto/16 :goto_2

    .line 850
    :cond_a
    :try_start_4
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v7    # "format":I
    goto/16 :goto_3

    .line 889
    .end local v7    # "format":I
    .end local v14    # "isHwAccelerated":Z
    :catch_0
    move-exception v12

    .line 890
    .local v12, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 891
    const-string/jumbo v2, "WindowStateAnimator"

    const-string/jumbo v3, "Exception creating surface"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 893
    const/4 v2, 0x0

    return-object v2

    .line 883
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 884
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 885
    const-string/jumbo v2, "WindowStateAnimator"

    const-string/jumbo v3, "OutOfResourcesException creating surface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "create"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 887
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 888
    const/4 v2, 0x0

    return-object v2

    .line 926
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v7    # "format":I
    .restart local v14    # "isHwAccelerated":Z
    :catch_2
    move-exception v13

    .line 927
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string/jumbo v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating surface in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "create-init"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 931
    .end local v13    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 932
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 931
    throw v2
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 1018
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 1026
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    .line 1006
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1022
    const-string/jumbo v3, " surface "

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1022
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1023
    const-string/jumbo v3, " session "

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1023
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1023
    const-string/jumbo v3, ": "

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1023
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1021
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method destroySurfaceLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 943
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_0

    .line 944
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 947
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_4

    .line 949
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 950
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 951
    add-int/lit8 v2, v2, -0x1

    .line 952
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 953
    .local v0, "c":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_0

    .line 966
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_5

    .line 967
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v3, v4, :cond_3

    .line 968
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 977
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    .line 979
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    .line 992
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 1000
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1001
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1002
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 942
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 990
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 993
    :catch_0
    move-exception v1

    .line 994
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 995
    const-string/jumbo v5, " surface "

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 995
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 995
    const-string/jumbo v5, " session "

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 995
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 996
    const-string/jumbo v5, ": "

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 996
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_0

    .line 181
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_0
    const-string/jumbo v0, "NO_SURFACE"

    return-object v0

    .line 177
    :pswitch_1
    const-string/jumbo v0, "DRAW_PENDING"

    return-object v0

    .line 178
    :pswitch_2
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 179
    :pswitch_3
    const-string/jumbo v0, "READY_TO_SHOW"

    return-object v0

    .line 180
    :pswitch_4
    const-string/jumbo v0, "HAS_DRAWN"

    return-object v0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1920
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 1922
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1923
    const-string/jumbo v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1924
    const-string/jumbo v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1925
    const-string/jumbo v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1927
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_3

    .line 1928
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1930
    const-string/jumbo v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1931
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 1932
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    .line 1935
    if-eqz p3, :cond_4

    .line 1936
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1937
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1939
    const-string/jumbo v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1941
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1942
    const-string/jumbo v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1943
    const-string/jumbo v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1944
    const-string/jumbo v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1945
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1946
    const-string/jumbo v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1947
    const-string/jumbo v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1949
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    .line 1950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1951
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1953
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_8

    .line 1954
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1955
    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1957
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 1958
    :cond_9
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1959
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1960
    const-string/jumbo v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1962
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 1963
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1964
    const-string/jumbo v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1965
    const-string/jumbo v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1966
    const-string/jumbo v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1967
    const-string/jumbo v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1919
    :cond_c
    return-void

    .line 1957
    :cond_d
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    goto :goto_0
.end method

.method finishDrawingLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 517
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v2, :cond_1

    .line 524
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 525
    return v2

    .line 527
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method finishExit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 446
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 447
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_1

    .line 453
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 454
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_2

    .line 462
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v3, :cond_3

    .line 468
    return-void

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 472
    return-void

    .line 478
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5

    .line 479
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 485
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_6

    .line 487
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 490
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    .line 439
    return-void

    .line 455
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method hide()V
    .locals 4

    .prologue
    .line 494
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v1, :cond_0

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 499
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDummyAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 254
    :cond_0
    return v0
.end method

.method isWindowAnimating()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1676
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 1679
    return v4

    .line 1698
    :cond_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1715
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 1720
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1723
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1724
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1726
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1727
    .local v2, "i":I
    :cond_1
    :goto_0
    if-lez v2, :cond_2

    .line 1728
    add-int/lit8 v2, v2, -0x1

    .line 1729
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1730
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_1

    .line 1731
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1732
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1

    .line 1733
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 1739
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1740
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    .line 1741
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_0

    .line 1747
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v6, :cond_4

    .line 1748
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_4

    .line 1749
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1751
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_3

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    .line 1761
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1764
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1767
    :cond_4
    return v5

    .line 1770
    .end local v2    # "i":I
    :cond_5
    return v4
.end method

.method public prepareSurfaceLocked(Z)V
    .locals 11
    .param p1, "recoveringMemory"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1449
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1450
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_1

    .line 1451
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_0

    .line 1455
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1457
    :cond_0
    return-void

    .line 1460
    :cond_1
    const/4 v0, 0x0

    .line 1462
    .local v0, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1464
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1466
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v3, :cond_9

    .line 1469
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1484
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v3, v4, :cond_3

    .line 1485
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    .line 1493
    :cond_3
    const/4 v0, 0x1

    .line 1494
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1495
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    .line 1496
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1497
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1498
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1499
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1500
    iget v3, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1501
    iget v3, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1508
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    .line 1510
    :try_start_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    .line 1511
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1512
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 1513
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1514
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1515
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v6, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    .line 1516
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v7, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v8, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    .line 1514
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1518
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1524
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1525
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_4

    .line 1526
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 1531
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    .line 1532
    const/16 v5, 0x8

    .line 1531
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1537
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    .line 1538
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    .line 1555
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_7

    .line 1556
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1557
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1558
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v2, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1566
    :cond_7
    :goto_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v10, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1448
    :cond_8
    return-void

    .line 1468
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    goto :goto_1

    .line 1470
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 1471
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    .line 1479
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_6

    .line 1480
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_1

    .line 1486
    :cond_b
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1487
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1488
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1489
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1490
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v4, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1491
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v4, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1492
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1484
    if-nez v3, :cond_3

    .line 1551
    const/4 v0, 0x1

    goto :goto_1

    .line 1534
    :cond_c
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1540
    :catch_0
    move-exception v1

    .line 1541
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error updating surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    if-nez p1, :cond_6

    .line 1543
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "update"

    invoke-virtual {v3, p0, v4, v10}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1562
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_d
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_2
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 232
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 231
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;J)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "startTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 221
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 222
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 223
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 226
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 227
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 228
    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method setOpaqueLocked(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1644
    return-void

    .line 1647
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1651
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1642
    return-void

    .line 1652
    :catchall_0
    move-exception v0

    .line 1653
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1652
    throw v0
.end method

.method setSecureLocked(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1660
    return-void

    .line 1663
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1658
    return-void

    .line 1668
    :catchall_0
    move-exception v0

    .line 1669
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1668
    throw v0
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 23
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 1350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1354
    .local v15, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x4000

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1357
    iget v0, v15, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v16, v0

    .line 1358
    .local v16, "width":I
    iget v7, v15, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 1366
    .local v7, "height":I
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 1367
    const/16 v16, 0x1

    .line 1369
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 1370
    const/4 v7, 0x1

    .line 1373
    :cond_1
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/RectF;->left:F

    .line 1374
    .local v8, "left":F
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/RectF;->top:F

    .line 1377
    .local v14, "top":F
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1378
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    .line 1379
    .local v5, "displayId":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1381
    .local v9, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    if-nez v5, :cond_2

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v10

    .line 1384
    .local v10, "spec":Landroid/view/MagnificationSpec;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1389
    .end local v10    # "spec":Landroid/view/MagnificationSpec;
    :cond_2
    :goto_1
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1390
    int-to-float v0, v7

    move/from16 v17, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 1391
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    sub-float v8, v8, v17

    .line 1392
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    sub-float v14, v14, v17

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move/from16 v17, v0

    cmpl-float v17, v17, v8

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    move/from16 v17, v0

    cmpl-float v17, v17, v14

    if-eqz v17, :cond_9

    :cond_3
    const/4 v12, 0x1

    .line 1395
    .local v12, "surfaceMoved":Z
    :goto_2
    if-eqz v12, :cond_4

    .line 1396
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 1397
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 1402
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v14}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_a

    :cond_5
    const/4 v13, 0x1

    .line 1413
    .local v13, "surfaceResized":Z
    :goto_4
    if-eqz v13, :cond_6

    .line 1414
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    .line 1415
    int-to-float v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    .line 1416
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 1421
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v17, v0

    .line 1423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v18, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v19, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    .line 1424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v20, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v21, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    .line 1422
    invoke-virtual/range {v17 .. v21}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v18

    .line 1426
    const/16 v19, 0x4

    .line 1425
    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1427
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_6

    .line 1428
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    .line 1429
    .local v11, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v11, :cond_6

    .line 1430
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/android/server/wm/TaskStack;->startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1445
    .end local v11    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V

    .line 1349
    return-void

    .line 1360
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "displayId":I
    .end local v7    # "height":I
    .end local v8    # "left":F
    .end local v9    # "scale":F
    .end local v12    # "surfaceMoved":Z
    .end local v13    # "surfaceResized":Z
    .end local v14    # "top":F
    .end local v16    # "width":I
    :cond_7
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 1361
    .restart local v16    # "width":I
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v7

    .restart local v7    # "height":I
    goto/16 :goto_0

    .line 1385
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "displayId":I
    .restart local v8    # "left":F
    .restart local v9    # "scale":F
    .restart local v10    # "spec":Landroid/view/MagnificationSpec;
    .restart local v14    # "top":F
    :cond_8
    iget v9, v10, Landroid/view/MagnificationSpec;->scale:F

    goto/16 :goto_1

    .line 1394
    .end local v10    # "spec":Landroid/view/MagnificationSpec;
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "surfaceMoved":Z
    goto/16 :goto_2

    .line 1403
    :catch_0
    move-exception v6

    .line 1404
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "WindowStateAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error positioning surface of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1405
    const-string/jumbo v19, " pos=("

    .line 1404
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1405
    const-string/jumbo v19, ","

    .line 1404
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1405
    const-string/jumbo v19, ")"

    .line 1404
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    if-nez p1, :cond_4

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "position"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 1412
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "surfaceResized":Z
    goto/16 :goto_4

    .line 1433
    :catch_1
    move-exception v6

    .line 1437
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "WindowStateAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error resizing surface of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1438
    const-string/jumbo v19, " size=("

    .line 1437
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1438
    const-string/jumbo v19, "x"

    .line 1437
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1438
    const-string/jumbo v19, ")"

    .line 1437
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    if-nez p1, :cond_6

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "size"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_5
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1572
    const-string/jumbo v0, "WindowStateAnimator"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1576
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1580
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1570
    return-void

    .line 1581
    :catchall_0
    move-exception v0

    .line 1582
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1581
    throw v0
.end method

.method setWallpaperOffset(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "shownFrame"    # Landroid/graphics/RectF;

    .prologue
    .line 1589
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1590
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 1591
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1592
    .local v3, "top":I
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 1593
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v4, :cond_1

    .line 1598
    return-void

    .line 1600
    :cond_1
    int-to-float v4, v2

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 1601
    int-to-float v4, v3

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 1603
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1607
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1608
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1588
    :cond_2
    :goto_0
    return-void

    .line 1609
    :catch_0
    move-exception v1

    .line 1610
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1611
    const-string/jumbo v6, " pos=("

    .line 1610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1611
    const-string/jumbo v6, ","

    .line 1610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1611
    const-string/jumbo v6, ")"

    .line 1610
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 1612
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 1613
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1612
    throw v4
.end method

.method showSurfaceRobustlyLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1783
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 1784
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 1785
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 1786
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_0

    .line 1789
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 1790
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :cond_0
    return v4

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1798
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "show"

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1800
    return v5
.end method

.method stepAnimationLocked(J)Z
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 288
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 291
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 292
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 293
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 294
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v3, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 302
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    if-eqz v3, :cond_1

    .line 303
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    .line 304
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 305
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .line 304
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 310
    :goto_0
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    .line 311
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 313
    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 312
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 315
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 316
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 318
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_3

    .line 319
    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    return v9

    .line 307
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 308
    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 307
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    :cond_2
    move-wide v4, p1

    .line 314
    goto :goto_1

    .line 329
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 330
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_5

    .line 331
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 339
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 340
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 341
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 342
    return v10

    .line 343
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v3, :cond_10

    .line 346
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 356
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_12

    .line 366
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 367
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 368
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    .line 369
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 370
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_8

    .line 371
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 372
    iput-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 374
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_9

    .line 375
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v8, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 377
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 378
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_13

    .line 379
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 385
    :cond_a
    :goto_3
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 386
    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 387
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v3, v4, :cond_d

    .line 392
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 393
    if-eqz v0, :cond_b

    .line 394
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 396
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v3, :cond_d

    .line 397
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_c

    .line 400
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 405
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 408
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 409
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    .line 410
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 411
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_14

    .line 412
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 409
    if-eqz v3, :cond_14

    .line 413
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_14

    .line 416
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 426
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 427
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 428
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 429
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 430
    const-string/jumbo v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    .line 429
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 432
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_f

    .line 433
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 436
    :cond_f
    return v10

    .line 347
    .end local v1    # "displayId":I
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto/16 :goto_2

    .line 350
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_6

    .line 353
    iput-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto/16 :goto_2

    .line 357
    :cond_12
    return v10

    .line 380
    :cond_13
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_a

    .line 381
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto/16 :goto_3

    .line 418
    :cond_14
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_e

    .line 421
    if-eqz v0, :cond_e

    .line 422
    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1973
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1975
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1976
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1977
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1978
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1628
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v5, :cond_0

    .line 1629
    return v3

    .line 1631
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1632
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1633
    const/high16 v6, 0x1000000

    .line 1632
    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1634
    .local v2, "isHwAccelerated":Z
    :goto_0
    if-eqz v2, :cond_2

    const/4 v1, -0x3

    .line 1635
    .local v1, "format":I
    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v1, v5, :cond_4

    .line 1636
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1637
    return v4

    .line 1632
    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isHwAccelerated":Z
    goto :goto_0

    .line 1634
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .restart local v1    # "format":I
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1636
    goto :goto_2

    .line 1639
    :cond_4
    return v3
.end method

.method updateSurfaceWindowCrop(Z)V
    .locals 13
    .param p1, "recoveringMemory"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1273
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1274
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1275
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 1276
    return-void

    .line 1278
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 1281
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;->updateSurfaceWindowCrop(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_4

    .line 1284
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v8, v6, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v9, v6, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1309
    :goto_0
    iget v7, v3, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    .line 1310
    .local v5, "fullscreen":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 1313
    .local v1, "clipRect":Landroid/graphics/Rect;
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v7, :cond_1

    if-eqz v5, :cond_9

    :cond_1
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1316
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1317
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1318
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1319
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1320
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1322
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 1326
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1331
    :cond_2
    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1333
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1334
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1338
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :cond_3
    :goto_2
    return-void

    .line 1285
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "clipRect":Landroid/graphics/Rect;
    .end local v5    # "fullscreen":Z
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1288
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1289
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    .line 1290
    iget v10, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 1291
    iget v11, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v12, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 1289
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto/16 :goto_0

    .line 1292
    :cond_5
    iget v7, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    if-lt v7, v8, :cond_6

    .line 1294
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1295
    :cond_6
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1297
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1298
    :cond_7
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7dd

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v7, :cond_8

    .line 1301
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1302
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    .line 1303
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1306
    :cond_8
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1313
    .restart local v1    # "clipRect":Landroid/graphics/Rect;
    .restart local v5    # "fullscreen":Z
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 1339
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v4

    .line 1340
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "WindowStateAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error setting crop surface of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1341
    const-string/jumbo v9, " crop="

    .line 1340
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1341
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    .line 1340
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    if-nez p1, :cond_3

    .line 1343
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v8, "crop"

    const/4 v9, 0x1

    invoke-virtual {v7, p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_2
.end method

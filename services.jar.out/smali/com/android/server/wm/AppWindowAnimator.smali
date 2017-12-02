.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final PROLONG_ANIMATION_AT_END:I = 0x1

.field static final PROLONG_ANIMATION_AT_START:I = 0x2

.field private static final PROLONG_ANIMATION_DISABLED:I

.field static final TAG:Ljava/lang/String;

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mClearProlongedAnimation:Z

.field private mProlongAnimation:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field private mStackClip:I

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 83
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    .line 105
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 114
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 112
    return-void
.end method

.method private getAnimationFrameTime(Landroid/view/animation/Animation;J)J
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "currentTime"    # J

    .prologue
    .line 302
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 303
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 304
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    return-wide v0

    .line 306
    :cond_0
    return-wide p2
.end method

.method private getStartTimeCorrection()J
    .locals 4

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    .line 349
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private stepAnimation(J)Z
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_0

    .line 311
    return v5

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 314
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    move-result-wide v0

    .line 315
    .local v0, "animationFrameTime":J
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    .line 316
    .local v2, "hasMoreFrames":Z
    if-nez v2, :cond_2

    .line 317
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    if-eqz v3, :cond_3

    .line 326
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 327
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    if-ne v3, v6, :cond_4

    .line 328
    const/4 v2, 0x1

    .line 337
    .end local v2    # "hasMoreFrames":Z
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 338
    return v2

    .line 320
    .restart local v2    # "hasMoreFrames":Z
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 321
    const/4 v2, 0x1

    .line 317
    .local v2, "hasMoreFrames":Z
    goto :goto_0

    .line 330
    .local v2, "hasMoreFrames":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 258
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    move-result-wide v0

    .line 259
    .local v0, "animationFrameTime":J
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6, v0, v1, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 262
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 263
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    .line 265
    .local v2, "screenAnimation":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 270
    .local v4, "tmpFloats":[F
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 274
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x5

    aget v8, v4, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 282
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 283
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v6, :cond_2

    .line 284
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 291
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v5, v4, v5

    const/4 v7, 0x3

    aget v7, v4, v7

    .line 292
    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x4

    aget v9, v4, v9

    .line 291
    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 293
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 256
    return-void

    .end local v2    # "screenAnimation":Z
    .end local v4    # "tmpFloats":[F
    :cond_1
    move v2, v5

    .line 263
    goto :goto_0

    .line 288
    .restart local v2    # "screenAnimation":Z
    .restart local v4    # "tmpFloats":[F
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v7, v7, 0x5

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 183
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 190
    :cond_1
    iput v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    .line 181
    return-void
.end method

.method public clearThumbnail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyAfterTransaction(Landroid/view/SurfaceControl;)V

    .line 201
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 197
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAnimator="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "freezingScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 450
    const-string/jumbo v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 451
    const-string/jumbo v2, " animLayerAdjustment="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 452
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 456
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 457
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "animating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "animation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_3

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "XForm: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 463
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 465
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnail="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 467
    const-string/jumbo v2, " layer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailTransformation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 473
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    .line 474
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "App Win Anim #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 475
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method endProlongedAnimation()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    .line 484
    return-void
.end method

.method getStackClip()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;IIZI)V
    .locals 8
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z
    .param p5, "stackClip"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 124
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 125
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 128
    :cond_0
    const-wide/16 v6, 0x2710

    invoke-virtual {p1, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 130
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v2

    .line 131
    .local v2, "zorder":I
    const/4 v0, 0x0

    .line 132
    .local v0, "adj":I
    if-ne v2, v4, :cond_4

    .line 133
    const/16 v0, 0x3e8

    .line 138
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v3, v0, :cond_2

    .line 139
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 144
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 145
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 146
    iput p5, p0, Lcom/android/server/wm/AppWindowAnimator;->mStackClip:I

    .line 148
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 150
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v3, :cond_3

    .line 151
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 153
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    if-eqz v3, :cond_6

    .line 154
    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    .line 162
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_7

    .line 163
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->resetJustMovedInStack()V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 134
    .end local v1    # "i":I
    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 135
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_5
    move v3, v5

    .line 144
    goto :goto_1

    .line 156
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    goto :goto_2

    .line 119
    .restart local v1    # "i":I
    :cond_7
    return-void
.end method

.method public setDummyAnimation()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 170
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 171
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 167
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNullAnimation()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 176
    return-void
.end method

.method showAllWindowsLocked()Z
    .locals 5

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    .local v0, "NW":I
    const/4 v1, 0x0

    .end local v2    # "isAnimating":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 440
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 441
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v4

    or-int/2addr v2, v4

    .line 437
    .local v2, "isAnimating":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "isAnimating":Z
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
.end method

.method startProlongAnimation(I)V
    .locals 1
    .param p1, "prolongType"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mProlongAnimation:I

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mClearProlongedAnimation:Z

    .line 479
    return-void
.end method

.method stepAnimationLocked(JI)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "displayId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 355
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 358
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_0

    .line 363
    return v8

    .line 366
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v4, :cond_6

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 368
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_3

    .line 374
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    move-result-wide v0

    .line 375
    .local v0, "correction":J
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    add-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 376
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 377
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 379
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    add-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 381
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 383
    .end local v0    # "correction":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 386
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    .line 389
    :cond_4
    return v9

    .line 392
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 395
    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 396
    iput-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 399
    :cond_6
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 401
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_7

    .line 402
    return v8

    .line 405
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 406
    const-string/jumbo v5, "AppWindowToken"

    .line 405
    const/16 v6, 0x8

    invoke-virtual {v4, p0, v6, v5, p3}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 409
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 410
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v4, :cond_8

    .line 411
    iput v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 412
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 414
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_9

    .line 415
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_9

    .line 416
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 423
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 425
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 426
    .local v3, "numAllAppWinAnimators":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_a

    .line 427
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 430
    return v8
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 216
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 223
    :cond_0
    if-eqz p2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 227
    iget-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 232
    :goto_0
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 211
    :cond_1
    return-void

    .line 230
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_0
.end method

.method updateLayers()V
    .locals 8

    .prologue
    .line 237
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 238
    .local v5, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 239
    .local v0, "adj":I
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 240
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 241
    .local v3, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 242
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 243
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 244
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v6, v0

    iput v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 245
    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v6, v7, :cond_0

    .line 246
    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 249
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-eqz v6, :cond_2

    .line 252
    :cond_1
    :goto_1
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WallpaperController;->setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowLayersController;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_1

    .line 236
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    return-void
.end method

.class public Landroid/view/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# instance fields
.field final mNativeRenderNode:J

.field private final mOwningView:Landroid/view/View;

.field private mValid:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    .line 147
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owningView"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-direct {p0, p1}, Landroid/view/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 138
    iput-object p2, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 140
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-static {v2, v3, v0}, Landroid/view/RenderNode;->nRequestPositionUpdates(JLandroid/view/SurfaceView;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static adopt(J)Landroid/view/RenderNode;
    .locals 2
    .param p0, "nativePtr"    # J

    .prologue
    .line 171
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "owningView"    # Landroid/view/View;

    .prologue
    .line 161
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(Ljava/lang/String;Landroid/view/View;)V

    return-object v0
.end method

.method private static native nAddAnimator(JJ)V
.end method

.method private native nCreate(Ljava/lang/String;)J
.end method

.method private static native nDestroyRenderNode(J)V
.end method

.method private static native nEndAllAnimators(J)V
.end method

.method private static native nGetAlpha(J)F
.end method

.method private static native nGetCameraDistance(J)F
.end method

.method private static native nGetClipToOutline(J)Z
.end method

.method private static native nGetDebugSize(J)I
.end method

.method private static native nGetElevation(J)F
.end method

.method private static native nGetInverseTransformMatrix(JJ)V
.end method

.method private static native nGetPivotX(J)F
.end method

.method private static native nGetPivotY(J)F
.end method

.method private static native nGetRotation(J)F
.end method

.method private static native nGetRotationX(J)F
.end method

.method private static native nGetRotationY(J)F
.end method

.method private static native nGetScaleX(J)F
.end method

.method private static native nGetScaleY(J)F
.end method

.method private static native nGetTransformMatrix(JJ)V
.end method

.method private static native nGetTranslationX(J)F
.end method

.method private static native nGetTranslationY(J)F
.end method

.method private static native nGetTranslationZ(J)F
.end method

.method private static native nHasIdentityMatrix(J)Z
.end method

.method private static native nHasOverlappingRendering(J)Z
.end method

.method private static native nHasShadow(J)Z
.end method

.method private static native nIsPivotExplicitlySet(J)Z
.end method

.method private static native nOffsetLeftAndRight(JI)Z
.end method

.method private static native nOffsetTopAndBottom(JI)Z
.end method

.method private static native nOutput(J)V
.end method

.method private static native nRequestPositionUpdates(JLandroid/view/SurfaceView;)V
.end method

.method private static native nSetAlpha(JF)Z
.end method

.method private static native nSetAnimationMatrix(JJ)Z
.end method

.method private static native nSetBottom(JI)Z
.end method

.method private static native nSetCameraDistance(JF)Z
.end method

.method private static native nSetClipBounds(JIIII)Z
.end method

.method private static native nSetClipBoundsEmpty(J)Z
.end method

.method private static native nSetClipToBounds(JZ)Z
.end method

.method private static native nSetClipToOutline(JZ)Z
.end method

.method private static native nSetDisplayList(JJ)V
.end method

.method private static native nSetElevation(JF)Z
.end method

.method private static native nSetHasOverlappingRendering(JZ)Z
.end method

.method private static native nSetLayerPaint(JJ)Z
.end method

.method private static native nSetLayerType(JI)Z
.end method

.method private static native nSetLeft(JI)Z
.end method

.method private static native nSetLeftTopRightBottom(JIIII)Z
.end method

.method private static native nSetOutlineConvexPath(JJF)Z
.end method

.method private static native nSetOutlineEmpty(J)Z
.end method

.method private static native nSetOutlineNone(J)Z
.end method

.method private static native nSetOutlineRoundRect(JIIIIFF)Z
.end method

.method private static native nSetPivotX(JF)Z
.end method

.method private static native nSetPivotY(JF)Z
.end method

.method private static native nSetProjectBackwards(JZ)Z
.end method

.method private static native nSetProjectionReceiver(JZ)Z
.end method

.method private static native nSetRevealClip(JZFFF)Z
.end method

.method private static native nSetRight(JI)Z
.end method

.method private static native nSetRotation(JF)Z
.end method

.method private static native nSetRotationX(JF)Z
.end method

.method private static native nSetRotationY(JF)Z
.end method

.method private static native nSetScaleX(JF)Z
.end method

.method private static native nSetScaleY(JF)Z
.end method

.method private static native nSetStaticMatrix(JJ)Z
.end method

.method private static native nSetTop(JI)Z
.end method

.method private static native nSetTranslationX(JF)Z
.end method

.method private static native nSetTranslationY(JF)Z
.end method

.method private static native nSetTranslationZ(JF)Z
.end method


# virtual methods
.method public addAnimator(Landroid/view/RenderNodeAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 785
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_1
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/view/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nAddAnimator(JJ)V

    .line 789
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 784
    return-void
.end method

.method public discardDisplayList()V
    .locals 4

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetDisplayList(JJ)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    .line 216
    return-void
.end method

.method public end(Landroid/view/DisplayListCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->finishRecording()J

    move-result-wide v0

    .line 206
    .local v0, "displayList":J
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetDisplayList(JJ)V

    .line 207
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->recycle()V

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/RenderNode;->mValid:Z

    .line 204
    return-void
.end method

.method public endAllAnimators()V
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nEndAllAnimators(J)V

    .line 804
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 905
    :try_start_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nDestroyRenderNode(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 903
    return-void

    .line 906
    :catchall_0
    move-exception v0

    .line 907
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 906
    throw v0
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public getCameraDistance()F
    .locals 2

    .prologue
    .line 667
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    return v0
.end method

.method public getClipToOutline()Z
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDebugSize()I
    .locals 2

    .prologue
    .line 767
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetDebugSize(J)I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 251
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetInverseTransformMatrix(JJ)V

    .line 250
    return-void
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 247
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetTransformMatrix(JJ)V

    .line 246
    return-void
.end method

.method getNativeDisplayList()J
    .locals 2

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    return-wide v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 619
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 640
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .locals 2

    .prologue
    .line 556
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 577
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 598
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public hasIdentityMatrix()Z
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public hasShadow()Z
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPivotExplicitlySet()Z
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    return v0
.end method

.method public offsetLeftAndRight(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 740
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public offsetTopAndBottom(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 752
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method onRenderNodeDetached()V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/view/RenderNode;->discardDisplayList()V

    .line 775
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->onRenderNodeDetached(Landroid/view/RenderNode;)V

    .line 773
    :cond_0
    return-void
.end method

.method public output()V
    .locals 2

    .prologue
    .line 760
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nOutput(J)V

    .line 759
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 2
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .prologue
    .line 798
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_1
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 797
    return-void
.end method

.method public setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 386
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 373
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 374
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    .line 373
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0

    .line 374
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setBottom(I)Z
    .locals 2
    .param p1, "bottom"    # I

    .prologue
    .line 711
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public setCameraDistance(F)Z
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 658
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetCameraDistance(JF)Z

    move-result v0

    return v0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result v0

    return v0

    .line 270
    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetClipBounds(JIIII)Z

    move-result v0

    return v0
.end method

.method public setClipToBounds(Z)Z
    .locals 2
    .param p1, "clipToBounds"    # Z

    .prologue
    .line 281
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public setClipToOutline(Z)Z
    .locals 2
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 339
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public setElevation(F)Z
    .locals 2
    .param p1, "lift"    # F

    .prologue
    .line 428
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public setHasOverlappingRendering(Z)Z
    .locals 2
    .param p1, "hasOverlappingRendering"    # Z

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 263
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLayerType(I)Z
    .locals 2
    .param p1, "layerType"    # I

    .prologue
    .line 259
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public setLeft(I)Z
    .locals 2
    .param p1, "left"    # I

    .prologue
    .line 678
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public setLeftTopRightBottom(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 728
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public setOutline(Landroid/graphics/Outline;)Z
    .locals 8
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineNone(J)Z

    move-result v0

    return v0

    .line 315
    :cond_0
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineEmpty(J)Z

    move-result v0

    return v0

    .line 319
    :pswitch_1
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 320
    iget-object v4, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Outline;->mRadius:F

    iget v7, p1, Landroid/graphics/Outline;->mAlpha:F

    .line 319
    invoke-static/range {v0 .. v7}, Landroid/view/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    return v0

    .line 322
    :pswitch_2
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    .line 323
    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    .line 322
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->nSetOutlineConvexPath(JJF)Z

    move-result v0

    return v0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPivotX(F)Z
    .locals 2
    .param p1, "pivotX"    # F

    .prologue
    .line 610
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public setPivotY(F)Z
    .locals 2
    .param p1, "pivotY"    # F

    .prologue
    .line 631
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public setProjectBackwards(Z)Z
    .locals 2
    .param p1, "shouldProject"    # Z

    .prologue
    .line 292
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public setProjectionReceiver(Z)Z
    .locals 2
    .param p1, "shouldRecieve"    # Z

    .prologue
    .line 301
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public setRevealClip(ZFFF)Z
    .locals 6
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .prologue
    .line 351
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public setRight(I)Z
    .locals 2
    .param p1, "right"    # I

    .prologue
    .line 700
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public setRotation(F)Z
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 505
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationX(F)Z
    .locals 2
    .param p1, "rotationX"    # F

    .prologue
    .line 526
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationY(F)Z
    .locals 2
    .param p1, "rotationY"    # F

    .prologue
    .line 547
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleX(F)Z
    .locals 2
    .param p1, "scaleX"    # F

    .prologue
    .line 568
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleY(F)Z
    .locals 2
    .param p1, "scaleY"    # F

    .prologue
    .line 589
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public setStaticMatrix(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public setTop(I)Z
    .locals 2
    .param p1, "top"    # I

    .prologue
    .line 689
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public setTranslationX(F)Z
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 444
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationY(F)Z
    .locals 2
    .param p1, "translationY"    # F

    .prologue
    .line 465
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationZ(F)Z
    .locals 2
    .param p1, "translationZ"    # F

    .prologue
    .line 484
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public start(II)Landroid/view/DisplayListCanvas;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 193
    invoke-static {p0, p1, p2}, Landroid/view/DisplayListCanvas;->obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    return-object v0
.end method

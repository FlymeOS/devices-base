.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractionStateHandler"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 345
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 341
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    .line 346
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 347
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    const v2, 0x1050018

    .line 347
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 350
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    .line 351
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 352
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 353
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 442
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    .line 441
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v2, 0x3

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 359
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    if-nez v0, :cond_2

    .line 392
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    const/4 v5, 0x0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    .line 401
    :cond_0
    return v4

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    sub-float v6, v0, v5

    .line 396
    .local v6, "deltaScale":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 397
    iput-boolean v9, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    .line 398
    return v9

    .line 404
    .end local v6    # "deltaScale":F
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v7

    .line 405
    .local v7, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    mul-float v8, v7, v0

    .line 410
    .local v8, "targetScale":F
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_3

    cmpl-float v0, v8, v7

    if-lez v0, :cond_3

    .line 412
    const/high16 v1, 0x40a00000    # 5.0f

    .line 423
    .local v1, "scale":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 424
    .local v2, "pivotX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 425
    .local v3, "pivotY":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScale(FFFZI)Z

    .line 427
    return v9

    .line 413
    .end local v1    # "scale":F
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v8, v0

    if-gez v0, :cond_4

    cmpg-float v0, v8, v7

    if-gez v0, :cond_4

    .line 415
    const/high16 v1, 0x40000000    # 2.0f

    .line 413
    .restart local v1    # "scale":F
    goto :goto_0

    .line 420
    .end local v1    # "scale":F
    :cond_4
    move v1, v8

    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    .line 436
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 378
    return v2

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    .line 385
    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegionCenter(FFI)V

    .line 386
    return v2
.end method

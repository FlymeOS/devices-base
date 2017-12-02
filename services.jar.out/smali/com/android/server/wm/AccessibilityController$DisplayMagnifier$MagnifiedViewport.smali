.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# instance fields
.field private final mBorderWidth:F

.field private final mCircularPath:Landroid/graphics/Path;

.field private final mDrawBorderInset:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mOldMagnificationRegion:Landroid/graphics/Region;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V
    .locals 6
    .param p1, "this$1"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 419
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    .line 422
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 424
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    .line 426
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 428
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    .line 429
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 433
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 446
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    .line 447
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 448
    const v2, 0x1050092

    .line 447
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    .line 449
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 450
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 451
    new-instance v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 453
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get1(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 456
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v1, 0x2

    .line 457
    .local v0, "centerXY":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 462
    .end local v0    # "centerXY":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 445
    return-void

    .line 459
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    goto :goto_0
.end method

.method private populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 643
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 644
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 645
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 646
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 647
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v5, :cond_1

    .line 645
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_1
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 640
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 636
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 631
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 465
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 617
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 618
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 619
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 615
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotationChangedLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 597
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get3(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    move-result-wide v4

    long-to-float v3, v4

    .line 598
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v4

    .line 597
    mul-float/2addr v3, v4

    float-to-long v0, v3

    .line 599
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    .line 600
    const/4 v4, 0x5

    .line 599
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 601
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 603
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 590
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 30

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 486
    .local v5, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 488
    .local v6, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get6(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v15

    .line 490
    .local v15, "availableBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    if-eqz v3, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    invoke-virtual {v15, v3, v15}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get9(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v21

    .line 497
    .local v21, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    .line 500
    .local v26, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->clear()V

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 503
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 504
    .local v25, "visibleWindowCount":I
    add-int/lit8 v18, v25, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_3

    .line 505
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    .line 506
    .local v29, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7eb

    if-ne v3, v4, :cond_2

    .line 504
    :cond_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 512
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    .line 513
    .local v20, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v24

    .line 515
    .local v24, "touchableRegion":Landroid/graphics/Region;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v23

    .line 517
    .local v23, "touchableFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    .line 519
    .local v28, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 520
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 521
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v27

    .line 523
    .local v27, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    .line 524
    move-object/from16 v0, v28

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    .line 523
    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v22

    .line 527
    .local v22, "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 528
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 529
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v15, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 540
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get7(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    .line 541
    .local v2, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 542
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 543
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 545
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v13

    .line 547
    .local v13, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 548
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 549
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 555
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v13    # "accountedFrame":Landroid/graphics/Rect;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v23    # "touchableFrame":Landroid/graphics/Rect;
    .end local v24    # "touchableRegion":Landroid/graphics/Region;
    .end local v27    # "windowBounds":Landroid/graphics/Region;
    .end local v28    # "windowFrame":Landroid/graphics/RectF;
    .end local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->clear()V

    .line 557
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v10, v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v11, v6, v3

    .line 559
    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 557
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v19, 0x0

    .line 563
    .local v19, "magnifiedChanged":Z
    :goto_2
    if-eqz v19, :cond_4

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get5(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v16

    .line 566
    .local v16, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v3, :cond_7

    .line 567
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 568
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 569
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v7, v5, v7

    .line 570
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v8, v6, v8

    .line 568
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 581
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 582
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v14

    .line 583
    .local v14, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-static {v3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v3

    iput-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    .line 585
    const/4 v4, 0x1

    .line 584
    invoke-virtual {v3, v4, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 483
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_4
    return-void

    .line 535
    .end local v19    # "magnifiedChanged":Z
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .restart local v23    # "touchableFrame":Landroid/graphics/Rect;
    .restart local v24    # "touchableRegion":Landroid/graphics/Region;
    .restart local v27    # "windowBounds":Landroid/graphics/Region;
    .restart local v28    # "windowFrame":Landroid/graphics/RectF;
    .restart local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 536
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_1

    .line 562
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v23    # "touchableFrame":Landroid/graphics/Rect;
    .end local v24    # "touchableRegion":Landroid/graphics/Region;
    .end local v27    # "windowBounds":Landroid/graphics/Region;
    .end local v28    # "windowFrame":Landroid/graphics/RectF;
    .end local v29    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    const/16 v19, 0x1

    goto :goto_2

    .line 573
    .restart local v16    # "dirtyRect":Landroid/graphics/Rect;
    .restart local v19    # "magnifiedChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get8(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v17

    .line 574
    .local v17, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 576
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 577
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 608
    if-eqz p1, :cond_0

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 607
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 470
    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get2(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    .line 478
    const/4 v1, 0x5

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 469
    :cond_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    goto :goto_0
.end method

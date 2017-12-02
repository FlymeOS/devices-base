.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field final mDimLayerController:Lcom/android/server/wm/DimLayerController;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mNonResizeableRegion:Landroid/graphics/Region;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 65
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 66
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 67
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 68
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 69
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 70
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 72
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 74
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 99
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 102
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 107
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 108
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 109
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 131
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 135
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 137
    new-instance v0, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 138
    new-instance v0, Lcom/android/server/wm/DimLayerController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DimLayerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    .line 129
    return-void
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "rectLeft"    # F
    .param p2, "rectTop"    # F
    .param p3, "displayWidth"    # F
    .param p4, "displayHeight"    # F
    .param p5, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 580
    packed-switch p0, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 582
    :pswitch_0
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 585
    :pswitch_1
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 586
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 587
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 590
    :pswitch_2
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 593
    :pswitch_3
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 594
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 595
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .locals 6
    .param p0, "rotation"    # I
    .param p1, "displayWidth"    # F
    .param p2, "displayHeight"    # F
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    move v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 574
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 572
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 566
    sub-int v0, p1, p0

    .line 567
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 568
    :cond_0
    return v0
.end method

.method private getLogicalDisplayRect(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 250
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 251
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 254
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 255
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 245
    :cond_1
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->animateDimLayers()Z

    move-result v0

    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attachStack: HOME_STACK_ID (0) not first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 271
    :cond_1
    if-eqz p2, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 264
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method canAddToastWindowForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "alreadyHasToastWindow":Z
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 726
    .local v3, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 727
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 728
    .local v2, "window":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 729
    return v4

    .line 731
    :cond_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 732
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isRemovedOrHidden()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 726
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 736
    .end local v2    # "window":Lcom/android/server/wm/WindowState;
    :cond_3
    if-eqz v0, :cond_4

    const/4 v4, 0x0

    :cond_4
    return v4
.end method

.method checkForDeferredActions()V
    .locals 11

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "animating":Z
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 527
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 528
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 529
    const/4 v0, 0x1

    .line 526
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 531
    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    if-eqz v9, :cond_2

    .line 532
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    .line 534
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 535
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_0

    .line 536
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 537
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 538
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "tokenNdx":I
    :goto_2
    if-ltz v6, :cond_4

    .line 539
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 540
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v9, :cond_3

    .line 541
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    .line 538
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 535
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 547
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v9, :cond_6

    .line 548
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 524
    :cond_6
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayerController;->close()V

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    .line 509
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Display: mDisplayId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "init="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_0

    .line 607
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v6, :cond_3

    .line 609
    :cond_0
    :goto_0
    const-string/jumbo v5, " base="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v5, :cond_2

    .line 614
    const-string/jumbo v5, " noscale"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :cond_2
    const-string/jumbo v5, " cur="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 618
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 619
    const-string/jumbo v5, " app="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 621
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 622
    const-string/jumbo v5, " rng="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 624
    const-string/jumbo v5, "-"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 625
    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 626
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "deferred="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 627
    const-string/jumbo v5, " layoutNeeded="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 629
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 630
    const-string/jumbo v5, "  Application tokens in top down Z order:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_4

    .line 632
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 633
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 631
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 608
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stackNdx":I
    :cond_3
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    .line 636
    .restart local v2    # "stackNdx":I
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 637
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 638
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 639
    const-string/jumbo v5, "  Exiting tokens:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 641
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 642
    .local v4, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v5, "  Exiting #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 643
    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 644
    const/16 v5, 0x3a

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 645
    const-string/jumbo v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 640
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 648
    .end local v0    # "i":I
    .end local v4    # "token":Lcom/android/server/wm/WindowToken;
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 649
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 650
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 651
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 600
    return-void
.end method

.method findTaskForControlPoint(II)Lcom/android/server/wm/Task;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x0

    .line 352
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v7, 0x1e

    invoke-static {v7, v6}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 353
    .local v0, "delta":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 354
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 355
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v6, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 384
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-object v9

    .line 358
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 359
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 360
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 361
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    return-object v9

    .line 371
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 372
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    neg-int v7, v0

    neg-int v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 373
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 374
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 375
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 376
    return-object v3

    .line 380
    :cond_3
    return-object v9

    .line 359
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 353
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 259
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getDockedStackLocked()Lcom/android/server/wm/TaskStack;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 664
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    return-object v0

    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 673
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    return-object v0

    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    .line 195
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 233
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 234
    .local v2, "orientation":I
    if-eq v2, v5, :cond_0

    .line 235
    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    .line 236
    .local v5, "rotated":Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 237
    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 238
    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 239
    .local v7, "width":I
    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    .line 240
    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 241
    .local v0, "height":I
    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    .line 242
    .local v6, "top":I
    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    return-void

    .line 235
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 236
    .restart local v5    # "rotated":Z
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v4    # "physWidth":I
    goto :goto_1

    .line 237
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .restart local v3    # "physHeight":I
    goto :goto_2
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 203
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_0

    .line 204
    return-object v1

    .line 201
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "numStacks":I
    const/4 v1, 0x0

    .local v1, "stackNdx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    return-object v2
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 8
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 680
    const/4 v3, 0x0

    .line 681
    .local v3, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v5, p1

    .line 682
    .local v5, "x":I
    float-to-int v6, p2

    .line 684
    .local v6, "y":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 685
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 686
    .local v4, "window":Lcom/android/server/wm/WindowState;
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 687
    .local v0, "flags":I
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_1

    .line 684
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 690
    :cond_1
    and-int/lit8 v7, v0, 0x10

    if-nez v7, :cond_0

    .line 694
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 695
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 699
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 701
    and-int/lit8 v2, v0, 0x28

    .line 702
    .local v2, "touchFlags":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_0

    .line 703
    :cond_2
    move-object v3, v4

    .line 708
    .end local v0    # "flags":I
    .end local v2    # "touchFlags":I
    .end local v3    # "touchedWin":Lcom/android/server/wm/WindowState;
    .end local v4    # "window":Lcom/android/server/wm/WindowState;
    :cond_3
    return-object v3
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method initializeDisplayBaseInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 222
    .local v0, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 226
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 227
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    return-void
.end method

.method isAnimating()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 517
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/4 v2, 0x1

    return v2

    .line 515
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 521
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v3
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->isDimming()Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    const/4 v5, 0x4

    .line 280
    iget v2, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_2

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moving stack that was not added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    :cond_1
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    .local v0, "addIndex":I
    :goto_0
    if-eqz p2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isStackVisibleLocked(I)Z

    move-result v2

    .line 292
    if-eqz v2, :cond_4

    .line 294
    iget v2, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v2, v5, :cond_4

    .line 297
    add-int/lit8 v0, v0, -0x1

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 299
    .local v1, "topStack":Lcom/android/server/wm/TaskStack;
    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v2, v5, :cond_4

    .line 300
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pinned stack isn\'t top stack??? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v0    # "addIndex":I
    .end local v1    # "topStack":Lcom/android/server/wm/TaskStack;
    :cond_2
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring move of always-on-top stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to bottom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 290
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "addIndex":I
    goto :goto_0

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method overridePlayingAppAnimationsLw(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    .line 715
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 714
    :cond_0
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->resetDimming()V

    .line 495
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;I)V

    .line 557
    invoke-static {p2, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 558
    .local v0, "deltaRotation":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 561
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 562
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 552
    return-void
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 11
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v10, 0x34

    .line 741
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iget v5, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v5, v6, :cond_1

    .line 742
    :cond_0
    return-void

    .line 744
    :cond_1
    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 745
    .local v1, "lostFocusUid":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 746
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 747
    .local v3, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 748
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 749
    .local v2, "window":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v5, v1, :cond_2

    .line 750
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 751
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 752
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 754
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 751
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 747
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "window":Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .locals 16
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v14, 0x1e

    invoke-static {v14, v13}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 390
    .local v2, "delta":I
    const/4 v1, 0x0

    .line 391
    .local v1, "addBackFocusedTask":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v13}, Landroid/graphics/Region;->setEmpty()V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .local v7, "stackNdx":I
    :goto_0
    if-ltz v7, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 394
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 395
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    .local v9, "taskNdx":I
    :goto_1
    if-ltz v9, :cond_4

    .line 396
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    .line 397
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v11

    .line 398
    .local v11, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v13}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 413
    move-object/from16 v0, p1

    if-ne v8, v0, :cond_0

    .line 414
    const/4 v1, 0x1

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 418
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    .line 419
    .local v5, "isFreeformed":Z
    move-object/from16 v0, p1

    if-ne v8, v0, :cond_1

    if-eqz v5, :cond_3

    .line 420
    :cond_1
    if-eqz v5, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    neg-int v14, v2

    neg-int v15, v2

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 433
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v13}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 392
    .end local v5    # "isFreeformed":Z
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 395
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 443
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "taskNdx":I
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v11    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    if-eqz v1, :cond_7

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 446
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 447
    .local v4, "inputMethod":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 454
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    .line 456
    .local v12, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 454
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 459
    .end local v12    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 464
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v13, :cond_b

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    .line 387
    :cond_b
    return-void
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded()V

    .line 503
    return-void
.end method

.method switchUserStacks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 471
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 472
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 473
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 471
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 481
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->switchUser()V

    .line 480
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 469
    :cond_2
    return-void
.end method

.method taskIdFromPoint(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 320
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 321
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 322
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 323
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 327
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 328
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 329
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 330
    .local v5, "win":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_3

    .line 327
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 338
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 339
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 340
    iget v6, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return v6

    .line 344
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v6, -0x1

    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

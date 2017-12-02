.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"


# instance fields
.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftMouseButtonReleased:Z

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mShow:Z

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 127
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 125
    return-void
.end method

.method private isFillingScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xa05

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maximizeWindow()V
    .locals 4

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 355
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    .line 357
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "Cannot change task workspace."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passedSlop(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 253
    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCaptionVisibility()V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFillingScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 346
    .local v0, "invisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    return-void

    .line 345
    .end local v0    # "invisible":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "invisible":Z
    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x2

    .line 267
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    if-ge p2, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 266
    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 401
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 390
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 385
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 396
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptionShowing()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method public onConfigurationChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 262
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 260
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    .line 131
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 159
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 160
    .local v1, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 167
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 309
    .local v0, "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 327
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 328
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 327
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Window;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 304
    return-void

    .line 312
    .end local v0    # "captionHeight":I
    :cond_1
    const/4 v0, 0x0

    .line 313
    .restart local v0    # "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 322
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 321
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 290
    .local v5, "captionHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 299
    .end local v5    # "captionHeight":I
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 300
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 299
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 282
    return-void

    .line 288
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "captionHeight":I
    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 420
    const/4 v1, 0x0

    .line 419
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->dispatchOnWindowDismissed(ZZ)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 189
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 190
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v2, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    :cond_1
    return v3

    .line 192
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v4, :cond_2

    .line 194
    return v2

    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 200
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 201
    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    .line 202
    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    goto :goto_0

    .line 207
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/view/View;->startMovingTask(FF)Z

    goto :goto_0

    .line 212
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    if-nez v2, :cond_0

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 217
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    goto :goto_0

    .line 225
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-eqz v4, :cond_0

    .line 229
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 230
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v4, :cond_5

    :goto_1
    return v2

    :cond_5
    move v2, v3

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, "action":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 178
    :cond_1
    return v2

    .line 180
    .end local v0    # "action":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public removeContentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 372
    :cond_0
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 2
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 138
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 139
    invoke-virtual {p1}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 149
    const v0, 0x1020364

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    .line 150
    const v0, 0x1020365

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 136
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

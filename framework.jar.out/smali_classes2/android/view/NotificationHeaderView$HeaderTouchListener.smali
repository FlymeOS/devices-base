.class public Landroid/view/NotificationHeaderView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationHeaderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private final mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private mTrackGesture:Z

.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method static synthetic -wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    .prologue
    .line 322
    iput-object p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    .line 322
    return-void
.end method

.method private addRectAroundViewView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 344
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method private addWidthRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 335
    .local v0, "r":Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 336
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 337
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 338
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 339
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method private getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 348
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v1, v3, v2

    .line 349
    .local v1, "size":F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 350
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 351
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 356
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 357
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 358
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 359
    return-object v0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private isInside(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 394
    .local v1, "r":Landroid/graphics/Rect;
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    iput p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    .line 396
    iput p2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    .line 397
    const/4 v2, 0x1

    return v2

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public bindTouchRects()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get5(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    .line 329
    invoke-direct {p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addWidthRect()V

    .line 330
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    .line 325
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 365
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 366
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    return v2

    .line 368
    :pswitch_0
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 369
    invoke-direct {p0, v0, v1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 371
    return v3

    .line 375
    :pswitch_1
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_0

    .line 376
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 377
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 378
    :cond_1
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_0

    .line 383
    :pswitch_2
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

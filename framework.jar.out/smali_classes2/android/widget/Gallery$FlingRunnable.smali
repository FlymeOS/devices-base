.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method static synthetic -get0(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Gallery;

    .prologue
    .line 1462
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1462
    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1505
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->-wrap1(Landroid/widget/Gallery;)V

    .line 1498
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1511
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1512
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1513
    return-void

    .line 1516
    :cond_0
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5, v6}, Landroid/widget/Gallery;->-set1(Landroid/widget/Gallery;Z)Z

    .line 1518
    iget-object v3, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1519
    .local v3, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1520
    .local v1, "more":Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1524
    .local v4, "x":I
    iget v5, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1527
    .local v0, "delta":I
    if-lez v0, :cond_3

    .line 1529
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-get1(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    :goto_0
    invoke-static {v6, v5}, Landroid/widget/Gallery;->-set0(Landroid/widget/Gallery;I)I

    .line 1533
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->-get2(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->-get3(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1544
    :goto_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1546
    if-eqz v1, :cond_1

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-get4(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1550
    :cond_1
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1509
    :goto_2
    return-void

    .line 1530
    :cond_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_0

    .line 1536
    :cond_3
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1537
    .local v2, "offsetToLast":I
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-get1(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    :goto_3
    invoke-static {v6, v5}, Landroid/widget/Gallery;->-set0(Landroid/widget/Gallery;I)I

    .line 1541
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->-get3(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->-get2(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1538
    :cond_4
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1547
    .end local v2    # "offsetToLast":I
    :cond_5
    iput v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1548
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 1484
    if-nez p1, :cond_0

    return-void

    .line 1486
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1488
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1489
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v2}, Landroid/widget/Gallery;->-get0(Landroid/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1490
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1483
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1472
    if-nez p1, :cond_0

    return-void

    .line 1474
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1476
    if-gez p1, :cond_1

    move v1, v6

    .line 1477
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1478
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1480
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1471
    return-void

    .end local v1    # "initialX":I
    :cond_1
    move v1, v2

    .line 1476
    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1495
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1493
    return-void
.end method

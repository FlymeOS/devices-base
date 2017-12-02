.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Landroid/util/SparseIntArray;

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createDefaultLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    .line 415
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 414
    return-void
.end method

.method private declared-synchronized createDefaultLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    monitor-enter p0

    .line 467
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 468
    .local v0, "context":Landroid/content/Context;
    iget v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_0

    .line 470
    :try_start_1
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 472
    .local v3, "firstView":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 473
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 471
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 474
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    .end local v3    # "firstView":Landroid/view/View;
    :goto_0
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 484
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 485
    const v6, 0x10900c2

    .line 486
    const/4 v7, 0x0

    .line 484
    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 487
    .local v4, "loadingTextView":Landroid/widget/TextView;
    iget v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHeight(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 488
    return-object v4

    .line 475
    .end local v4    # "loadingTextView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 476
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 477
    .local v1, "density":F
    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 478
    const-string/jumbo v5, "RemoteViewsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error inflating first RemoteViews"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "density":F
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 3
    .param p1, "typeId"    # I

    .prologue
    const/4 v2, -0x1

    .line 448
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 449
    .local v0, "mappedTypeId":I
    if-ne v0, v2, :cond_0

    .line 451
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 452
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    :cond_0
    return v0
.end method

.method public isViewTypeInRange(I)Z
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    .line 459
    .local v0, "mappedType":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 428
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 431
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 432
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 433
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 434
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 435
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 436
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 427
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .prologue
    .line 419
    monitor-enter p1

    .line 420
    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 421
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 422
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 423
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 418
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "loadingView"    # Landroid/widget/RemoteViews;
    .param p2, "firstView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 440
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 441
    if-eqz p2, :cond_0

    .line 442
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 443
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 439
    :cond_0
    return-void
.end method

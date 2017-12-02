.class Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private final mIndexMetaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndexRemoteViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicesToLoad:Landroid/util/SparseBooleanArray;

.field private mLastRequestedIndex:I

.field private final mMaxCount:I

.field private final mMaxCountSlack:I

.field private final mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private final mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxCacheSize"    # I

    .prologue
    const/4 v2, -0x1

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 524
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 533
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    .line 537
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    .line 563
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    .line 564
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 566
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 567
    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 562
    return-void
.end method

.method private getFarthestPositionFrom(I[I)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "visibleWindow"    # [I

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, "maxDist":I
    const/4 v4, -0x1

    .line 642
    .local v4, "maxDistIndex":I
    const/4 v6, 0x0

    .line 643
    .local v6, "maxDistNotVisible":I
    const/4 v5, -0x1

    .line 644
    .local v5, "maxDistIndexNotVisible":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 645
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 646
    .local v2, "index":I
    sub-int v7, v2, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 647
    .local v0, "dist":I
    if-le v0, v6, :cond_0

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_0

    .line 650
    move v5, v2

    .line 651
    move v6, v0

    .line 653
    :cond_0
    if-lt v0, v3, :cond_1

    .line 656
    move v4, v2

    .line 657
    move v3, v0

    .line 644
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 660
    .end local v0    # "dist":I
    .end local v2    # "index":I
    :cond_2
    const/4 v7, -0x1

    if-le v5, v7, :cond_3

    .line 661
    return v5

    .line 663
    :cond_3
    return v4
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .locals 4

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 629
    .local v1, "mem":I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 630
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 631
    .local v2, "v":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    add-int/2addr v1, v3

    .line 629
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 635
    .end local v2    # "v":Landroid/widget/RemoteViews;
    :cond_1
    return v1
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .locals 4

    .prologue
    .line 619
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 618
    return-void

    .line 620
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 619
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 733
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 730
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 615
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    return-object v0
.end method

.method public getNextIndexToLoad()I
    .locals 5

    .prologue
    .line 712
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 714
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    .line 715
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 717
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 719
    :cond_0
    if-gez v0, :cond_1

    .line 720
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    .line 722
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 723
    .local v1, "key":I
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 724
    return v1

    .line 712
    .end local v0    # "index":I
    .end local v1    # "key":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 612
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;J[I)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .param p5, "visibleWindow"    # [I

    .prologue
    .line 572
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    if-lt v3, v4, :cond_0

    .line 573
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 577
    :cond_0
    iget v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 578
    .local v1, "pruneFromPosition":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    move-result v3

    const/high16 v4, 0x200000

    if-lt v3, v4, :cond_1

    .line 584
    invoke-direct {p0, v1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v2

    .line 588
    .local v2, "trimIndex":I
    if-gez v2, :cond_3

    .line 596
    .end local v2    # "trimIndex":I
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 597
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    if-eqz v0, :cond_4

    .line 598
    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 602
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    return-void

    .line 577
    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v1    # "pruneFromPosition":I
    :cond_2
    move v1, p1

    .restart local v1    # "pruneFromPosition":I
    goto :goto_0

    .line 592
    .restart local v2    # "trimIndex":I
    :cond_3
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 600
    .end local v2    # "trimIndex":I
    .restart local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    invoke-direct {v4, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 674
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    if-gt v6, p1, :cond_0

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    if-gt p1, v6, :cond_0

    .line 675
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    add-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    .line 676
    .local v0, "center":I
    sub-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    if-ge v6, v7, :cond_0

    .line 677
    return v8

    .line 681
    .end local v0    # "center":I
    :cond_0
    const/4 v1, 0x0

    .line 682
    .local v1, "count":I
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v7

    .line 683
    :try_start_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget v1, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 685
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v7

    .line 687
    :try_start_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 688
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 689
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 682
    .end local v5    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 694
    .restart local v5    # "i":I
    :cond_2
    :try_start_2
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v4, v6, 0x2

    .line 695
    .local v4, "halfMaxCount":I
    sub-int v6, p1, v4

    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 696
    add-int v6, p1, v4

    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 697
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 698
    .local v2, "effectiveLowerBound":I
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    add-int/lit8 v8, v1, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 699
    .local v3, "effectiveUpperBound":I
    move v5, v2

    :goto_1
    if-gt v5, v3, :cond_5

    .line 700
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 699
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 702
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 685
    .end local v2    # "effectiveLowerBound":I
    .end local v3    # "effectiveUpperBound":I
    .end local v4    # "halfMaxCount":I
    .end local v5    # "i":I
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v2    # "effectiveLowerBound":I
    .restart local v3    # "effectiveUpperBound":I
    .restart local v4    # "halfMaxCount":I
    .restart local v5    # "i":I
    :cond_5
    monitor-exit v7

    .line 706
    const/4 v6, 0x1

    return v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 667
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 668
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 666
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 741
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 742
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 743
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 744
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 745
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 746
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 736
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

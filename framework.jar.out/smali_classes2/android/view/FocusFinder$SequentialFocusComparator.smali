.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private final mFocusables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsConnectedTo:Landroid/util/SparseBooleanArray;

.field private mIsLayoutRtl:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    .line 619
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    .line 622
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    .line 623
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    .line 624
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 617
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$SequentialFocusComparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>()V

    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 735
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 736
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 734
    return-void
.end method

.method private setHeadOfChain(Landroid/view/View;)V
    .locals 4
    .param p1, "head"    # Landroid/view/View;

    .prologue
    .line 664
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    .line 666
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 667
    .local v0, "otherHead":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 668
    if-ne v0, p1, :cond_0

    .line 669
    return-void

    .line 673
    :cond_0
    move-object v1, p1

    .line 674
    move-object p1, v0

    .line 676
    :cond_1
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 663
    .end local v0    # "otherHead":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 681
    if-ne p1, p2, :cond_0

    .line 682
    return v6

    .line 686
    :cond_0
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 687
    .local v0, "firstHead":Landroid/view/View;
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 688
    .local v1, "secondHead":Landroid/view/View;
    if-ne v0, v1, :cond_4

    if-eqz v0, :cond_4

    .line 689
    if-ne p1, v0, :cond_1

    .line 690
    return v3

    .line 691
    :cond_1
    if-ne p2, v0, :cond_2

    .line 692
    return v2

    .line 693
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v4

    invoke-static {v4}, Landroid/view/FocusFinder;->-wrap0(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    return v3

    .line 696
    :cond_3
    return v2

    .line 699
    :cond_4
    if-eqz v0, :cond_5

    .line 700
    move-object p1, v0

    .line 702
    :cond_5
    if-eqz v1, :cond_6

    .line 703
    move-object p2, v1

    .line 707
    :cond_6
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v4}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 708
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 710
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_7

    .line 711
    return v3

    .line 712
    :cond_7
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_8

    .line 713
    return v2

    .line 714
    :cond_8
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_a

    .line 715
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_9

    :goto_0
    return v2

    :cond_9
    move v2, v3

    goto :goto_0

    .line 716
    :cond_a
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_c

    .line 717
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_b

    :goto_1
    return v3

    :cond_b
    move v3, v2

    goto :goto_1

    .line 718
    :cond_c
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_d

    .line 719
    return v3

    .line 720
    :cond_d
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_e

    .line 721
    return v2

    .line 722
    :cond_e
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_10

    .line 723
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_f

    :goto_2
    return v2

    :cond_f
    move v2, v3

    goto :goto_2

    .line 724
    :cond_10
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_12

    .line 725
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_11

    :goto_3
    return v3

    :cond_11
    move v3, v2

    goto :goto_3

    .line 730
    :cond_12
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    .prologue
    .line 680
    check-cast p1, Landroid/view/View;

    .end local p1    # "first":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "second":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 628
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 629
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 630
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 626
    return-void
.end method

.method public setFocusables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 643
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 644
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    .line 645
    .local v1, "id":I
    invoke-static {v1}, Landroid/view/FocusFinder;->-wrap0(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v2

    .line 649
    .local v2, "nextId":I
    invoke-static {v2}, Landroid/view/FocusFinder;->-wrap0(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 642
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 654
    .end local v1    # "id":I
    .end local v2    # "nextId":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 656
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v2

    .line 657
    .restart local v2    # "nextId":I
    invoke-static {v2}, Landroid/view/FocusFinder;->-wrap0(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 654
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 658
    :cond_4
    invoke-direct {p0, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    goto :goto_2

    .line 641
    .end local v2    # "nextId":I
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public setIsLayoutRtl(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    .line 637
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 634
    iput-object p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 633
    return-void
.end method

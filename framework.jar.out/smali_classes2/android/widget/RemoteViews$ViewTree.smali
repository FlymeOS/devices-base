.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p1
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 3551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3552
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 3551
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private addViewChild(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3607
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3608
    new-instance v3, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    .line 3609
    .local v3, "tree":Landroid/widget/RemoteViews$ViewTree;
    iget-object v5, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    move-object v2, v3

    .line 3615
    .end local v3    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .local v2, "target":Landroid/widget/RemoteViews$ViewTree;
    :goto_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3616
    iget-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 3617
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    move-object v4, p1

    .line 3618
    nop

    nop

    .line 3619
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3620
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3621
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 3620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3612
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "target":Landroid/widget/RemoteViews$ViewTree;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_0
    move-object v2, p0

    .restart local v2    # "target":Landroid/widget/RemoteViews$ViewTree;
    goto :goto_0

    .line 3602
    :cond_1
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .prologue
    .line 3595
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3598
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 3599
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3594
    return-void
.end method

.method public createTree()V
    .locals 4

    .prologue
    .line 3556
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 3557
    return-void

    .line 3560
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 3561
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3562
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 3563
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3564
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3565
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 3564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3555
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 3587
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 3588
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 3590
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 3591
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    goto :goto_0
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 3571
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 3572
    return-object p0

    .line 3574
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 3575
    return-object v4

    .line 3577
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tree$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$ViewTree;

    .line 3578
    .local v1, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 3579
    .local v0, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_2

    .line 3580
    return-object v0

    .line 3583
    .end local v0    # "result":Landroid/widget/RemoteViews$ViewTree;
    .end local v1    # "tree":Landroid/widget/RemoteViews$ViewTree;
    :cond_3
    return-object v4
.end method

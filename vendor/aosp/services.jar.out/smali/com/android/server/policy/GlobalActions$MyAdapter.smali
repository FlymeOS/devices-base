.class Lcom/android/server/policy/GlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 617
    const/4 v1, 0x0

    .line 619
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 620
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 622
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 619
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/GlobalActions$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 647
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 648
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 654
    :cond_1
    if-ne v1, p1, :cond_2

    .line 655
    return-object v0

    .line 657
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 646
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 661
    const-string/jumbo v5, " out of range of showable actions"

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 662
    const-string/jumbo v5, ", filtered count="

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 662
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    const-string/jumbo v5, ", keyguardshowing="

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    const-string/jumbo v5, ", provisioned="

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 669
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    .line 674
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method

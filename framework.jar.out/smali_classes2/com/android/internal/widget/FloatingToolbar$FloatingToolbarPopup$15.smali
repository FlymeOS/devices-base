.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$overflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$overflowPanel"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1378
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 1376
    :cond_0
    return-void
.end method

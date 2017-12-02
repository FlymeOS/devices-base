.class Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 330
    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 329
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    return-object v1
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-static {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->-get0(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 346
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    :cond_0
    return v1

    .line 348
    .end local v0    # "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    :cond_1
    return v1
.end method

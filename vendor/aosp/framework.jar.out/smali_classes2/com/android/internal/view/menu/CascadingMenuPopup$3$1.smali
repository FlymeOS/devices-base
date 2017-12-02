.class Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup$3;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/view/menu/CascadingMenuPopup$3;
    .param p2, "val$nextInfo"    # Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .param p3, "val$item"    # Landroid/view/MenuItem;
    .param p4, "val$menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-set0(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z

    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-set0(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 157
    :cond_1
    return-void
.end method

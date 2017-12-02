.class Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "popup"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 999
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 999
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1004
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 1007
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1008
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-set1(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 1011
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1, v3}, Landroid/widget/ActionMenuPresenter;->-set2(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 1003
    return-void
.end method

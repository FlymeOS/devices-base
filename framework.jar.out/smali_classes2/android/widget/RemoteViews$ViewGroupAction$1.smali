.class Landroid/widget/RemoteViews$ViewGroupAction$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupAction;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupAction;

.field final synthetic val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewGroupAction;
    .param p2, "val$task"    # Landroid/widget/RemoteViews$AsyncApplyTask;
    .param p3, "val$tree"    # Landroid/widget/RemoteViews$ViewTree;

    .prologue
    .line 1566
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->this$1:Landroid/widget/RemoteViews$ViewGroupAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .prologue
    .line 1571
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1572
    .local v0, "target":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    .line 1573
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-static {v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-get0(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1569
    return-void
.end method

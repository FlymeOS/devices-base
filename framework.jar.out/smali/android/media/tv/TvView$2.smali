.class Landroid/media/tv/TvView$2;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    return-void

    :cond_0
    move-object v0, p1

    .line 148
    check-cast v0, Landroid/view/InputEvent;

    .line 149
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v2, v0}, Landroid/media/tv/TvView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 153
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 140
    :cond_2
    return-void
.end method

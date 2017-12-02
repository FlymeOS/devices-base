.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 4105
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 4105
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .prologue
    move-object v0, p1

    .line 4120
    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4121
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    .line 4122
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 4123
    return-void

    .line 4125
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4119
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4111
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 4113
    const/4 v0, 0x3

    return v0

    .line 4115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

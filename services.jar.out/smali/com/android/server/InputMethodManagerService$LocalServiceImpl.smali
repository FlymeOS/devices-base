.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3881
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3880
    return-void
.end method


# virtual methods
.method public hideCurrentInputMethod()V
    .locals 2

    .prologue
    const/16 v1, 0x40b

    .line 3900
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3901
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3899
    return-void
.end method

.method public setInteractive(Z)V
    .locals 5
    .param p1, "interactive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3887
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3888
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3887
    :goto_0
    const/16 v4, 0xbd6

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3885
    return-void

    :cond_0
    move v0, v1

    .line 3888
    goto :goto_0
.end method

.method public switchInputMethod(Z)V
    .locals 5
    .param p1, "forwardDirection"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3894
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3895
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3894
    :goto_0
    const/16 v4, 0xbea

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3892
    return-void

    :cond_0
    move v0, v1

    .line 3895
    goto :goto_0
.end method

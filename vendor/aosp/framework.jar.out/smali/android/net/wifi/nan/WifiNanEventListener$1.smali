.class Landroid/net/wifi/nan/WifiNanEventListener$1;
.super Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanEventListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanEventListener;

    .prologue
    .line 166
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 3
    .param p1, "completedConfig"    # Landroid/net/wifi/nan/ConfigRequest;

    .prologue
    .line 171
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    return-void
.end method

.method public onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V
    .locals 3
    .param p1, "failedConfig"    # Landroid/net/wifi/nan/ConfigRequest;
    .param p2, "reason"    # I

    .prologue
    .line 182
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 184
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method

.method public onIdentityChanged()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 202
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method public onNanDown(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 192
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 194
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.class Landroid/net/wifi/nan/WifiNanEventListener$2;
.super Landroid/os/Handler;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/WifiNanEventListener;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanEventListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanEventListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanEventListener;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/nan/ConfigRequest;

    invoke-virtual {v1, v0}, Landroid/net/wifi/nan/WifiNanEventListener;->onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/nan/ConfigRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/nan/WifiNanEventListener;->onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanEventListener;->onNanDown(I)V

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    invoke-virtual {v0}, Landroid/net/wifi/nan/WifiNanEventListener;->onIdentityChanged()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

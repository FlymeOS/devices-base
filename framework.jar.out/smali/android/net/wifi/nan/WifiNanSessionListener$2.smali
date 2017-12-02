.class Landroid/net/wifi/nan/WifiNanSessionListener$2;
.super Landroid/os/Handler;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 189
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 195
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onPublishFail(I)V

    goto :goto_0

    .line 198
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onPublishTerminated(I)V

    goto :goto_0

    .line 201
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onSubscribeFail(I)V

    goto :goto_0

    .line 204
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onSubscribeTerminated(I)V

    goto :goto_0

    .line 207
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    .line 208
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "peer_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "message2"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMatch(I[BI[BI)V

    goto :goto_0

    .line 213
    :sswitch_5
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageSendSuccess(I)V

    goto :goto_0

    .line 216
    :sswitch_6
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageSendFail(II)V

    goto :goto_0

    .line 219
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageReceived(I[BI)V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

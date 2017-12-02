.class Landroid/net/wifi/nan/WifiNanSessionListener$1;
.super Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanSessionListener;

    .prologue
    .line 349
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I

    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "peer_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 394
    const-string/jumbo v2, "message2"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 396
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 397
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 398
    iput p5, v1, Landroid/os/Message;->arg2:I

    .line 399
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 400
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I

    .prologue
    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 432
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 433
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 434
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 435
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 416
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 418
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 419
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 407
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 409
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method

.method public onPublishFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 354
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 363
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 365
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 372
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 374
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 381
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 383
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    return-void
.end method

.class final Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
.super Landroid/os/Handler;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostNfcFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostNfcFService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostNfcFService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostNfcFService;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 174
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v7, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 182
    :cond_2
    const-string/jumbo v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 183
    .local v2, "packet":[B
    if-eqz v2, :cond_4

    .line 184
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v6, v2, v8}, Landroid/nfc/cardemulation/HostNfcFService;->processNfcFPacket([BLandroid/os/Bundle;)[B

    move-result-object v5

    .line 185
    .local v5, "responsePacket":[B
    if-eqz v5, :cond_0

    .line 186
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_3

    .line 187
    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 190
    :cond_3
    const/4 v6, 0x1

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 191
    .local v4, "responseMsg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v3, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 193
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 196
    :try_start_0
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "TAG"

    const-string/jumbo v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "responseBundle":Landroid/os/Bundle;
    .end local v4    # "responseMsg":Landroid/os/Message;
    .end local v5    # "responsePacket":[B
    :cond_4
    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Received MSG_COMMAND_PACKET without data."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "packet":[B
    :pswitch_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_5

    .line 208
    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 213
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 214
    :catch_1
    move-exception v1

    .line 215
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iput-object v8, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 221
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/HostNfcFService;->onDeactivated(I)V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

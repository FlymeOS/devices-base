.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1230
    iput-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 1231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1230
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1235
    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RTT manager get message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1248
    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    move-result-object v1

    .line 1249
    .local v1, "listener":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1250
    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void

    .line 1238
    .end local v1    # "listener":Ljava/lang/Object;
    :pswitch_1
    return-void

    .line 1240
    :pswitch_2
    const-string/jumbo v2, "RttManager"

    const-string/jumbo v3, "Channel connection lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    invoke-static {v2, v5}, Landroid/net/wifi/RttManager;->-set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1244
    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1245
    return-void

    .line 1253
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1

    .line 1280
    :pswitch_3
    return-void

    .line 1259
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    .line 1260
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 1234
    .end local v1    # "listener":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1263
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    .line 1264
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    .line 1267
    :pswitch_6
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    .line 1268
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    .line 1271
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ResponderConfig;

    .line 1272
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnabled(Landroid/net/wifi/RttManager$ResponderConfig;)V

    goto :goto_0

    .line 1275
    .end local v0    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnableFailure(I)V

    .line 1276
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_0

    .line 1236
    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1256
    :pswitch_data_1
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    move-object v1, p1

    .line 1291
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .line 1292
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1293
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget v2, p2, Landroid/os/Message;->arg1:I

    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 1290
    return-void
.end method

.method reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    move-object v1, p1

    .line 1285
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .line 1286
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .line 1287
    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    .line 1284
    return-void
.end method

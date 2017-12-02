.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x11002

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x27004

    if-ne v0, v1, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 189
    return-void

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 138
    .local v8, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "duplicate client connection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", messenger="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 141
    invoke-static {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 143
    return-void

    .line 146
    :cond_0
    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 147
    .local v7, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v0, p0, v1}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 149
    new-instance v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v8, v0, v1, v3, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    .line 150
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    invoke-virtual {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->register()V

    .line 153
    const/4 v0, 0x0

    .line 152
    invoke-virtual {v7, p1, v6, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "client connected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 156
    return-void

    .line 159
    .end local v7    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 160
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_1

    .line 161
    invoke-static {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 163
    :cond_1
    return-void

    .line 166
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 167
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 168
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v5, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "client disconnected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->cleanup()V

    .line 173
    :cond_2
    return-void

    .line 179
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :catch_0
    move-exception v9

    .line 180
    .local v9, "e":Ljava/lang/SecurityException;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to authorize app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "Not authorized"

    const/4 v3, -0x4

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 182
    return-void

    .line 192
    .end local v9    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 193
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    if-nez v2, :cond_4

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find client info for message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "Could not find listener"

    const/4 v3, -0x2

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    .line 229
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "Invalid request"

    const/4 v3, -0x3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 204
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 208
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 212
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get15(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 217
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "registerScanListener"

    iget v3, p1, Landroid/os/Message;->arg2:I

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1, v4, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_0

    .line 225
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "deregisterScanListener"

    iget v3, p1, Landroid/os/Message;->arg2:I

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x27002
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

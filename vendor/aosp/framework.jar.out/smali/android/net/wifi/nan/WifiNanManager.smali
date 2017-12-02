.class public Landroid/net/wifi/nan/WifiNanManager;
.super Ljava/lang/Object;
.source "WifiNanManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiNanManager"

.field private static final VDBG:Z


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mService:Landroid/net/wifi/nan/IWifiNanManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/IWifiNanManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/nan/IWifiNanManager;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    .line 51
    return-void
.end method


# virtual methods
.method public connect(Landroid/net/wifi/nan/WifiNanEventListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/nan/WifiNanEventListener;
    .param p2, "events"    # I

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid listener - must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    .line 76
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/net/wifi/nan/WifiNanEventListener;->callback:Landroid/net/wifi/nan/IWifiNanEventListener;

    invoke-interface {v1, v2, v3, p2}, Landroid/net/wifi/nan/IWifiNanManager;->connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    return-void
.end method

.method public destroySession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->destroySession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/net/wifi/nan/IWifiNanManager;->disconnect(Landroid/os/IBinder;)V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public publish(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;
    .locals 1
    .param p1, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p2, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    .prologue
    .line 143
    or-int/lit16 v0, p4, 0xf5

    .line 142
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/nan/WifiNanManager;->publishRaw(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;

    move-result-object v0

    return-object v0
.end method

.method public publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p3, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;

    .prologue
    .line 188
    iget v1, p3, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    if-nez v1, :cond_0

    .line 189
    iget v1, p2, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid publish data & settings: UNSOLICITED publishes (active) can\'t have an Rx filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    iget v1, p3, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 194
    iget v1, p2, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid publish data & settings: SOLICITED publishes (passive) can\'t have a Tx filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/nan/IWifiNanManager;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public publishRaw(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;
    .locals 4
    .param p1, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p2, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    .prologue
    .line 155
    iget v2, p2, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    if-nez v2, :cond_0

    .line 156
    iget v2, p1, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    if-eqz v2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid publish data & settings: UNSOLICITED publishes (active) can\'t have an Rx filter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    iget v2, p2, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 161
    iget v2, p1, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    if-eqz v2, :cond_1

    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid publish data & settings: SOLICITED publishes (passive) can\'t have a Tx filter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1
    if-nez p3, :cond_2

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid listener - must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    iget-object v3, p3, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    invoke-interface {v2, v3, p4}, Landroid/net/wifi/nan/IWifiNanManager;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    move-result v1

    .line 174
    .local v1, "sessionId":I
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v2, v1, p1, p2}, Landroid/net/wifi/nan/IWifiNanManager;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    new-instance v2, Landroid/net/wifi/nan/WifiNanPublishSession;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/nan/WifiNanPublishSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    return-object v2

    .line 175
    .end local v1    # "sessionId":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 2
    .param p1, "configRequest"    # Landroid/net/wifi/nan/ConfigRequest;

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendMessage(II[BII)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "messageLength"    # I
    .param p5, "messageId"    # I

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/wifi/nan/IWifiNanManager;->sendMessage(II[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-void

    .line 328
    :catch_0
    move-exception v6

    .line 329
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public stopSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->stopSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public subscribe(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;
    .locals 1
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    .prologue
    .line 226
    or-int/lit16 v0, p4, 0xf5

    .line 225
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/nan/WifiNanManager;->subscribeRaw(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p3, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;

    .prologue
    .line 273
    iget v1, p3, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 274
    iget v1, p2, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 276
    const-string/jumbo v2, "Invalid subscribe data & settings: ACTIVE subscribes can\'t have an Rx filter"

    .line 275
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    iget v1, p3, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    if-nez v1, :cond_1

    .line 279
    iget v1, p2, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 281
    const-string/jumbo v2, "Invalid subscribe data & settings: PASSIVE subscribes can\'t have a Tx filter"

    .line 280
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/nan/IWifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public subscribeRaw(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;
    .locals 4
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    .prologue
    .line 240
    iget v2, p2, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 241
    iget v2, p1, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 243
    const-string/jumbo v3, "Invalid subscribe data & settings: ACTIVE subscribes can\'t have an Rx filter"

    .line 242
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_0
    iget v2, p2, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    if-nez v2, :cond_1

    .line 246
    iget v2, p1, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-eqz v2, :cond_1

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 248
    const-string/jumbo v3, "Invalid subscribe data & settings: PASSIVE subscribes can\'t have a Tx filter"

    .line 247
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    iget-object v3, p3, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    invoke-interface {v2, v3, p4}, Landroid/net/wifi/nan/IWifiNanManager;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    move-result v1

    .line 256
    .local v1, "sessionId":I
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    invoke-interface {v2, v1, p1, p2}, Landroid/net/wifi/nan/IWifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    new-instance v2, Landroid/net/wifi/nan/WifiNanSubscribeSession;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/nan/WifiNanSubscribeSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    return-object v2

    .line 257
    .end local v1    # "sessionId":I
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

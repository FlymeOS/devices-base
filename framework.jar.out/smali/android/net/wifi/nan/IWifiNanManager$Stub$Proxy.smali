.class Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiNanManager.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 185
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/net/wifi/nan/IWifiNanEventListener;
    .param p3, "events"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/net/wifi/nan/IWifiNanEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 207
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    return-void

    .line 211
    :catchall_0
    move-exception v2

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw v2
.end method

.method public createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I
    .locals 6
    .param p1, "listener"    # Landroid/net/wifi/nan/IWifiNanSessionListener;
    .param p2, "events"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/wifi/nan/IWifiNanSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v3, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 266
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return v2

    .line 265
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw v3
.end method

.method public destroySession(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    return-void

    .line 373
    :catchall_0
    move-exception v2

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v2
.end method

.method public disconnect(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanManager"

    return-object v0
.end method

.method public publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p3, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    if-eqz p2, :cond_0

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/wifi/nan/PublishData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 285
    :goto_0
    if-eqz p3, :cond_1

    .line 286
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/net/wifi/nan/PublishSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 292
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    return-void

    .line 283
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v2

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v2

    .line 290
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 5
    .param p1, "configRequest"    # Landroid/net/wifi/nan/ConfigRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/nan/ConfigRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    return-void

    .line 242
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v2

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v2
.end method

.method public sendMessage(II[BII)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "messageLength"    # I
    .param p5, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    return-void

    .line 343
    :catchall_0
    move-exception v2

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v2
.end method

.method public stopSession(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    return-void

    .line 358
    :catchall_0
    move-exception v2

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    throw v2
.end method

.method public subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p3, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    if-eqz p2, :cond_0

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/wifi/nan/SubscribeData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    :goto_0
    if-eqz p3, :cond_1

    .line 315
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/net/wifi/nan/SubscribeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    return-void

    .line 312
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v2

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw v2

    .line 319
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

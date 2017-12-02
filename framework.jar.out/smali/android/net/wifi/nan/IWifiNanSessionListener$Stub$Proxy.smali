.class Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiNanSessionListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
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
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 134
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    return-object v0
.end method

.method public onMatch(I[BI[BI)V
    .locals 5
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 203
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    return-void

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw v1
.end method

.method public onMessageReceived(I[BI)V
    .locals 5
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 245
    :catchall_0
    move-exception v1

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v1
.end method

.method public onMessageSendFail(II)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    return-void

    .line 231
    :catchall_0
    move-exception v1

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public onMessageSendSuccess(I)V
    .locals 5
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    return-void

    .line 218
    :catchall_0
    move-exception v1

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    throw v1
.end method

.method public onPublishFail(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    return-void

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw v1
.end method

.method public onPublishTerminated(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v1
.end method

.method public onSubscribeFail(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-void

    .line 178
    :catchall_0
    move-exception v1

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v1
.end method

.method public onSubscribeTerminated(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-void

    .line 190
    :catchall_0
    move-exception v1

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw v1
.end method

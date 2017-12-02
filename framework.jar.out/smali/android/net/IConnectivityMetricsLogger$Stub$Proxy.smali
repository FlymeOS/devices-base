.class Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectivityMetricsLogger.java"

# interfaces
.implements Landroid/net/IConnectivityMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityMetricsLogger$Stub;
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
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 6
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_1

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/ConnectivityMetricsEvent$Reference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    sget-object v3, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/ConnectivityMetricsEvent;

    .line 210
    .local v2, "_result":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityMetricsEvent$Reference;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    return-object v2

    .line 205
    .end local v2    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "android.net.IConnectivityMetricsLogger"

    return-object v0
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)J
    .locals 7
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/ConnectivityMetricsEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    :goto_0
    iget-object v4, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 164
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    return-wide v2

    .line 157
    .end local v2    # "_result":J
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v4

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v4
.end method

.method public logEvents([Landroid/net/ConnectivityMetricsEvent;)J
    .locals 7
    .param p1, "events"    # [Landroid/net/ConnectivityMetricsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 177
    iget-object v4, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 182
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-wide v2

    .line 181
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v4
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_0
    iget-object v3, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 239
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return v2

    .line 232
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v3

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v3

    .line 236
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public unregister(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_0
    iget-object v2, p0, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v2

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v2
.end method

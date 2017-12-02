.class Landroid/service/notification/INotificationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener$Stub;
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
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 182
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string/jumbo v0, "android.service.notification.INotificationListener"

    return-object v0
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 5
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    return-void

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v1
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/NotificationRankingUpdate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    :goto_0
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .locals 5
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    return-void

    .line 278
    :catchall_0
    move-exception v1

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw v1
.end method

.method public onNotificationActionClick(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "actionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 347
    :catchall_0
    move-exception v1

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw v1
.end method

.method public onNotificationClick(Ljava/lang/String;J)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    return-void

    .line 333
    :catchall_0
    move-exception v1

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw v1
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    .locals 5
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "importance"    # I
    .param p3, "user"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    return-void

    .line 303
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v1

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v1
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 220
    if-eqz p2, :cond_1

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/service/notification/NotificationRankingUpdate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_0
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    return-void

    .line 225
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v1
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/NotificationRankingUpdate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_0
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v1

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 239
    if-eqz p2, :cond_1

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/service/notification/NotificationRankingUpdate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    :goto_0
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 244
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw v1
.end method

.method public onNotificationRemovedReason(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 358
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return-void

    .line 361
    :catchall_0
    move-exception v1

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method

.method public onNotificationVisibilityChanged(Ljava/lang/String;JZ)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.notification.INotificationListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v1, p0, Landroid/service/notification/INotificationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-void

    .line 317
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v1
.end method

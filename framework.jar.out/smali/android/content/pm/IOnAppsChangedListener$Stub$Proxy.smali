.class Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener$Stub;
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
    iput-object p1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 185
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "android.content.pm.IOnAppsChangedListener"

    return-object v0
.end method

.method public onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 226
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
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
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 245
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v1

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw v1
.end method

.method public onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v1
.end method

.method public onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 267
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    return-void

    .line 264
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v1

    :cond_1
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method public onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    if-eqz p1, :cond_0

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 306
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    return-void

    .line 304
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    throw v1
.end method

.method public onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 287
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    return-void

    .line 284
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v1

    :cond_1
    move v1, v2

    .line 287
    goto :goto_1
.end method

.method public onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    return-void

    .line 323
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v1

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw v1
.end method

.method public onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcuts"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    if-eqz p1, :cond_0

    .line 338
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    if-eqz p3, :cond_1

    .line 346
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 352
    :goto_1
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    return-void

    .line 342
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v1

    .line 350
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

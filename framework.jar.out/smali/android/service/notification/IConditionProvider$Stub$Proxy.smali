.class Landroid/service/notification/IConditionProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConditionProvider.java"

# interfaces
.implements Landroid/service/notification/IConditionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IConditionProvider$Stub;
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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "android.service.notification.IConditionProvider"

    return-object v0
.end method

.method public onConnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    throw v1
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1, "conditionId"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_0
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw v1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1, "conditionId"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    :goto_0
    iget-object v1, p0, Landroid/service/notification/IConditionProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw v1
.end method

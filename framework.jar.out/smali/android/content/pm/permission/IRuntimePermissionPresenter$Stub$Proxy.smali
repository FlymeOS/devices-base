.class Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/pm/permission/IRuntimePermissionPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.permission.IRuntimePermissionPresenter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_0
    iget-object v1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw v1
.end method

.method public getAppsUsingPermissions(ZLandroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "system"    # Z
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.permission.IRuntimePermissionPresenter"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    if-eqz p2, :cond_1

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_1
    iget-object v1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    :cond_0
    move v1, v2

    .line 122
    goto :goto_0

    .line 128
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "android.content.pm.permission.IRuntimePermissionPresenter"

    return-object v0
.end method

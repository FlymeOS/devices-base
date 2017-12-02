.class public abstract Landroid/media/tv/ITvRemoteProvider$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteProvider.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteProvider"

.field static final TRANSACTION_onInputBridgeConnected:I = 0x2

.field static final TRANSACTION_setRemoteServiceInputSink:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.tv.ITvRemoteProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvRemoteProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvRemoteProvider;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/tv/ITvRemoteProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvRemoteProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 45
    :sswitch_0
    const-string/jumbo v2, "android.media.tv.ITvRemoteProvider"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v3

    .line 50
    :sswitch_1
    const-string/jumbo v2, "android.media.tv.ITvRemoteProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Landroid/media/tv/ITvRemoteServiceInput;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvRemoteProvider$Stub;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    .line 54
    return v3

    .line 58
    .end local v0    # "_arg0":Landroid/media/tv/ITvRemoteServiceInput;
    :sswitch_2
    const-string/jumbo v2, "android.media.tv.ITvRemoteProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvRemoteProvider$Stub;->onInputBridgeConnected(Landroid/os/IBinder;)V

    .line 62
    return v3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public interface abstract Landroid/net/wifi/nan/IWifiNanManager;
.super Ljava/lang/Object;
.source "IWifiNanManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract destroySession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnect(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessage(II[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/net/IIpConnectivityMetrics;
.super Ljava/lang/Object;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub;
    }
.end annotation


# virtual methods
.method public abstract logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterNetdEventCallback()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/location/IGnssNavigationMessageListener;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssNavigationMessageListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

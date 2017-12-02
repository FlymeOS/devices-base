.class public interface abstract Landroid/service/vr/IVrStateCallbacks;
.super Ljava/lang/Object;
.source "IVrStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrStateCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVrStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

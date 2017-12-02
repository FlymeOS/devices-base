.class public interface abstract Landroid/print/IPrintServicesChangeListener;
.super Ljava/lang/Object;
.source "IPrintServicesChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintServicesChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPrintServicesChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

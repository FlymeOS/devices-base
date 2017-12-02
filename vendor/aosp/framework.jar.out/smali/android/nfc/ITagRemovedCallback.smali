.class public interface abstract Landroid/nfc/ITagRemovedCallback;
.super Ljava/lang/Object;
.source "ITagRemovedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ITagRemovedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTagRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

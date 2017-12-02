.class public interface abstract Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/ManagedApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PendingEvent"
.end annotation


# virtual methods
.method public abstract runEvent(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

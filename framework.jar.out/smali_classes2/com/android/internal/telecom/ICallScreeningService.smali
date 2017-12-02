.class public interface abstract Lcom/android/internal/telecom/ICallScreeningService;
.super Ljava/lang/Object;
.source "ICallScreeningService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallScreeningService$Stub;
    }
.end annotation


# virtual methods
.method public abstract screenCall(Lcom/android/internal/telecom/ICallScreeningAdapter;Landroid/telecom/ParcelableCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

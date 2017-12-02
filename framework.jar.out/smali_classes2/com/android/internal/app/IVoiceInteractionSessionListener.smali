.class public interface abstract Lcom/android/internal/app/IVoiceInteractionSessionListener;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVoiceSessionHidden()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVoiceSessionShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

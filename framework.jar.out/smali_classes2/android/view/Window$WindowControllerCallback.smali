.class public interface abstract Landroid/view/Window$WindowControllerCallback;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowControllerCallback"
.end annotation


# virtual methods
.method public abstract enterPictureInPictureModeIfPossible()V
.end method

.method public abstract exitFreeformMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWindowStackId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

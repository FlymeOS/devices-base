.class public interface abstract Landroid/hardware/camera2/ICameraDeviceCallbacks;
.super Ljava/lang/Object;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
    }
.end annotation


# static fields
.field public static final ERROR_CAMERA_BUFFER:I = 0x5

.field public static final ERROR_CAMERA_DEVICE:I = 0x1

.field public static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field public static final ERROR_CAMERA_INVALID_ERROR:I = -0x1

.field public static final ERROR_CAMERA_REQUEST:I = 0x3

.field public static final ERROR_CAMERA_RESULT:I = 0x4

.field public static final ERROR_CAMERA_SERVICE:I = 0x2


# virtual methods
.method public abstract onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceIdle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrepared(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRepeatingRequestError(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

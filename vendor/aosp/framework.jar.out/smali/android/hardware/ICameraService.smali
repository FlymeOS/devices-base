.class public interface abstract Landroid/hardware/ICameraService;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub;
    }
.end annotation


# static fields
.field public static final API_VERSION_1:I = 0x1

.field public static final API_VERSION_2:I = 0x2

.field public static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field public static final CAMERA_TYPE_ALL:I = 0x1

.field public static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field public static final ERROR_ALREADY_EXISTS:I = 0x2

.field public static final ERROR_CAMERA_IN_USE:I = 0x7

.field public static final ERROR_DEPRECATED_HAL:I = 0x9

.field public static final ERROR_DISABLED:I = 0x6

.field public static final ERROR_DISCONNECTED:I = 0x4

.field public static final ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field public static final ERROR_INVALID_OPERATION:I = 0xa

.field public static final ERROR_MAX_CAMERAS_IN_USE:I = 0x8

.field public static final ERROR_PERMISSION_DENIED:I = 0x1

.field public static final ERROR_TIMED_OUT:I = 0x5

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_USER_SWITCHED:I = 0x1

.field public static final USE_CALLING_PID:I = -0x1

.field public static final USE_CALLING_UID:I = -0x1


# virtual methods
.method public abstract addListener(Landroid/hardware/ICameraServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraInfo(I)Landroid/hardware/CameraInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLegacyParameters(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNumberOfCameras(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySystemEvent(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/hardware/ICameraServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsCameraApi(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

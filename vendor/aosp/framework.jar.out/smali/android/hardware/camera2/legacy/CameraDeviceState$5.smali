.class Landroid/hardware/camera2/legacy/CameraDeviceState$5;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 262
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$5;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$5;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$5;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceState;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$5;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get2(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onError(ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 264
    return-void
.end method

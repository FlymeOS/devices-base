.class final Lcom/android/server/vr/VrManagerService$2;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 257
    invoke-static {p1}, Landroid/service/vr/IVrListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrListener;

    move-result-object v0

    return-object v0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 262
    instance-of v0, p1, Landroid/service/vr/IVrListener;

    return v0
.end method

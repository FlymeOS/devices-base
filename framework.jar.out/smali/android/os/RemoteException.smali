.class public Landroid/os/RemoteException;
.super Landroid/util/AndroidException;
.source "RemoteException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public rethrowFromSystemServer()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 52
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

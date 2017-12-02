.class final Landroid/app/admin/SecurityLog$SecurityEvent$1;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog$SecurityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/admin/SecurityLog$SecurityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 167
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/app/admin/SecurityLog$SecurityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SecurityLog$SecurityEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 172
    new-array v0, p1, [Landroid/app/admin/SecurityLog$SecurityEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/admin/SecurityLog$SecurityEvent$1;->newArray(I)[Landroid/app/admin/SecurityLog$SecurityEvent;

    move-result-object v0

    return-object v0
.end method

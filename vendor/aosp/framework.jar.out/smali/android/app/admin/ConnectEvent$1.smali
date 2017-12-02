.class final Landroid/app/admin/ConnectEvent$1;
.super Ljava/lang/Object;
.source "ConnectEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ConnectEvent;
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
        "Landroid/app/admin/ConnectEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ConnectEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 67
    return-object v2

    .line 69
    :cond_0
    new-instance v0, Landroid/app/admin/ConnectEvent;

    invoke-direct {v0, p1, v2}, Landroid/app/admin/ConnectEvent;-><init>(Landroid/os/Parcel;Landroid/app/admin/ConnectEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/admin/ConnectEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ConnectEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/ConnectEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    new-array v0, p1, [Landroid/app/admin/ConnectEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/admin/ConnectEvent$1;->newArray(I)[Landroid/app/admin/ConnectEvent;

    move-result-object v0

    return-object v0
.end method

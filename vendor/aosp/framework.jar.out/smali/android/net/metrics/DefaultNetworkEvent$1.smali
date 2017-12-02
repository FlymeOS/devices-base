.class final Landroid/net/metrics/DefaultNetworkEvent$1;
.super Ljava/lang/Object;
.source "DefaultNetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DefaultNetworkEvent;
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
        "Landroid/net/metrics/DefaultNetworkEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DefaultNetworkEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 102
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/DefaultNetworkEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DefaultNetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/metrics/DefaultNetworkEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 106
    new-array v0, p1, [Landroid/net/metrics/DefaultNetworkEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent$1;->newArray(I)[Landroid/net/metrics/DefaultNetworkEvent;

    move-result-object v0

    return-object v0
.end method

.class final Landroid/net/metrics/DnsEvent$1;
.super Ljava/lang/Object;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DnsEvent;
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
        "Landroid/net/metrics/DnsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DnsEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    new-instance v0, Landroid/net/metrics/DnsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/DnsEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/DnsEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/metrics/DnsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/DnsEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/metrics/DnsEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    new-array v0, p1, [Landroid/net/metrics/DnsEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/net/metrics/DnsEvent$1;->newArray(I)[Landroid/net/metrics/DnsEvent;

    move-result-object v0

    return-object v0
.end method

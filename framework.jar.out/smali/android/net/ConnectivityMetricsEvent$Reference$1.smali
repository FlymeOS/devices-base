.class final Landroid/net/ConnectivityMetricsEvent$Reference$1;
.super Ljava/lang/Object;
.source "ConnectivityMetricsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityMetricsEvent$Reference;
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
        "Landroid/net/ConnectivityMetricsEvent$Reference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent$Reference;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 98
    new-instance v0, Landroid/net/ConnectivityMetricsEvent$Reference;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/ConnectivityMetricsEvent$Reference;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$Reference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent$Reference;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ConnectivityMetricsEvent$Reference;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    new-array v0, p1, [Landroid/net/ConnectivityMetricsEvent$Reference;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$Reference$1;->newArray(I)[Landroid/net/ConnectivityMetricsEvent$Reference;

    move-result-object v0

    return-object v0
.end method

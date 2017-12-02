.class final Landroid/net/ConnectivityMetricsEvent$1;
.super Ljava/lang/Object;
.source "ConnectivityMetricsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityMetricsEvent;
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
        "Landroid/net/ConnectivityMetricsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 52
    .local v2, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, "componentTag":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "eventTag":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    .line 55
    .local v6, "data":Landroid/os/Parcelable;
    new-instance v1, Landroid/net/ConnectivityMetricsEvent;

    invoke-direct/range {v1 .. v6}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ConnectivityMetricsEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Landroid/net/ConnectivityMetricsEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$1;->newArray(I)[Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    return-object v0
.end method

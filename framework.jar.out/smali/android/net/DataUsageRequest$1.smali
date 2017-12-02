.class final Landroid/net/DataUsageRequest$1;
.super Ljava/lang/Object;
.source "DataUsageRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DataUsageRequest;
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
        "Landroid/net/DataUsageRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DataUsageRequest;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "requestId":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 78
    .local v2, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 79
    .local v4, "thresholdInBytes":J
    new-instance v1, Landroid/net/DataUsageRequest;

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    .line 81
    .local v1, "result":Landroid/net/DataUsageRequest;
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/net/DataUsageRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataUsageRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DataUsageRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Landroid/net/DataUsageRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DataUsageRequest$1;->newArray(I)[Landroid/net/DataUsageRequest;

    move-result-object v0

    return-object v0
.end method

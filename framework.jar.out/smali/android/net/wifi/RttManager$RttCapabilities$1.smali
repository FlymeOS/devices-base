.class final Landroid/net/wifi/RttManager$RttCapabilities$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttCapabilities;
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
        "Landroid/net/wifi/RttManager$RttCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 290
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    .line 291
    .local v0, "capabilities":Landroid/net/wifi/RttManager$RttCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_5
    iput-boolean v2, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    .line 300
    return-object v0

    :cond_0
    move v1, v3

    .line 291
    goto :goto_0

    :cond_1
    move v1, v3

    .line 292
    goto :goto_1

    :cond_2
    move v1, v3

    .line 293
    goto :goto_2

    :cond_3
    move v1, v3

    .line 294
    goto :goto_3

    :cond_4
    move v1, v3

    .line 297
    goto :goto_4

    :cond_5
    move v2, v3

    .line 298
    goto :goto_5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 305
    new-array v0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

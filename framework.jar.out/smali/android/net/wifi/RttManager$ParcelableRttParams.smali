.class public Landroid/net/wifi/RttManager$ParcelableRttParams;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ParcelableRttParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    .line 525
    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 478
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Landroid/net/wifi/RttManager$RttParams;

    .end local p1    # "params":[Landroid/net/wifi/RttManager$RttParams;
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    .line 487
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 500
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-object v5, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    .line 503
    .local v0, "params":Landroid/net/wifi/RttManager$RttParams;
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 506
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 505
    goto :goto_1

    :cond_1
    move v1, v3

    .line 516
    goto :goto_2

    :cond_2
    move v1, v3

    .line 517
    goto :goto_3

    .line 499
    .end local v0    # "params":Landroid/net/wifi/RttManager$RttParams;
    :cond_3
    return-void
.end method

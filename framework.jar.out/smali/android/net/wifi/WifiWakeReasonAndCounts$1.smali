.class final Landroid/net/wifi/WifiWakeReasonAndCounts$1;
.super Ljava/lang/Object;
.source "WifiWakeReasonAndCounts.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWakeReasonAndCounts;
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
        "Landroid/net/wifi/WifiWakeReasonAndCounts;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    .line 134
    .local v0, "counts":Landroid/net/wifi/WifiWakeReasonAndCounts;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    .line 151
    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 152
    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 153
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 160
    new-array v0, p1, [Landroid/net/wifi/WifiWakeReasonAndCounts;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

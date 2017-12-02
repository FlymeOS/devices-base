.class final Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
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
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 609
    new-instance v1, Landroid/net/wifi/WifiInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 610
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_0

    .line 616
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 620
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiSsid;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set5(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    .line 622
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set3(Landroid/net/wifi/WifiInfo;Z)Z

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v1, v3}, Landroid/net/wifi/WifiInfo;->-set1(Landroid/net/wifi/WifiInfo;Z)Z

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->score:I

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 633
    sget-object v2, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set4(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 634
    return-object v1

    :cond_2
    move v2, v4

    .line 624
    goto :goto_1

    :cond_3
    move v3, v4

    .line 625
    goto :goto_2

    .line 617
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 638
    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

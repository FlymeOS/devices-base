.class final Landroid/net/wifi/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiActivityEnergyInfo;
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
        "Landroid/net/wifi/WifiActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 100
    .local v2, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    .local v4, "stackState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 102
    .local v5, "txTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7

    .line 103
    .local v7, "txTimePerLevel":[J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 104
    .local v8, "rxTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 105
    .local v10, "idleTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 106
    .local v12, "energyUsed":J
    new-instance v1, Landroid/net/wifi/WifiActivityEnergyInfo;

    invoke-direct/range {v1 .. v13}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJ)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 110
    new-array v0, p1, [Landroid/net/wifi/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

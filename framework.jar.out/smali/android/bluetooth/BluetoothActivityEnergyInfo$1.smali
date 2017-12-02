.class final Landroid/bluetooth/BluetoothActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "BluetoothActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothActivityEnergyInfo;
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
        "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;->newArray(I)[Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

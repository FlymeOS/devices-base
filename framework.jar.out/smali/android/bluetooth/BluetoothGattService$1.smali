.class final Landroid/bluetooth/BluetoothGattService$1;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattService;
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
        "Landroid/bluetooth/BluetoothGattService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattService;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 161
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattService;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService$1;->newArray(I)[Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattService$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_PRIMARY:I = 0x0

.field public static final SERVICE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private mAdvertisePreferred:Z

.field protected mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mHandles:I

.field protected mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/bluetooth/BluetoothGattService$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattService$1;-><init>()V

    .line 158
    sput-object v0, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 114
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 115
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 116
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 117
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v6, 0x0

    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 170
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 177
    sget-object v6, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 178
    .local v2, "chrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chrc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 180
    .local v0, "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 181
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "chrc":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "chrc$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 188
    sget-object v6, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    .local v3, "inclSvcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "isvc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattIncludedService;

    .line 191
    .local v4, "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    new-instance v7, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    .line 192
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getInstanceId()I

    move-result v9

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattIncludedService;->getType()I

    move-result v10

    .line 191
    invoke-direct {v7, v11, v8, v9, v10}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    .end local v4    # "isvc":Landroid/bluetooth/BluetoothGattIncludedService;
    .end local v5    # "isvc$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 102
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 103
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 128
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 129
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 130
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 126
    return-void
.end method


# virtual methods
.method public addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 349
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "characteristic$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 350
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    return-object v0

    .line 353
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .prologue
    .line 243
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "characteristic$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 244
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 246
    return-object v0

    .line 248
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getHandles()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    return v0
.end method

.method public getIncludedServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isAdvertisePreferred()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    return v0
.end method

.method public setAdvertisePreferred(Z)V
    .locals 0
    .param p1, "advertisePreferred"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    .line 368
    return-void
.end method

.method setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 210
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 209
    return-void
.end method

.method public setHandles(I)V
    .locals 0
    .param p1, "handles"    # I

    .prologue
    .line 274
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 273
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 257
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 256
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget v3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v3, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattIncludedService;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 152
    .local v1, "s":Landroid/bluetooth/BluetoothGattService;
    new-instance v3, Landroid/bluetooth/BluetoothGattIncludedService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 153
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v6

    .line 152
    invoke-direct {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v1    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 143
    return-void
.end method

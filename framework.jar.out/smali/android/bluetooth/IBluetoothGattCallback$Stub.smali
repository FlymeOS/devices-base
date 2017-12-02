.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x4

.field static final TRANSACTION_onCharacteristicRead:I = 0x6

.field static final TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0xf

.field static final TRANSACTION_onDescriptorRead:I = 0x9

.field static final TRANSACTION_onDescriptorWrite:I = 0xa

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onFoundOrLost:I = 0x10

.field static final TRANSACTION_onMultiAdvertiseCallback:I = 0xd

.field static final TRANSACTION_onNotify:I = 0xb

.field static final TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0xe

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 46
    :sswitch_0
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v17, 0x1

    return v17

    .line 51
    :sswitch_1
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    .line 57
    const/16 v17, 0x1

    return v17

    .line 61
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_2
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 67
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    const/4 v13, 0x1

    .line 69
    .local v13, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v13, v15}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 71
    const/16 v17, 0x1

    return v17

    .line 67
    .end local v13    # "_arg2":Z
    .end local v15    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "_arg2":Z
    goto :goto_0

    .line 75
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v13    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    .line 78
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 83
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    .line 84
    const/16 v17, 0x1

    return v17

    .line 81
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_1

    .line 88
    .end local v3    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_4
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 91
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    .line 92
    const/16 v17, 0x1

    return v17

    .line 96
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_5
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "_arg0":Ljava/lang/String;
    sget-object v17, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 102
    .local v9, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 103
    .local v11, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    .line 104
    const/16 v17, 0x1

    return v17

    .line 108
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v11    # "_arg2":I
    :sswitch_6
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 114
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 116
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 117
    .local v16, "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v7, v11, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;II[B)V

    .line 118
    const/16 v17, 0x1

    return v17

    .line 122
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v16    # "_arg3":[B
    :sswitch_7
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 128
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 129
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;II)V

    .line 130
    const/16 v17, 0x1

    return v17

    .line 134
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_8
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 139
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    .line 140
    const/16 v17, 0x1

    return v17

    .line 144
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_9
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 150
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 152
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 153
    .restart local v16    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v7, v11, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;II[B)V

    .line 154
    const/16 v17, 0x1

    return v17

    .line 158
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v16    # "_arg3":[B
    :sswitch_a
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 164
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 165
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;II)V

    .line 166
    const/16 v17, 0x1

    return v17

    .line 170
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_b
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 176
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 177
    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v14}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;I[B)V

    .line 178
    const/16 v17, 0x1

    return v17

    .line 182
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":[B
    :sswitch_c
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 188
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 189
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 190
    const/16 v17, 0x1

    return v17

    .line 194
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_d
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_2

    const/4 v10, 0x1

    .line 200
    .local v10, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    .line 201
    sget-object v17, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/le/AdvertiseSettings;

    .line 206
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v12}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 207
    const/16 v17, 0x1

    return v17

    .line 198
    .end local v10    # "_arg1":Z
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_2

    .line 204
    :cond_3
    const/4 v12, 0x0

    .local v12, "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_3

    .line 211
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Z
    .end local v12    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_e
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanManagerErrorCallback(I)V

    .line 215
    const/16 v17, 0x1

    return v17

    .line 219
    .end local v2    # "_arg0":I
    :sswitch_f
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 225
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 226
    .restart local v11    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    .line 227
    const/16 v17, 0x1

    return v17

    .line 231
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":I
    :sswitch_10
    const-string/jumbo v17, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_4

    const/4 v6, 0x1

    .line 235
    .local v6, "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    .line 236
    sget-object v17, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/le/ScanResult;

    .line 241
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 242
    const/16 v17, 0x1

    return v17

    .line 233
    .end local v6    # "_arg0":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_4

    .line 239
    :cond_5
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_5

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

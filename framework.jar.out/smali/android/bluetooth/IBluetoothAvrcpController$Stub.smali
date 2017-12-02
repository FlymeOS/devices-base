.class public abstract Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAvrcpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothAvrcpController"

.field static final TRANSACTION_getConnectedDevices:I = 0x1

.field static final TRANSACTION_getConnectionState:I = 0x3

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x2

.field static final TRANSACTION_getMetadata:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x7

.field static final TRANSACTION_getPlayerSettings:I = 0x5

.field static final TRANSACTION_sendGroupNavigationCmd:I = 0x9

.field static final TRANSACTION_sendPassThroughCmd:I = 0x4

.field static final TRANSACTION_setPlayerApplicationSetting:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothAvrcpController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothAvrcpController;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 198
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    return v11

    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 54
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v11, 0x1

    return v11

    .line 60
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 63
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    .line 64
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v11, 0x1

    return v11

    .line 70
    .end local v2    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    .line 73
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 78
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 79
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v11, 0x1

    return v11

    .line 76
    .end local v5    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 85
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    .line 88
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 94
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v11, 0x1

    return v11

    .line 91
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 103
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 106
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 111
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v6

    .line 112
    .local v6, "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_3

    .line 114
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v11, 0x1

    invoke-virtual {v6, p3, v11}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_3
    const/4 v11, 0x1

    return v11

    .line 109
    .end local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 118
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 124
    .end local v6    # "_result":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 127
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getMetadata(Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaMetadata;

    move-result-object v7

    .line 133
    .local v7, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v7, :cond_5

    .line 135
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_5
    const/4 v11, 0x1

    return v11

    .line 130
    .end local v7    # "_result":Landroid/media/MediaMetadata;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 139
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/media/MediaMetadata;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 145
    .end local v7    # "_result":Landroid/media/MediaMetadata;
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    .line 148
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 153
    :goto_6
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->getPlaybackState(Landroid/bluetooth/BluetoothDevice;)Landroid/media/session/PlaybackState;

    move-result-object v8

    .line 154
    .local v8, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v8, :cond_7

    .line 156
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_7
    const/4 v11, 0x1

    return v11

    .line 151
    .end local v8    # "_result":Landroid/media/session/PlaybackState;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 160
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v8    # "_result":Landroid/media/session/PlaybackState;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 166
    .end local v8    # "_result":Landroid/media/session/PlaybackState;
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    .line 169
    sget-object v11, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    .line 174
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z

    move-result v10

    .line 175
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v10, :cond_9

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v11, 0x1

    return v11

    .line 172
    .end local v10    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    goto :goto_8

    .line 176
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .restart local v10    # "_result":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    .line 181
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothAvrcpController"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    .line 184
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 190
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v11, 0x1

    return v11

    .line 187
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

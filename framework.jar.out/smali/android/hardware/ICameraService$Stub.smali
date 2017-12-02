.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0x5

.field static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x9

.field static final TRANSACTION_getLegacyParameters:I = 0xa

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_notifySystemEvent:I = 0xd

.field static final TRANSACTION_removeListener:I = 0x7

.field static final TRANSACTION_setTorchMode:I = 0xc

.field static final TRANSACTION_supportsCameraApi:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
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
    const-string/jumbo v1, "android.hardware.ICameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/hardware/ICameraService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 31
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

    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 55
    .local v16, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v23

    .line 56
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v4, 0x1

    return v4

    .line 62
    .end local v16    # "_arg0":I
    .end local v23    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 65
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v24

    .line 66
    .local v24, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v24, :cond_0

    .line 68
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 72
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v16    # "_arg0":I
    .end local v24    # "_result":Landroid/hardware/CameraInfo;
    :sswitch_3
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v5

    .line 82
    .local v5, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 84
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 88
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 89
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;

    move-result-object v25

    .line 90
    .local v25, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 92
    const/4 v4, 0x1

    return v4

    .line 91
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 96
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v25    # "_result":Landroid/hardware/ICamera;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v18

    .line 100
    .local v18, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 102
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 105
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v26

    .line 106
    .local v26, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v26, :cond_2

    invoke-interface/range {v26 .. v26}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    const/4 v4, 0x1

    return v4

    .line 107
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 112
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v18    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v26    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v5

    .line 116
    .restart local v5    # "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 118
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 120
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v6

    move v15, v9

    .line 123
    invoke-virtual/range {v10 .. v15}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;

    move-result-object v25

    .line 124
    .restart local v25    # "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v25, :cond_3

    invoke-interface/range {v25 .. v25}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 126
    const/4 v4, 0x1

    return v4

    .line 125
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 130
    .end local v5    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v25    # "_result":Landroid/hardware/ICamera;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v17

    .line 133
    .local v17, "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    return v4

    .line 139
    .end local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v17

    .line 142
    .restart local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v4, 0x1

    return v4

    .line 148
    .end local v17    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 151
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v27

    .line 152
    .local v27, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v27, :cond_4

    .line 154
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    :goto_4
    const/4 v4, 0x1

    return v4

    .line 158
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 164
    .end local v16    # "_arg0":I
    .end local v27    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v28

    .line 166
    .local v28, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v28, :cond_5

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/params/VendorTagDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 172
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 178
    .end local v28    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 181
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v29

    .line 182
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 188
    .end local v16    # "_arg0":I
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 192
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 193
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(II)Z

    move-result v30

    .line 194
    .local v30, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v30, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v4, 0x1

    return v4

    .line 195
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 200
    .end local v6    # "_arg1":I
    .end local v16    # "_arg0":I
    .end local v30    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 204
    .local v19, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v20, 0x1

    .line 206
    .local v20, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    .line 207
    .local v22, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v4, 0x1

    return v4

    .line 204
    .end local v20    # "_arg1":Z
    .end local v22    # "_arg2":Landroid/os/IBinder;
    :cond_7
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_7

    .line 213
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 217
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 218
    .local v21, "_arg1":[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

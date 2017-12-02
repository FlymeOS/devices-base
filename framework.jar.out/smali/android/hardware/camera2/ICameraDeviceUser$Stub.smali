.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_setDeferredConfiguration:I = 0x12

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 263
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v19

    return v19

    .line 43
    :sswitch_0
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v19, 0x1

    return v19

    .line 48
    :sswitch_1
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/16 v19, 0x1

    return v19

    .line 55
    :sswitch_2
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_0

    .line 58
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_1

    const/4 v11, 0x1

    .line 65
    .local v11, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v17

    .line 66
    .local v17, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v17, :cond_2

    .line 68
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    :goto_2
    const/16 v19, 0x1

    return v19

    .line 61
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    .line 64
    .end local v5    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 72
    .restart local v11    # "_arg1":Z
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 78
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_3
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/CaptureRequest;

    .line 82
    .local v8, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_3

    const/4 v11, 0x1

    .line 83
    .restart local v11    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v17

    .line 84
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v17, :cond_4

    .line 86
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_4
    const/16 v19, 0x1

    return v19

    .line 82
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 90
    .restart local v11    # "_arg1":Z
    .restart local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 96
    .end local v8    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v11    # "_arg1":Z
    .end local v17    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :sswitch_4
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 99
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v14

    .line 100
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    const/16 v19, 0x1

    return v19

    .line 106
    .end local v4    # "_arg0":I
    .end local v14    # "_result":J
    :sswitch_5
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/16 v19, 0x1

    return v19

    .line 113
    :sswitch_6
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_5

    const/4 v7, 0x1

    .line 116
    .local v7, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/16 v19, 0x1

    return v19

    .line 115
    .end local v7    # "_arg0":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 122
    :sswitch_7
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 125
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/16 v19, 0x1

    return v19

    .line 131
    .end local v4    # "_arg0":I
    :sswitch_8
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_6

    .line 134
    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 139
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v13

    .line 140
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/16 v19, 0x1

    return v19

    .line 137
    .end local v13    # "_result":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_6

    .line 146
    .end local v6    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 152
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 153
    .local v12, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v12}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    move-result v13

    .line 154
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/16 v19, 0x1

    return v19

    .line 160
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_result":I
    :sswitch_a
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v18

    .line 162
    .local v18, "_result":Landroid/view/Surface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v18, :cond_7

    .line 164
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_7
    const/16 v19, 0x1

    return v19

    .line 168
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 174
    .end local v18    # "_result":Landroid/view/Surface;
    :sswitch_b
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v16

    .line 178
    .local v16, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v16, :cond_8

    .line 180
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :goto_8
    const/16 v19, 0x1

    return v19

    .line 184
    :cond_8
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 190
    .end local v4    # "_arg0":I
    .end local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_c
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v16

    .line 192
    .restart local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v16, :cond_9

    .line 194
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_9
    const/16 v19, 0x1

    return v19

    .line 198
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 204
    .end local v16    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :sswitch_d
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/16 v19, 0x1

    return v19

    .line 211
    :sswitch_e
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v14

    .line 213
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    const/16 v19, 0x1

    return v19

    .line 219
    .end local v14    # "_result":J
    :sswitch_f
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 222
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/16 v19, 0x1

    return v19

    .line 228
    .end local v4    # "_arg0":I
    :sswitch_10
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 231
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/16 v19, 0x1

    return v19

    .line 237
    .end local v4    # "_arg0":I
    :sswitch_11
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 242
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/16 v19, 0x1

    return v19

    .line 248
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_12
    const-string/jumbo v19, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_a

    .line 253
    sget-object v19, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 258
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/16 v19, 0x1

    return v19

    .line 256
    :cond_a
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_a

    .line 39
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

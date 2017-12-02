.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0xe

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0xf

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0x10

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_exitIdle:I = 0x11

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0xb

.field static final TRANSACTION_getAppIdUserWhitelist:I = 0xa

.field static final TRANSACTION_getAppIdWhitelist:I = 0x9

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0x8

.field static final TRANSACTION_getFullPowerWhitelist:I = 0x7

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0x6

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x4

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x3

.field static final TRANSACTION_getUserPowerWhitelist:I = 0x5

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0xd

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0xc

.field static final TRANSACTION_registerMaintenanceActivityListener:I = 0x12

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x2

.field static final TRANSACTION_unregisterMaintenanceActivityListener:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
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
    const-string/jumbo v1, "android.os.IDeviceIdleController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IDeviceIdleController;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IDeviceIdleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    return v2

    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v2, 0x1

    return v2

    .line 57
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v2, 0x1

    return v2

    .line 66
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    return v2

    .line 74
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    .line 76
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    .line 84
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x1

    return v2

    .line 90
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v15

    .line 92
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x1

    return v2

    .line 98
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v15

    .line 100
    .restart local v15    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 102
    const/4 v2, 0x1

    return v2

    .line 106
    .end local v15    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v14

    .line 108
    .local v14, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 110
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v14    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v14

    .line 116
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 118
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v14    # "_result":[I
    :sswitch_a
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdUserWhitelist()[I

    move-result-object v14

    .line 124
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 126
    const/4 v2, 0x1

    return v2

    .line 130
    .end local v14    # "_result":[I
    :sswitch_b
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v14

    .line 132
    .restart local v14    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 134
    const/4 v2, 0x1

    return v2

    .line 138
    .end local v14    # "_result":[I
    :sswitch_c
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v11

    .line 142
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v11, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x1

    return v2

    .line 143
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_d
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v11

    .line 152
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v11, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v2, 0x1

    return v2

    .line 153
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 158
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_e
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 164
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 166
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 167
    invoke-virtual/range {v2 .. v7}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v2, 0x1

    return v2

    .line 173
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 179
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    .line 181
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    const/4 v2, 0x1

    return v2

    .line 187
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":J
    :sswitch_10
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 193
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 194
    .restart local v10    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    .line 195
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    const/4 v2, 0x1

    return v2

    .line 201
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":J
    :sswitch_11
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v2, 0x1

    return v2

    .line 210
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    move-result-object v8

    .line 213
    .local v8, "_arg0":Landroid/os/IMaintenanceActivityListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    move-result v11

    .line 214
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v11, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v2, 0x1

    return v2

    .line 215
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 220
    .end local v8    # "_arg0":Landroid/os/IMaintenanceActivityListener;
    .end local v11    # "_result":Z
    :sswitch_13
    const-string/jumbo v2, "android.os.IDeviceIdleController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMaintenanceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMaintenanceActivityListener;

    move-result-object v8

    .line 223
    .restart local v8    # "_arg0":Landroid/os/IMaintenanceActivityListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/IDeviceIdleController$Stub;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v2, 0x1

    return v2

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
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

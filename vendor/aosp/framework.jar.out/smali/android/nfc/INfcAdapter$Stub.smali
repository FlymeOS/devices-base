.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x13

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_invokeBeam:I = 0xe

.field static final TRANSACTION_invokeBeamInternal:I = 0xf

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_pausePolling:I = 0xa

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x14

.field static final TRANSACTION_resumePolling:I = 0xb

.field static final TRANSACTION_setAppCallback:I = 0xd

.field static final TRANSACTION_setForegroundDispatch:I = 0xc

.field static final TRANSACTION_setP2pModes:I = 0x12

.field static final TRANSACTION_setReaderMode:I = 0x11

.field static final TRANSACTION_verifyNfcPermission:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 264
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v23

    return v23

    .line 45
    :sswitch_0
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v23, 0x1

    return v23

    .line 50
    :sswitch_1
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v21

    .line 52
    .local v21, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/16 v23, 0x1

    return v23

    .line 53
    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    .line 58
    .end local v21    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v20

    .line 60
    .local v20, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/16 v23, 0x1

    return v23

    .line 61
    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    .line 66
    .end local v20    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v19

    .line 70
    .local v19, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    const/16 v23, 0x1

    return v23

    .line 71
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 76
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v18

    .line 78
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/16 v23, 0x1

    return v23

    .line 84
    .end local v18    # "_result":I
    :sswitch_5
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_3

    const/4 v10, 0x1

    .line 87
    .local v10, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v22

    .line 88
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v22, :cond_4

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/16 v23, 0x1

    return v23

    .line 86
    .end local v10    # "_arg0":Z
    .end local v22    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_3

    .line 89
    .restart local v22    # "_result":Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 94
    .end local v10    # "_arg0":Z
    .end local v22    # "_result":Z
    :sswitch_6
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v22

    .line 96
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v22, :cond_5

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/16 v23, 0x1

    return v23

    .line 97
    :cond_5
    const/16 v23, 0x0

    goto :goto_5

    .line 102
    .end local v22    # "_result":Z
    :sswitch_7
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v22

    .line 104
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v22, :cond_6

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/16 v23, 0x1

    return v23

    .line 105
    :cond_6
    const/16 v23, 0x0

    goto :goto_6

    .line 110
    .end local v22    # "_result":Z
    :sswitch_8
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v22

    .line 112
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v22, :cond_7

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/16 v23, 0x1

    return v23

    .line 113
    :cond_7
    const/16 v23, 0x0

    goto :goto_7

    .line 118
    .end local v22    # "_result":Z
    :sswitch_9
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v22

    .line 120
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v22, :cond_8

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/16 v23, 0x1

    return v23

    .line 121
    :cond_8
    const/16 v23, 0x0

    goto :goto_8

    .line 126
    .end local v22    # "_result":Z
    :sswitch_a
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/16 v23, 0x1

    return v23

    .line 135
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/16 v23, 0x1

    return v23

    .line 142
    :sswitch_c
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_9

    .line 145
    sget-object v23, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 151
    :goto_9
    sget-object v23, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/IntentFilter;

    .line 153
    .local v14, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_a

    .line 154
    sget-object v23, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/nfc/TechListParcel;

    .line 159
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/16 v23, 0x1

    return v23

    .line 148
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_9
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_9

    .line 157
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_a
    const/16 v16, 0x0

    .local v16, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_a

    .line 165
    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    .end local v16    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_d
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v5

    .line 168
    .local v5, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/16 v23, 0x1

    return v23

    .line 174
    .end local v5    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_e
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 176
    const/16 v23, 0x1

    return v23

    .line 180
    :sswitch_f
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_b

    .line 183
    sget-object v23, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/BeamShareData;

    .line 188
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 189
    const/16 v23, 0x1

    return v23

    .line 186
    :cond_b
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_b

    .line 193
    .end local v4    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_10
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_c

    .line 196
    sget-object v23, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    .line 201
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/16 v23, 0x1

    return v23

    .line 199
    :cond_c
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/nfc/Tag;
    goto :goto_c

    .line 207
    .end local v7    # "_arg0":Landroid/nfc/Tag;
    :sswitch_11
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 211
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v12

    .line 213
    .local v12, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 215
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_d

    .line 216
    sget-object v23, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 221
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/16 v23, 0x1

    return v23

    .line 219
    :cond_d
    const/16 v17, 0x0

    .local v17, "_arg3":Landroid/os/Bundle;
    goto :goto_d

    .line 227
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v15    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    :sswitch_12
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 232
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/16 v23, 0x1

    return v23

    .line 238
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_13
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .line 242
    .local v6, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 243
    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/16 v23, 0x1

    return v23

    .line 249
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v13    # "_arg1":[I
    :sswitch_14
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .line 252
    .restart local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/16 v23, 0x1

    return v23

    .line 258
    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_15
    const-string/jumbo v23, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/16 v23, 0x1

    return v23

    .line 41
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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

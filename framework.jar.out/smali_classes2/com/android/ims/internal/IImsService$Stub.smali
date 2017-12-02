.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final TRANSACTION_addRegistrationListener:I = 0x6

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createCallProfile:I = 0x7

.field static final TRANSACTION_createCallSession:I = 0x8

.field static final TRANSACTION_getConfigInterface:I = 0xb

.field static final TRANSACTION_getEcbmInterface:I = 0xe

.field static final TRANSACTION_getMultiEndpointInterface:I = 0x10

.field static final TRANSACTION_getPendingCallSession:I = 0x9

.field static final TRANSACTION_getUtInterface:I = 0xa

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setRegistrationListener:I = 0x5

.field static final TRANSACTION_setUiTTYMode:I = 0xf

.field static final TRANSACTION_turnOffIms:I = 0xd

.field static final TRANSACTION_turnOnIms:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.ims.internal.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
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
    const-string/jumbo v1, "com.android.ims.internal.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/ims/internal/IImsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 22
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

    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 45
    :sswitch_0
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v21, 0x1

    return v21

    .line 50
    :sswitch_1
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_0

    .line 57
    sget-object v21, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v12

    .line 64
    .local v12, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8, v12}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v13

    .line 65
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/16 v21, 0x1

    return v21

    .line 60
    .end local v12    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v13    # "_result":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/app/PendingIntent;
    goto :goto_0

    .line 71
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/16 v21, 0x1

    return v21

    .line 80
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 87
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    move-result v20

    .line 88
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v20, :cond_1

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/16 v21, 0x1

    return v21

    .line 89
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_4
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    move-result v20

    .line 98
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v20, :cond_2

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v21, 0x1

    return v21

    .line 99
    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 104
    .end local v2    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_5
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v5

    .line 109
    .local v5, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/16 v21, 0x1

    return v21

    .line 115
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_6
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v11

    .line 122
    .local v11, "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11}, Lcom/android/ims/internal/IImsService$Stub;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/16 v21, 0x1

    return v21

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v11    # "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_7
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v14

    .line 136
    .local v14, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v14, :cond_3

    .line 138
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    :goto_3
    const/16 v21, 0x1

    return v21

    .line 142
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_4

    .line 153
    sget-object v21, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsCallProfile;

    .line 159
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v10

    .line 160
    .local v10, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v15

    .line 161
    .local v15, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v15, :cond_5

    invoke-interface {v15}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    const/16 v21, 0x1

    return v21

    .line 156
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_4
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    .line 162
    .end local v4    # "_arg1":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .restart local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 167
    .end local v2    # "_arg0":I
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_9
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v15

    .line 173
    .restart local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v15, :cond_6

    invoke-interface {v15}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_6
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    const/16 v21, 0x1

    return v21

    .line 174
    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    .line 179
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_a
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v19

    .line 183
    .local v19, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_7
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    const/16 v21, 0x1

    return v21

    .line 184
    :cond_7
    const/16 v21, 0x0

    goto :goto_7

    .line 189
    .end local v2    # "_arg0":I
    .end local v19    # "_result":Lcom/android/ims/internal/IImsUt;
    :sswitch_b
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v16

    .line 193
    .local v16, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_8
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 195
    const/16 v21, 0x1

    return v21

    .line 194
    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    .line 199
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Lcom/android/ims/internal/IImsConfig;
    :sswitch_c
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/16 v21, 0x1

    return v21

    .line 208
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/16 v21, 0x1

    return v21

    .line 217
    .end local v2    # "_arg0":I
    :sswitch_e
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v17

    .line 221
    .local v17, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_9
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    const/16 v21, 0x1

    return v21

    .line 222
    :cond_9
    const/16 v21, 0x0

    goto :goto_9

    .line 227
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :sswitch_f
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_a

    .line 234
    sget-object v21, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    .line 239
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/16 v21, 0x1

    return v21

    .line 237
    :cond_a
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/os/Message;
    goto :goto_a

    .line 245
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/Message;
    :sswitch_10
    const-string/jumbo v21, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v18

    .line 249
    .local v18, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 251
    const/16 v21, 0x1

    return v21

    .line 250
    :cond_b
    const/16 v21, 0x0

    goto :goto_b

    .line 41
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

.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_publishMyCap:I = 0x5

.field static final TRANSACTION_reenableService:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 44
    :sswitch_0
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v13, 0x1

    return v13

    .line 49
    :sswitch_1
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 53
    .local v12, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v12, :cond_0

    .line 55
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 59
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_2
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v4

    .line 71
    .local v4, "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    .line 72
    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ims/internal/uce/common/UceLong;

    .line 77
    :goto_1
    invoke-virtual {p0, v1, v4, v9}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 78
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v12, :cond_2

    .line 80
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    :goto_2
    if-eqz v9, :cond_3

    .line 87
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_3
    const/4 v13, 0x1

    return v13

    .line 75
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_1

    .line 84
    .end local v9    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 91
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 97
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    .line 102
    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 107
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 108
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v12, :cond_5

    .line 110
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v13, 0x1

    return v13

    .line 105
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_4
    const/4 v3, 0x0

    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_4

    .line 114
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 126
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v12, :cond_6

    .line 128
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v13, 0x1

    return v13

    .line 132
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_5
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_7

    .line 143
    sget-object v13, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    .line 149
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 150
    .local v8, "_arg2":I
    invoke-virtual {p0, v1, v5, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 151
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v12, :cond_8

    .line 153
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    :goto_8
    const/4 v13, 0x1

    return v13

    .line 146
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_7
    const/4 v5, 0x0

    .local v5, "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    goto :goto_7

    .line 157
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .restart local v8    # "_arg2":I
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 163
    .end local v1    # "_arg0":I
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_6
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 170
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v6, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 171
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v12, :cond_9

    .line 173
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    :goto_9
    const/4 v13, 0x1

    return v13

    .line 177
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 183
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_7
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 190
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 191
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v12, :cond_a

    .line 193
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_a
    const/4 v13, 0x1

    return v13

    .line 197
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 203
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_8
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_b

    .line 210
    sget-object v13, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    .line 216
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 217
    .local v11, "_arg3":I
    invoke-virtual {p0, v1, v6, v10, v11}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    .line 218
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v12, :cond_c

    .line 220
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    :goto_c
    const/4 v13, 0x1

    return v13

    .line 213
    .end local v11    # "_arg3":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_b
    const/4 v10, 0x0

    .local v10, "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    goto :goto_b

    .line 224
    .end local v10    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .restart local v11    # "_arg3":I
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

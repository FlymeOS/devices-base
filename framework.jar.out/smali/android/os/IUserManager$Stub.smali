.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0xe

.field static final TRANSACTION_canHaveRestrictedProfile:I = 0x16

.field static final TRANSACTION_clearSeedAccountData:I = 0x2b

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createRestrictedProfile:I = 0x4

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_getApplicationRestrictions:I = 0x1f

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x20

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x22

.field static final TRANSACTION_getPrimaryUser:I = 0xa

.field static final TRANSACTION_getProfileIds:I = 0xd

.field static final TRANSACTION_getProfileParent:I = 0xf

.field static final TRANSACTION_getProfiles:I = 0xc

.field static final TRANSACTION_getSeedAccountName:I = 0x28

.field static final TRANSACTION_getSeedAccountOptions:I = 0x2a

.field static final TRANSACTION_getSeedAccountType:I = 0x29

.field static final TRANSACTION_getUserAccount:I = 0x12

.field static final TRANSACTION_getUserCreationTime:I = 0x14

.field static final TRANSACTION_getUserHandle:I = 0x18

.field static final TRANSACTION_getUserIcon:I = 0x9

.field static final TRANSACTION_getUserInfo:I = 0x11

.field static final TRANSACTION_getUserRestrictionSource:I = 0x19

.field static final TRANSACTION_getUserRestrictions:I = 0x1a

.field static final TRANSACTION_getUserSerialNumber:I = 0x17

.field static final TRANSACTION_getUsers:I = 0xb

.field static final TRANSACTION_hasBaseUserRestriction:I = 0x1b

.field static final TRANSACTION_hasUserRestriction:I = 0x1c

.field static final TRANSACTION_isDemoUser:I = 0x2e

.field static final TRANSACTION_isManagedProfile:I = 0x2d

.field static final TRANSACTION_isQuietModeEnabled:I = 0x25

.field static final TRANSACTION_isRestricted:I = 0x15

.field static final TRANSACTION_isSameProfileGroup:I = 0x10

.field static final TRANSACTION_isUserRunning:I = 0x31

.field static final TRANSACTION_isUserUnlocked:I = 0x2f

.field static final TRANSACTION_isUserUnlockingOrUnlocked:I = 0x30

.field static final TRANSACTION_markGuestForDeletion:I = 0x23

.field static final TRANSACTION_removeUser:I = 0x6

.field static final TRANSACTION_setApplicationRestrictions:I = 0x1e

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x21

.field static final TRANSACTION_setQuietModeEnabled:I = 0x24

.field static final TRANSACTION_setSeedAccountData:I = 0x27

.field static final TRANSACTION_setUserAccount:I = 0x13

.field static final TRANSACTION_setUserEnabled:I = 0x5

.field static final TRANSACTION_setUserIcon:I = 0x8

.field static final TRANSACTION_setUserName:I = 0x7

.field static final TRANSACTION_setUserRestriction:I = 0x1d

.field static final TRANSACTION_someUserHasSeedAccount:I = 0x2c

.field static final TRANSACTION_trySetQuietModeDisabled:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
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
    const-string/jumbo v1, "android.os.IUserManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IUserManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 30
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

    .line 664
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v19

    .line 54
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 60
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 65
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 66
    .local v22, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v22, :cond_0

    .line 68
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

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
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_3
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 82
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 84
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 85
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v13, v1}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 86
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v22, :cond_1

    .line 88
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 92
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 98
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_4
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 102
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 103
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 104
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v22, :cond_2

    .line 106
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 110
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 116
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_5
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 119
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 125
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 128
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v28

    .line 129
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v28, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v4, 0x1

    return v4

    .line 130
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 135
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 139
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v4, 0x1

    return v4

    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 150
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 156
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 154
    :cond_4
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 162
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_9
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v24

    .line 166
    .local v24, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v24, :cond_5

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

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
    .end local v5    # "_arg0":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 180
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v22, :cond_6

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :goto_6
    const/4 v4, 0x1

    return v4

    .line 186
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 192
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_b
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v12, 0x1

    .line 195
    .local v12, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object v27

    .line 196
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 198
    const/4 v4, 0x1

    return v4

    .line 194
    .end local v12    # "_arg0":Z
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 202
    :sswitch_c
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 206
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v17, 0x1

    .line 207
    .local v17, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v27

    .line 208
    .restart local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 206
    .end local v17    # "_arg1":Z
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    .line 214
    .end local v5    # "_arg0":I
    :sswitch_d
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 218
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v17, 0x1

    .line 219
    .restart local v17    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object v29

    .line 220
    .local v29, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 218
    .end local v17    # "_arg1":Z
    .end local v29    # "_result":[I
    :cond_9
    const/16 v17, 0x0

    goto :goto_9

    .line 226
    .end local v5    # "_arg0":I
    :sswitch_e
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v17, 0x1

    .line 231
    .restart local v17    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    move-result v28

    .line 232
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v28, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v4, 0x1

    return v4

    .line 230
    .end local v17    # "_arg1":Z
    .end local v28    # "_result":Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_a

    .line 233
    .restart local v17    # "_arg1":Z
    .restart local v28    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 238
    .end local v5    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v28    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 241
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 242
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v22, :cond_c

    .line 244
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 248
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 254
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 258
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 259
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result v28

    .line 260
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v28, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v4, 0x1

    return v4

    .line 261
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 266
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 269
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 270
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v22, :cond_e

    .line 272
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 276
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 282
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_12
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 285
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object v26

    .line 286
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v4, 0x1

    return v4

    .line 292
    .end local v5    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 296
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v4, 0x1

    return v4

    .line 303
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 306
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v20

    .line 307
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    const/4 v4, 0x1

    return v4

    .line 313
    .end local v5    # "_arg0":I
    .end local v20    # "_result":J
    :sswitch_15
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    move-result v28

    .line 315
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v28, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v4, 0x1

    return v4

    .line 316
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 321
    .end local v28    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 324
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result v28

    .line 325
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v28, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v4, 0x1

    return v4

    .line 326
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 331
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 334
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v19

    .line 335
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v4, 0x1

    return v4

    .line 341
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v19

    .line 345
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v4, 0x1

    return v4

    .line 351
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 355
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 356
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v19

    .line 357
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v4, 0x1

    return v4

    .line 363
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v23

    .line 367
    .local v23, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v23, :cond_11

    .line 369
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    :goto_11
    const/4 v4, 0x1

    return v4

    .line 373
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 379
    .end local v5    # "_arg0":I
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 383
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 384
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v28

    .line 385
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v28, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v4, 0x1

    return v4

    .line 386
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 391
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 395
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 396
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v28

    .line 397
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v28, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v4, 0x1

    return v4

    .line 398
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 403
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 407
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v17, 0x1

    .line 409
    .local v17, "_arg1":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 410
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v4, 0x1

    return v4

    .line 407
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":I
    :cond_14
    const/16 v17, 0x0

    .restart local v17    # "_arg1":Z
    goto :goto_14

    .line 416
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Z
    :sswitch_1e
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 420
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 421
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 427
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 428
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    const/4 v4, 0x1

    return v4

    .line 424
    .end local v18    # "_arg2":I
    :cond_15
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/os/Bundle;
    goto :goto_15

    .line 434
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Landroid/os/Bundle;
    :sswitch_1f
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 437
    .restart local v11    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 438
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v23, :cond_16

    .line 440
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    :goto_16
    const/4 v4, 0x1

    return v4

    .line 444
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 450
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 454
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 455
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v23

    .line 456
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v23, :cond_17

    .line 458
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    :goto_17
    const/4 v4, 0x1

    return v4

    .line 462
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 468
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_21
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 471
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 476
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v4, 0x1

    return v4

    .line 474
    :cond_18
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/os/Bundle;
    goto :goto_18

    .line 482
    .end local v10    # "_arg0":Landroid/os/Bundle;
    :sswitch_22
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v23

    .line 484
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v23, :cond_19

    .line 486
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_19
    const/4 v4, 0x1

    return v4

    .line 490
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 496
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_23
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 499
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v28

    .line 500
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v28, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v4, 0x1

    return v4

    .line 501
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 506
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 510
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v17, 0x1

    .line 511
    .local v17, "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->setQuietModeEnabled(IZ)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    const/4 v4, 0x1

    return v4

    .line 510
    .end local v17    # "_arg1":Z
    :cond_1b
    const/16 v17, 0x0

    goto :goto_1b

    .line 517
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 520
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result v28

    .line 521
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v28, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v4, 0x1

    return v4

    .line 522
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 527
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 531
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 532
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/IntentSender;

    .line 537
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/os/IUserManager$Stub;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    move-result v28

    .line 538
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v28, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v4, 0x1

    return v4

    .line 535
    .end local v28    # "_result":Z
    :cond_1d
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/content/IntentSender;
    goto :goto_1d

    .line 539
    .end local v14    # "_arg1":Landroid/content/IntentSender;
    .restart local v28    # "_result":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 544
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 548
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 550
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 553
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersistableBundle;

    .line 559
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/4 v9, 0x1

    .local v9, "_arg4":Z
    :goto_20
    move-object/from16 v4, p0

    .line 560
    invoke-virtual/range {v4 .. v9}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v4, 0x1

    return v4

    .line 556
    .end local v9    # "_arg4":Z
    :cond_1f
    const/4 v8, 0x0

    .local v8, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_1f

    .line 559
    .end local v8    # "_arg3":Landroid/os/PersistableBundle;
    :cond_20
    const/4 v9, 0x0

    goto :goto_20

    .line 566
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountName()Ljava/lang/String;

    move-result-object v26

    .line 568
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    const/4 v4, 0x1

    return v4

    .line 574
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountType()Ljava/lang/String;

    move-result-object v26

    .line 576
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 582
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions()Landroid/os/PersistableBundle;

    move-result-object v25

    .line 584
    .local v25, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v25, :cond_21

    .line 586
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 592
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 590
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 596
    .end local v25    # "_result":Landroid/os/PersistableBundle;
    :sswitch_2b
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->clearSeedAccountData()V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v4, 0x1

    return v4

    .line 603
    :sswitch_2c
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 607
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    .line 609
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    if-eqz v28, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v4, 0x1

    return v4

    .line 610
    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .line 615
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 618
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isManagedProfile(I)Z

    move-result v28

    .line 619
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v28, :cond_23

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v4, 0x1

    return v4

    .line 620
    :cond_23
    const/4 v4, 0x0

    goto :goto_23

    .line 625
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_2e
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 628
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result v28

    .line 629
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v28, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v4, 0x1

    return v4

    .line 630
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 635
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 638
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result v28

    .line 639
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v28, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v4, 0x1

    return v4

    .line 640
    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    .line 645
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 648
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result v28

    .line 649
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    if-eqz v28, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v4, 0x1

    return v4

    .line 650
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 655
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.os.IUserManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 658
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result v28

    .line 659
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    if-eqz v28, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v4, 0x1

    return v4

    .line 660
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

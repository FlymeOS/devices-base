.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_accountAuthenticated:I = 0x1c

.field static final TRANSACTION_addAccount:I = 0x17

.field static final TRANSACTION_addAccountAsUser:I = 0x18

.field static final TRANSACTION_addAccountExplicitly:I = 0xa

.field static final TRANSACTION_addSharedAccountsFromParentUser:I = 0x20

.field static final TRANSACTION_clearPassword:I = 0x13

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1b

.field static final TRANSACTION_copyAccountToUser:I = 0xe

.field static final TRANSACTION_createRequestAccountAccessIntentSenderAsUser:I = 0x2a

.field static final TRANSACTION_editProperties:I = 0x1a

.field static final TRANSACTION_finishSessionAsUser:I = 0x26

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsAsUser:I = 0x7

.field static final TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x6

.field static final TRANSACTION_getAccountsForPackage:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x16

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1d

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x22

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1e

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasAccountAccess:I = 0x29

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0xf

.field static final TRANSACTION_isCredentialsUpdateSuggested:I = 0x28

.field static final TRANSACTION_onAccountAccessed:I = 0x2b

.field static final TRANSACTION_peekAuthToken:I = 0x10

.field static final TRANSACTION_removeAccount:I = 0xb

.field static final TRANSACTION_removeAccountAsUser:I = 0xc

.field static final TRANSACTION_removeAccountExplicitly:I = 0xd

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x1f

.field static final TRANSACTION_renameAccount:I = 0x21

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x23

.field static final TRANSACTION_setAuthToken:I = 0x11

.field static final TRANSACTION_setPassword:I = 0x12

.field static final TRANSACTION_setUserData:I = 0x14

.field static final TRANSACTION_someUserHasAccount:I = 0x27

.field static final TRANSACTION_startAddAccountSession:I = 0x24

.field static final TRANSACTION_startUpdateCredentialsSession:I = 0x25

.field static final TRANSACTION_updateAppPermission:I = 0x15

.field static final TRANSACTION_updateCredentials:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
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
    const-string/jumbo v1, "android.accounts.IAccountManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/accounts/IAccountManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 50
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

    .line 830
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 46
    :sswitch_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    return v3

    .line 51
    :sswitch_1
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 59
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v46

    .line 60
    .local v46, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x1

    return v3

    .line 57
    .end local v46    # "_result":Ljava/lang/String;
    :cond_0
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/accounts/Account;
    goto :goto_0

    .line 66
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_2
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 77
    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x1

    return v3

    .line 72
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :cond_1
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    .line 83
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_3
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 86
    .local v36, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v49

    .line 87
    .local v49, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 89
    const/4 v3, 0x1

    return v3

    .line 93
    .end local v36    # "_arg0":I
    .end local v49    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :sswitch_4
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 97
    .local v38, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 98
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v48

    .line 99
    .local v48, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 101
    const/4 v3, 0x1

    return v3

    .line 105
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":[Landroid/accounts/Account;
    :sswitch_5
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 109
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 111
    .local v39, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v48

    .line 113
    .restart local v48    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 115
    const/4 v3, 0x1

    return v3

    .line 119
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":I
    .end local v48    # "_result":[Landroid/accounts/Account;
    :sswitch_6
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 123
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 125
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v48

    .line 127
    .restart local v48    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 129
    const/4 v3, 0x1

    return v3

    .line 133
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":[Landroid/accounts/Account;
    :sswitch_7
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 137
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 139
    .restart local v39    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v48

    .line 141
    .restart local v48    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 143
    const/4 v3, 0x1

    return v3

    .line 147
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":I
    .end local v48    # "_result":[Landroid/accounts/Account;
    :sswitch_8
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 151
    .local v4, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 158
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v42

    .line 160
    .local v42, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 161
    .local v44, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v3, 0x1

    return v3

    .line 155
    .end local v42    # "_arg2":[Ljava/lang/String;
    .end local v44    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/accounts/Account;
    goto :goto_2

    .line 167
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 171
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 173
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v42

    .line 175
    .restart local v42    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 176
    .restart local v44    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v3, 0x1

    return v3

    .line 182
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":[Ljava/lang/String;
    .end local v44    # "_arg3":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 191
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 193
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 199
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v47

    .line 200
    .local v47, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v47, :cond_5

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x1

    return v3

    .line 188
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Z
    :cond_3
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    .line 197
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    .local v27, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .line 201
    .end local v27    # "_arg2":Landroid/os/Bundle;
    .restart local v47    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 206
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 210
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 217
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/16 v33, 0x1

    .line 218
    .local v33, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v4, v5, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v3, 0x1

    return v3

    .line 214
    .end local v33    # "_arg2":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_6

    .line 217
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_7
    const/16 v33, 0x0

    goto :goto_7

    .line 224
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    :sswitch_c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 228
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 229
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 235
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v33, 0x1

    .line 237
    .local v33, "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 238
    .local v43, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v43

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v3, 0x1

    return v3

    .line 232
    .end local v33    # "_arg2":Z
    .end local v43    # "_arg3":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    .line 235
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_9
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Z
    goto :goto_9

    .line 244
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v33    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 247
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 252
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v47

    .line 253
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v47, :cond_b

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v3, 0x1

    return v3

    .line 250
    .end local v47    # "_result":Z
    :cond_a
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    .line 254
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v47    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 259
    .end local v47    # "_result":Z
    :sswitch_e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 263
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 264
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 270
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 272
    .local v40, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 273
    .restart local v43    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v43

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v3, 0x1

    return v3

    .line 267
    .end local v40    # "_arg2":I
    .end local v43    # "_arg3":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_c

    .line 279
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 283
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 284
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v3, 0x1

    return v3

    .line 290
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 293
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 299
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 300
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 301
    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    const/4 v3, 0x1

    return v3

    .line 296
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    .line 307
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_11
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 310
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 316
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 318
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 319
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v3, 0x1

    return v3

    .line 313
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .line 325
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 328
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 334
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 335
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v3, 0x1

    return v3

    .line 331
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_f
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    .line 341
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 344
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 349
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v3, 0x1

    return v3

    .line 347
    :cond_10
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    .line 355
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 358
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 364
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 366
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 367
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v3, 0x1

    return v3

    .line 361
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_11
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    .line 373
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_15
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 376
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 382
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 384
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 386
    .restart local v40    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v7, 0x1

    .line 387
    .local v7, "_arg3":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v40

    invoke-virtual {v0, v1, v12, v2, v7}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v3, 0x1

    return v3

    .line 379
    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    :cond_12
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    .line 386
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v40    # "_arg2":I
    :cond_13
    const/4 v7, 0x0

    goto :goto_13

    .line 393
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    :sswitch_16
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 397
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 398
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 404
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 406
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v7, 0x1

    .line 408
    .local v7, "_arg3":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v8, 0x1

    .line 410
    .local v8, "_arg4":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 411
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_17
    move-object/from16 v3, p0

    .line 416
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v3, 0x1

    return v3

    .line 401
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_14

    .line 406
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_15

    .line 408
    :cond_16
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_16

    .line 414
    :cond_17
    const/4 v9, 0x0

    .local v9, "_arg5":Landroid/os/Bundle;
    goto :goto_17

    .line 422
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 426
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 428
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 430
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v8, 0x1

    .line 434
    .restart local v8    # "_arg4":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 435
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_19
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v8

    move-object/from16 v16, v9

    .line 440
    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v3, 0x1

    return v3

    .line 432
    .end local v8    # "_arg4":Z
    :cond_18
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_18

    .line 438
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_19

    .line 446
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 450
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 452
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 454
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 456
    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v8, 0x1

    .line 458
    .restart local v8    # "_arg4":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 459
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 465
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg6":I
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v8

    move-object/from16 v16, v9

    .line 466
    invoke-virtual/range {v10 .. v17}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v3, 0x1

    return v3

    .line 456
    .end local v8    # "_arg4":Z
    .end local v17    # "_arg6":I
    :cond_1a
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_1a

    .line 462
    :cond_1b
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_1b

    .line 472
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 476
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 477
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 483
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 485
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v7, 0x1

    .line 487
    .restart local v7    # "_arg3":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 488
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_1e
    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    .line 493
    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v3, 0x1

    return v3

    .line 480
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_1c
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_1c

    .line 485
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_1d

    .line 491
    :cond_1e
    const/16 v23, 0x0

    .local v23, "_arg4":Landroid/os/Bundle;
    goto :goto_1e

    .line 499
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 503
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 505
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v33, 0x1

    .line 506
    .local v33, "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    const/4 v3, 0x1

    return v3

    .line 505
    .end local v33    # "_arg2":Z
    :cond_1f
    const/16 v33, 0x0

    goto :goto_1f

    .line 512
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 516
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 517
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 523
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 524
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 530
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v7, 0x1

    .line 532
    .restart local v7    # "_arg3":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg4":I
    move-object/from16 v24, p0

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v28, v7

    .line 533
    invoke-virtual/range {v24 .. v29}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v3, 0x1

    return v3

    .line 520
    .end local v7    # "_arg3":Z
    .end local v29    # "_arg4":I
    :cond_20
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_20

    .line 527
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_21
    const/16 v27, 0x0

    .restart local v27    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    .line 530
    .end local v27    # "_arg2":Landroid/os/Bundle;
    :cond_22
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_22

    .line 539
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg3":Z
    :sswitch_1c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    .line 542
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 547
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v47

    .line 548
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v47, :cond_24

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v3, 0x1

    return v3

    .line 545
    .end local v47    # "_result":Z
    :cond_23
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    .line 549
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v47    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    goto :goto_24

    .line 554
    .end local v47    # "_result":Z
    :sswitch_1d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 558
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 560
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 561
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v3, 0x1

    return v3

    .line 567
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 570
    .restart local v36    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v48

    .line 571
    .restart local v48    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 573
    const/4 v3, 0x1

    return v3

    .line 577
    .end local v36    # "_arg0":I
    .end local v48    # "_result":[Landroid/accounts/Account;
    :sswitch_1f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 580
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 586
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 587
    .restart local v39    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v47

    .line 588
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    if-eqz v47, :cond_26

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    const/4 v3, 0x1

    return v3

    .line 583
    .end local v39    # "_arg1":I
    .end local v47    # "_result":Z
    :cond_25
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    .line 589
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v39    # "_arg1":I
    .restart local v47    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    goto :goto_26

    .line 594
    .end local v39    # "_arg1":I
    .end local v47    # "_result":Z
    :sswitch_20
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 598
    .restart local v36    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 599
    .restart local v39    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountsFromParentUser(II)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v3, 0x1

    return v3

    .line 605
    .end local v36    # "_arg0":I
    .end local v39    # "_arg1":I
    :sswitch_21
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 609
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    .line 610
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 616
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 617
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v3, 0x1

    return v3

    .line 613
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_27

    .line 623
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_22
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 626
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 631
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v46

    .line 632
    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    const/4 v3, 0x1

    return v3

    .line 629
    .end local v46    # "_result":Ljava/lang/String;
    :cond_28
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_28

    .line 638
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_23
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 641
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 647
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 649
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 650
    .restart local v40    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v40

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v47

    .line 651
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v47, :cond_2a

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v3, 0x1

    return v3

    .line 644
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    .end local v47    # "_result":Z
    :cond_29
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_29

    .line 652
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v40    # "_arg2":I
    .restart local v47    # "_result":Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2a

    .line 657
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    .end local v47    # "_result":Z
    :sswitch_24
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 661
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 663
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 665
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 667
    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v8, 0x1

    .line 669
    .restart local v8    # "_arg4":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 670
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_2c
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v8

    move-object/from16 v16, v9

    .line 675
    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v3, 0x1

    return v3

    .line 667
    .end local v8    # "_arg4":Z
    :cond_2b
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_2b

    .line 673
    :cond_2c
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_2c

    .line 681
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 685
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 686
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 692
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 694
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v7, 0x1

    .line 696
    .restart local v7    # "_arg3":Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    .line 697
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_2f
    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    .line 702
    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v3, 0x1

    return v3

    .line 689
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_2d

    .line 694
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_2e
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_2e

    .line 700
    :cond_2f
    const/16 v23, 0x0

    .restart local v23    # "_arg4":Landroid/os/Bundle;
    goto :goto_2f

    .line 708
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 712
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30

    .line 713
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/Bundle;

    .line 719
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    const/16 v33, 0x1

    .line 721
    .local v33, "_arg2":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 722
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/Bundle;

    .line 728
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .restart local v29    # "_arg4":I
    move-object/from16 v30, p0

    move-object/from16 v31, v4

    move/from16 v35, v29

    .line 729
    invoke-virtual/range {v30 .. v35}, Landroid/accounts/IAccountManager$Stub;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v3, 0x1

    return v3

    .line 716
    .end local v29    # "_arg4":I
    .end local v33    # "_arg2":Z
    :cond_30
    const/16 v32, 0x0

    .local v32, "_arg1":Landroid/os/Bundle;
    goto :goto_30

    .line 719
    .end local v32    # "_arg1":Landroid/os/Bundle;
    :cond_31
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Z
    goto :goto_31

    .line 725
    :cond_32
    const/16 v34, 0x0

    .local v34, "_arg3":Landroid/os/Bundle;
    goto :goto_32

    .line 735
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v33    # "_arg2":Z
    .end local v34    # "_arg3":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 738
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 743
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v47

    .line 744
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v47, :cond_34

    const/4 v3, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v3, 0x1

    return v3

    .line 741
    .end local v47    # "_result":Z
    :cond_33
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_33

    .line 745
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v47    # "_result":Z
    :cond_34
    const/4 v3, 0x0

    goto :goto_34

    .line 750
    .end local v47    # "_result":Z
    :sswitch_28
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 754
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 755
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 761
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 762
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v3, 0x1

    return v3

    .line 758
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_35
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_35

    .line 768
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_29
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 771
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 777
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 779
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    .line 780
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/UserHandle;

    .line 785
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v47

    .line 786
    .restart local v47    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v47, :cond_38

    const/4 v3, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v3, 0x1

    return v3

    .line 774
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Z
    :cond_36
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_36

    .line 783
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_37
    const/16 v41, 0x0

    .local v41, "_arg2":Landroid/os/UserHandle;
    goto :goto_37

    .line 787
    .end local v41    # "_arg2":Landroid/os/UserHandle;
    .restart local v47    # "_result":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_38

    .line 792
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v47    # "_result":Z
    :sswitch_2a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_39

    .line 795
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/accounts/Account;

    .line 801
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 803
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 804
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/UserHandle;

    .line 809
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v45

    .line 810
    .local v45, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v45, :cond_3b

    .line 812
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v3, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 818
    :goto_3b
    const/4 v3, 0x1

    return v3

    .line 798
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Landroid/content/IntentSender;
    :cond_39
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_39

    .line 807
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_3a
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Landroid/os/UserHandle;
    goto :goto_3a

    .line 816
    .end local v41    # "_arg2":Landroid/os/UserHandle;
    .restart local v45    # "_result":Landroid/content/IntentSender;
    :cond_3b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 822
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Landroid/content/IntentSender;
    :sswitch_2b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 825
    .restart local v38    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->onAccountAccessed(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v3, 0x1

    return v3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

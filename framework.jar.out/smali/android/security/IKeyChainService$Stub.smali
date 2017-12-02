.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final TRANSACTION_containsCaAlias:I = 0xb

.field static final TRANSACTION_deleteCaCertificate:I = 0x7

.field static final TRANSACTION_getCaCertificateChainAliases:I = 0xd

.field static final TRANSACTION_getCaCertificates:I = 0x3

.field static final TRANSACTION_getCertificate:I = 0x2

.field static final TRANSACTION_getEncodedCaCertificate:I = 0xc

.field static final TRANSACTION_getSystemCaAliases:I = 0xa

.field static final TRANSACTION_getUserCaAliases:I = 0x9

.field static final TRANSACTION_hasGrant:I = 0xf

.field static final TRANSACTION_installCaCertificate:I = 0x4

.field static final TRANSACTION_installKeyPair:I = 0x5

.field static final TRANSACTION_removeKeyPair:I = 0x6

.field static final TRANSACTION_requestPrivateKey:I = 0x1

.field static final TRANSACTION_reset:I = 0x8

.field static final TRANSACTION_setGrant:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.security.IKeyChainService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.security.IKeyChainService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeyChainService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/security/IKeyChainService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 48
    :sswitch_0
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v15, 0x1

    return v15

    .line 53
    :sswitch_1
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    const/4 v15, 0x1

    return v15

    .line 63
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    move-result-object v14

    .line 67
    .local v14, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    const/4 v15, 0x1

    return v15

    .line 73
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[B
    :sswitch_3
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v14

    .line 77
    .restart local v14    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    const/4 v15, 0x1

    return v15

    .line 83
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[B
    :sswitch_4
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 86
    .local v3, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v15, 0x1

    return v15

    .line 92
    .end local v3    # "_arg0":[B
    :sswitch_5
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 96
    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 98
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 100
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[B[BLjava/lang/String;)Z

    move-result v13

    .line 102
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v13, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v15, 0x1

    return v15

    .line 103
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 108
    .end local v3    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v8    # "_arg2":[B
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_6
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->removeKeyPair(Ljava/lang/String;)Z

    move-result v13

    .line 112
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v13, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v15, 0x1

    return v15

    .line 113
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v13

    .line 122
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v13, :cond_2

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v15, 0x1

    return v15

    .line 123
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    move-result v13

    .line 130
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v13, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v15, 0x1

    return v15

    .line 131
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 136
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 138
    .local v10, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v10, :cond_4

    .line 140
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v15}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    :goto_4
    const/4 v15, 0x1

    return v15

    .line 144
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 150
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 152
    .restart local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v10, :cond_5

    .line 154
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v15}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    :goto_5
    const/4 v15, 0x1

    return v15

    .line 158
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 164
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    move-result v13

    .line 168
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v13, :cond_6

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v15, 0x1

    return v15

    .line 169
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_c
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    .line 179
    .local v5, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v14

    .line 180
    .restart local v14    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 182
    const/4 v15, 0x1

    return v15

    .line 178
    .end local v5    # "_arg1":Z
    .end local v14    # "_result":[B
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    .line 191
    .restart local v5    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v12

    .line 192
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 194
    const/4 v15, 0x1

    return v15

    .line 190
    .end local v5    # "_arg1":Z
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v7, 0x1

    .line 205
    .local v7, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v7}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v15, 0x1

    return v15

    .line 204
    .end local v7    # "_arg2":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 211
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v15, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    move-result v13

    .line 217
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v13, :cond_a

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v15, 0x1

    return v15

    .line 218
    :cond_a
    const/4 v15, 0x0

    goto :goto_a

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

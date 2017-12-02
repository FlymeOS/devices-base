.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore:I = 0x1a

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData:I = 0xa

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_dataManagementIntent:I = 0x4

.field static final TRANSACTION_dataManagementLabel:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getBackupQuota:I = 0x18

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_initializeDevice:I = 0x8

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xf

.field static final TRANSACTION_performBackup:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore:I = 0xe

.field static final TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
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
    const-string/jumbo v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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

    .line 345
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 43
    :sswitch_0
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v22, 0x1

    return v22

    .line 48
    :sswitch_1
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    move-result-object v19

    .line 50
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/16 v22, 0x1

    return v22

    .line 56
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v18

    .line 58
    .local v18, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v18, :cond_0

    .line 60
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    :goto_0
    const/16 v22, 0x1

    return v22

    .line 64
    :cond_0
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v18    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    move-result-object v19

    .line 72
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    const/16 v22, 0x1

    return v22

    .line 78
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v18

    .line 80
    .restart local v18    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v18, :cond_1

    .line 82
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_1
    const/16 v22, 0x1

    return v22

    .line 86
    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v18    # "_result":Landroid/content/Intent;
    :sswitch_5
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    move-result-object v19

    .line 94
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    const/16 v22, 0x1

    return v22

    .line 100
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v19

    .line 102
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    const/16 v22, 0x1

    return v22

    .line 108
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v16

    .line 110
    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    const/16 v22, 0x1

    return v22

    .line 116
    .end local v16    # "_result":J
    :sswitch_8
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v14

    .line 118
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/16 v22, 0x1

    return v22

    .line 124
    .end local v14    # "_result":I
    :sswitch_9
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2

    .line 127
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 133
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3

    .line 134
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 140
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 141
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v14

    .line 142
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/16 v22, 0x1

    return v22

    .line 130
    .end local v13    # "_arg2":I
    .end local v14    # "_result":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2

    .line 137
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 148
    .end local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    .line 151
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 156
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v14

    .line 157
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/16 v22, 0x1

    return v22

    .line 154
    .end local v14    # "_result":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_4

    .line 163
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :sswitch_b
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v14

    .line 165
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/16 v22, 0x1

    return v22

    .line 171
    .end local v14    # "_result":I
    :sswitch_c
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v21

    .line 173
    .local v21, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 175
    const/16 v22, 0x1

    return v22

    .line 179
    .end local v21    # "_result":[Landroid/app/backup/RestoreSet;
    :sswitch_d
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v16

    .line 181
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    const/16 v22, 0x1

    return v22

    .line 187
    .end local v16    # "_result":J
    :sswitch_e
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 191
    .local v6, "_arg0":J
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/PackageInfo;

    .line 192
    .local v12, "_arg1":[Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v12}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v14

    .line 193
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/16 v22, 0x1

    return v22

    .line 199
    .end local v6    # "_arg0":J
    .end local v12    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v14    # "_result":I
    :sswitch_f
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v15

    .line 201
    .local v15, "_result":Landroid/app/backup/RestoreDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v15, :cond_5

    .line 203
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    :goto_5
    const/16 v22, 0x1

    return v22

    .line 207
    :cond_5
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 213
    .end local v15    # "_result":Landroid/app/backup/RestoreDescription;
    :sswitch_10
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_6

    .line 216
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 221
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v14

    .line 222
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/16 v22, 0x1

    return v22

    .line 219
    .end local v14    # "_result":I
    :cond_6
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 228
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/16 v22, 0x1

    return v22

    .line 235
    :sswitch_12
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    move-result-wide v16

    .line 237
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    const/16 v22, 0x1

    return v22

    .line 243
    .end local v16    # "_result":J
    :sswitch_13
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_7

    .line 246
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 252
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_8

    .line 253
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 259
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 260
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v14

    .line 261
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/16 v22, 0x1

    return v22

    .line 249
    .end local v13    # "_arg2":I
    .end local v14    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .line 256
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 267
    .end local v10    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_14
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 270
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    move-result v14

    .line 271
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v22, 0x1

    return v22

    .line 277
    .end local v6    # "_arg0":J
    .end local v14    # "_result":I
    :sswitch_15
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    move-result v14

    .line 281
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/16 v22, 0x1

    return v22

    .line 287
    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_16
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/16 v22, 0x1

    return v22

    .line 294
    :sswitch_17
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_9

    .line 297
    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 303
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    const/4 v11, 0x1

    .line 304
    .local v11, "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v20

    .line 305
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v20, :cond_b

    const/16 v22, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/16 v22, 0x1

    return v22

    .line 300
    .end local v11    # "_arg1":Z
    .end local v20    # "_result":Z
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_9

    .line 303
    .end local v5    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    .line 306
    .restart local v11    # "_arg1":Z
    .restart local v20    # "_result":Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_b

    .line 311
    .end local v11    # "_arg1":Z
    .end local v20    # "_result":Z
    :sswitch_18
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_c

    const/4 v11, 0x1

    .line 316
    .restart local v11    # "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v16

    .line 317
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 319
    const/16 v22, 0x1

    return v22

    .line 315
    .end local v11    # "_arg1":Z
    .end local v16    # "_result":J
    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    .line 323
    .end local v9    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    .line 326
    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 331
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v14

    .line 332
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/16 v22, 0x1

    return v22

    .line 329
    .end local v14    # "_result":I
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_d

    .line 338
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_1a
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    move-result v14

    .line 340
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/16 v22, 0x1

    return v22

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

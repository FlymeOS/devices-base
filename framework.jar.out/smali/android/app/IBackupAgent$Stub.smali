.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final TRANSACTION_doBackup:I = 0x1

.field static final TRANSACTION_doFullBackup:I = 0x3

.field static final TRANSACTION_doMeasureFullBackup:I = 0x4

.field static final TRANSACTION_doQuotaExceeded:I = 0x5

.field static final TRANSACTION_doRestore:I = 0x2

.field static final TRANSACTION_doRestoreFile:I = 0x6

.field static final TRANSACTION_doRestoreFinished:I = 0x7

.field static final TRANSACTION_fail:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "android.app.IBackupAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/app/IBackupAgent;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 194
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x1

    return v6

    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 70
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 79
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v11

    .local v11, "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v6, p0

    .line 80
    invoke-virtual/range {v6 .. v11}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 81
    const/4 v6, 0x1

    return v6

    .line 60
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 67
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 74
    .end local v8    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 85
    .end local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 94
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 96
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 97
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 103
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 105
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v11

    .restart local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v15, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 106
    invoke-virtual/range {v12 .. v17}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 107
    const/4 v6, 0x1

    return v6

    .line 91
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v14    # "_arg1":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 100
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "_arg1":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 111
    .end local v9    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "_arg1":I
    :sswitch_3
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 114
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 120
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 122
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v33

    .line 123
    .local v33, "_arg2":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v7, v14, v1}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 124
    const/4 v6, 0x1

    return v6

    .line 117
    .end local v14    # "_arg1":I
    .end local v33    # "_arg2":Landroid/app/backup/IBackupManager;
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 128
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_4
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 132
    .local v28, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v32

    .line 133
    .local v32, "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    .line 134
    const/4 v6, 0x1

    return v6

    .line 138
    .end local v28    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_5
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 142
    .local v30, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 143
    .local v17, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJ)V

    .line 144
    const/4 v6, 0x1

    return v6

    .line 148
    .end local v17    # "_arg1":J
    .end local v30    # "_arg0":J
    :sswitch_6
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 151
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 157
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 159
    .restart local v17    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 161
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 165
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 167
    .local v22, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 169
    .local v24, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 171
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v27

    .local v27, "_arg8":Landroid/app/backup/IBackupManager;
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    .line 172
    invoke-virtual/range {v15 .. v27}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 173
    const/4 v6, 0x1

    return v6

    .line 154
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":J
    .end local v24    # "_arg6":J
    .end local v26    # "_arg7":I
    .end local v27    # "_arg8":Landroid/app/backup/IBackupManager;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 177
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 181
    .restart local v28    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v32

    .line 182
    .restart local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 183
    const/4 v6, 0x1

    return v6

    .line 187
    .end local v28    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/backup/IBackupManager;
    :sswitch_8
    const-string/jumbo v6, "android.app.IBackupAgent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 190
    .local v29, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    .line 191
    const/4 v6, 0x1

    return v6

    .line 45
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

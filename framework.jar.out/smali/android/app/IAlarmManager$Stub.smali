.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_getNextAlarmClock:I = 0x6

.field static final TRANSACTION_getNextWakeFromIdleTime:I = 0x5

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 154
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 60
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 62
    .local v10, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 64
    .local v12, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 66
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/PendingIntent;

    .line 73
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v16

    .line 75
    .local v16, "_arg7":Landroid/app/IAlarmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 77
    .local v17, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/WorkSource;

    .line 84
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v5, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AlarmManager$AlarmClockInfo;

    :goto_2
    move-object/from16 v5, p0

    .line 90
    invoke-virtual/range {v5 .. v19}, Landroid/app/IAlarmManager$Stub;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v5, 0x1

    return v5

    .line 70
    .end local v16    # "_arg7":Landroid/app/IAlarmListener;
    .end local v17    # "_arg8":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    .local v15, "_arg6":Landroid/app/PendingIntent;
    goto :goto_0

    .line 81
    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    .restart local v16    # "_arg7":Landroid/app/IAlarmListener;
    .restart local v17    # "_arg8":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    .local v18, "_arg9":Landroid/os/WorkSource;
    goto :goto_1

    .line 88
    .end local v18    # "_arg9":Landroid/os/WorkSource;
    :cond_2
    const/16 v19, 0x0

    .local v19, "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_2

    .line 96
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":J
    .end local v12    # "_arg4":J
    .end local v14    # "_arg5":I
    .end local v16    # "_arg7":Landroid/app/IAlarmListener;
    .end local v17    # "_arg8":Ljava/lang/String;
    .end local v19    # "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_2
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 99
    .local v20, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v27

    .line 100
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v27, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v5, 0x1

    return v5

    .line 101
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 106
    .end local v20    # "_arg0":J
    .end local v27    # "_result":Z
    :sswitch_3
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v5, 0x1

    return v5

    .line 115
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 124
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v23

    .line 125
    .local v23, "_arg1":Landroid/app/IAlarmListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v5, 0x1

    return v5

    .line 121
    .end local v23    # "_arg1":Landroid/app/IAlarmListener;
    :cond_4
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    .line 131
    .end local v22    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    move-result-wide v24

    .line 133
    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    const/4 v5, 0x1

    return v5

    .line 139
    .end local v24    # "_result":J
    :sswitch_6
    const-string/jumbo v5, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v26

    .line 143
    .local v26, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v26, :cond_5

    .line 145
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 149
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

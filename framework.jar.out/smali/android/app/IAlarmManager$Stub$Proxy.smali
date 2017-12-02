.class Landroid/app/IAlarmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 159
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "android.app.IAlarmManager"

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    return-object v2

    .line 301
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_0

    .line 304
    .end local v2    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :catchall_0
    move-exception v3

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v3
.end method

.method public getNextWakeFromIdleTime()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.IAlarmManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 282
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    return-wide v2

    .line 281
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v4
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    if-eqz p1, :cond_1

    .line 255
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 262
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    return-void

    .line 259
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v2

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw v2
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "listener"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 175
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 177
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    if-eqz p10, :cond_0

    .line 185
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    :goto_0
    if-eqz p11, :cond_1

    invoke-interface/range {p11 .. p11}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 192
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    if-eqz p13, :cond_2

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v3}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_2
    if-eqz p14, :cond_3

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v3}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_3
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 189
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v3

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v3

    .line 191
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 198
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 205
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAlarmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 228
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    return v2

    .line 225
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 227
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v3
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "zone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 243
    :catchall_0
    move-exception v2

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v2
.end method

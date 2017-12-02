.class Landroid/security/IKeystoreService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService$Stub;
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
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 648
    return-void
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "handle"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1349
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1354
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1357
    return v2

    .line 1353
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    throw v3
.end method

.method public addAuthToken([B)I
    .locals 6
    .param p1, "authToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1385
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1390
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    return v2

    .line 1389
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1389
    throw v3
.end method

.method public addRngEntropy([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1090
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1095
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1100
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    return v2

    .line 1099
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "chain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1440
    if-eqz p2, :cond_1

    .line 1441
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1447
    :goto_0
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1450
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1451
    invoke-virtual {p3, v1}, Landroid/security/keymaster/KeymasterCertificateChain;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    return v2

    .line 1445
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1454
    :catchall_0
    move-exception v3

    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1454
    throw v3
.end method

.method public begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "purpose"    # I
    .param p4, "pruneable"    # Z
    .param p5, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p6, "entropy"    # [B
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.security.IKeystoreService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    if-eqz p5, :cond_1

    .line 1255
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1261
    :goto_1
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1262
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1266
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    return-object v2

    :cond_0
    move v3, v4

    .line 1253
    goto :goto_0

    .line 1259
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1272
    :catchall_0
    move-exception v3

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1272
    throw v3

    .line 1269
    :cond_2
    const/4 v2, 0x0

    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_2
.end method

.method public clear_uid(J)I
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1072
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1075
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1077
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1082
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1085
    return v2

    .line 1081
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    throw v3
.end method

.method public del(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 732
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    return v2

    .line 731
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v3
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1033
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1046
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1049
    return v2

    .line 1045
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    throw v3
.end method

.method public exist(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 751
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    return v2

    .line 750
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v3
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1207
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1210
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    if-eqz p3, :cond_0

    .line 1214
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1220
    :goto_0
    if-eqz p4, :cond_1

    .line 1221
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1227
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1231
    sget-object v3, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    return-object v2

    .line 1218
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v3

    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1237
    throw v3

    .line 1225
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1234
    :cond_2
    const/4 v2, 0x0

    .local v2, "_result":Landroid/security/keymaster/ExportResult;
    goto :goto_2
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1317
    if-eqz p2, :cond_0

    .line 1318
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1324
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1325
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1326
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1329
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1339
    return-object v2

    .line 1322
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1335
    :catchall_0
    move-exception v3

    .line 1336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw v3

    .line 1332
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # Landroid/security/KeystoreArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    if-eqz p6, :cond_0

    .line 879
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Landroid/security/KeystoreArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 885
    :goto_0
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 890
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    return v2

    .line 883
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 889
    :catchall_0
    move-exception v3

    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 889
    throw v3
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1113
    if-eqz p2, :cond_1

    .line 1114
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1120
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1121
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    invoke-virtual {p6, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    return v2

    .line 1118
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v3

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1130
    throw v3
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 692
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    return-object v2

    .line 691
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    const-string/jumbo v0, "android.security.IKeystoreService"

    return-object v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "uid"    # I
    .param p5, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1144
    if-eqz p2, :cond_1

    .line 1145
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1151
    :goto_0
    if-eqz p3, :cond_2

    .line 1152
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1158
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1162
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1163
    invoke-virtual {p5, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    return v2

    .line 1149
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v3

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    throw v3

    .line 1156
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getState(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 673
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 676
    return v2

    .line 672
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    throw v3
.end method

.method public get_pubkey(Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 968
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    return-object v2

    .line 967
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    throw v3
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.security.IKeystoreService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    iget-object v4, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1025
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    return-wide v2

    .line 1024
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    throw v4
.end method

.method public grant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 987
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    return v2

    .line 986
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    throw v3
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "characteristics"    # Landroid/security/keymaster/KeyCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1180
    if-eqz p2, :cond_1

    .line 1181
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1187
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1189
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1194
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1195
    invoke-virtual {p7, v1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1202
    return v2

    .line 1185
    .end local v2    # "_result":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v3

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw v3
.end method

.method public import_key(Ljava/lang/String;[BII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 911
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    return v2

    .line 910
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 910
    throw v3
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "item"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 706
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 713
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    return v2

    .line 712
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    throw v3
.end method

.method public isEmpty(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 861
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return v2

    .line 860
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    throw v3
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1367
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1372
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    return v2

    .line 1369
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1371
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    throw v3
.end method

.method public is_hardware_backed(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1059
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1064
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    return v2

    .line 1063
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v3
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 770
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    return-object v2

    .line 769
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    throw v3
.end method

.method public lock(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 824
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    return v2

    .line 823
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    throw v3
.end method

.method public onDeviceOffBody()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1472
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    return v2

    .line 1471
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    throw v3
.end method

.method public onUserAdded(II)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1409
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    return v2

    .line 1408
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    throw v3
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 806
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    return v2

    .line 805
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v3
.end method

.method public onUserRemoved(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1427
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1430
    return v2

    .line 1426
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    throw v3
.end method

.method public reset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 787
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    return v2

    .line 786
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    throw v3
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 925
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 930
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 933
    return-object v2

    .line 929
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    throw v3
.end method

.method public ungrant(Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1002
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1006
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    return v2

    .line 1005
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    throw v3
.end method

.method public unlock(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "userPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 835
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 838
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 843
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    return v2

    .line 842
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw v3
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1286
    if-eqz p2, :cond_0

    .line 1287
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1293
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1294
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1297
    sget-object v3, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1307
    return-object v2

    .line 1291
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1303
    :catchall_0
    move-exception v3

    .line 1304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1303
    throw v3

    .line 1300
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/security/keymaster/OperationResult;
    goto :goto_1
.end method

.method public verify(Ljava/lang/String;[B[B)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.security.IKeystoreService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 944
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 945
    iget-object v3, p0, Landroid/security/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 950
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    return v2

    .line 949
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v3
.end method

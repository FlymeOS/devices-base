.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isConvertibleToFBE:I = 0x45

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountAppFuse:I = 0x46

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1526
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1527
    const-string/jumbo v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1515
    if-nez p0, :cond_0

    .line 1516
    return-object v1

    .line 1518
    :cond_0
    const-string/jumbo v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1519
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1520
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 1522
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1531
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 72
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
    .line 1537
    sparse-switch p1, :sswitch_data_0

    .line 2158
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 1539
    :sswitch_0
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1540
    const/4 v6, 0x1

    return v6

    .line 1543
    :sswitch_1
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v38

    .line 1546
    .local v38, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    const/4 v6, 0x1

    return v6

    .line 1551
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v38

    .line 1554
    .restart local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    const/4 v6, 0x1

    return v6

    .line 1559
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v57

    .line 1561
    .local v57, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    if-eqz v57, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    const/4 v6, 0x1

    return v6

    .line 1562
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1566
    .end local v57    # "result":Z
    :sswitch_4
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v26, 0x1

    .line 1569
    .local v26, "enable":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    const/4 v6, 0x1

    return v6

    .line 1568
    .end local v26    # "enable":Z
    :cond_1
    const/16 v26, 0x0

    goto :goto_1

    .line 1574
    :sswitch_5
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v57

    .line 1576
    .restart local v57    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    if-eqz v57, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    const/4 v6, 0x1

    return v6

    .line 1577
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1581
    .end local v57    # "result":Z
    :sswitch_6
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1584
    .local v39, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v59

    .line 1585
    .local v59, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    const/4 v6, 0x1

    return v6

    .line 1590
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_7
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1593
    .restart local v39    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v31, 0x1

    .line 1594
    .local v31, "force":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v52, 0x1

    .line 1595
    .local v52, "removeEncrypt":Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v31

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    const/4 v6, 0x1

    return v6

    .line 1593
    .end local v31    # "force":Z
    .end local v52    # "removeEncrypt":Z
    :cond_3
    const/16 v31, 0x0

    .restart local v31    # "force":Z
    goto :goto_3

    .line 1594
    :cond_4
    const/16 v52, 0x0

    goto :goto_4

    .line 1600
    .end local v31    # "force":Z
    .end local v39    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1603
    .restart local v39    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v53

    .line 1604
    .local v53, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    const/4 v6, 0x1

    return v6

    .line 1609
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_9
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 1612
    .local v48, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v49

    .line 1613
    .local v49, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1615
    const/4 v6, 0x1

    return v6

    .line 1618
    .end local v48    # "path":Ljava/lang/String;
    .end local v49    # "pids":[I
    :sswitch_a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1621
    .restart local v39    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 1622
    .local v62, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1624
    const/4 v6, 0x1

    return v6

    .line 1627
    .end local v39    # "mountPoint":Ljava/lang/String;
    .end local v62    # "state":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1631
    .local v7, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1633
    .local v8, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1635
    .local v9, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1637
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1639
    .local v11, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v12, 0x1

    .local v12, "external":Z
    :goto_5
    move-object/from16 v6, p0

    .line 1640
    invoke-virtual/range {v6 .. v12}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v59

    .line 1642
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v6, 0x1

    return v6

    .line 1639
    .end local v12    # "external":Z
    .end local v59    # "resultCode":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 1647
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v9    # "fstype":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1650
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v59

    .line 1651
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v6, 0x1

    return v6

    .line 1656
    .end local v7    # "id":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1660
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v31, 0x1

    .line 1661
    .local v31, "force":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v59

    .line 1662
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    const/4 v6, 0x1

    return v6

    .line 1660
    .end local v31    # "force":Z
    .end local v59    # "resultCode":I
    :cond_6
    const/16 v31, 0x0

    goto :goto_6

    .line 1667
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1671
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1673
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1675
    .restart local v11    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v51, 0x1

    .line 1676
    .local v51, "readOnly":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v7, v10, v11, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v59

    .line 1677
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    const/4 v6, 0x1

    return v6

    .line 1675
    .end local v51    # "readOnly":Z
    .end local v59    # "resultCode":I
    :cond_7
    const/16 v51, 0x0

    goto :goto_7

    .line 1682
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1686
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v31, 0x1

    .line 1687
    .restart local v31    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v59

    .line 1688
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    const/4 v6, 0x1

    return v6

    .line 1686
    .end local v31    # "force":Z
    .end local v59    # "resultCode":I
    :cond_8
    const/16 v31, 0x0

    goto :goto_8

    .line 1693
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1696
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v63

    .line 1697
    .local v63, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    if-eqz v63, :cond_9

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1699
    const/4 v6, 0x1

    return v6

    .line 1698
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 1702
    .end local v7    # "id":Ljava/lang/String;
    .end local v63    # "status":Z
    :sswitch_11
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1706
    .local v45, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1707
    .local v42, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v59

    .line 1708
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    const/4 v6, 0x1

    return v6

    .line 1713
    .end local v42    # "newId":Ljava/lang/String;
    .end local v45    # "oldId":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_12
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1716
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1717
    .restart local v48    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1719
    const/4 v6, 0x1

    return v6

    .line 1722
    .end local v7    # "id":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v34

    .line 1724
    .local v34, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1726
    const/4 v6, 0x1

    return v6

    .line 1729
    .end local v34    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v44

    .line 1733
    .local v44, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    const/4 v6, 0x1

    return v6

    .line 1738
    .end local v44    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    const/4 v6, 0x1

    return v6

    .line 1744
    :sswitch_16
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1746
    .local v14, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1747
    .local v15, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1749
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 1751
    .local v17, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "nonce":I
    move-object/from16 v13, p0

    move-object/from16 v16, v10

    .line 1752
    invoke-virtual/range {v13 .. v18}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    const/4 v6, 0x1

    return v6

    .line 1757
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "rawPath":Ljava/lang/String;
    .end local v15    # "canonicalPath":Ljava/lang/String;
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    :sswitch_17
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1761
    .local v30, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v31, 0x1

    .line 1763
    .local v31, "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 1765
    .restart local v17    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1766
    .restart local v18    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    const/4 v6, 0x1

    return v6

    .line 1761
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    .end local v31    # "force":Z
    :cond_a
    const/16 v31, 0x0

    .restart local v31    # "force":Z
    goto :goto_a

    .line 1771
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "force":Z
    :sswitch_18
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1774
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v63

    .line 1775
    .restart local v63    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    if-eqz v63, :cond_b

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    const/4 v6, 0x1

    return v6

    .line 1776
    :cond_b
    const/4 v6, 0x0

    goto :goto_b

    .line 1780
    .end local v30    # "filename":Ljava/lang/String;
    .end local v63    # "status":Z
    :sswitch_19
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1783
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1784
    .local v40, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1786
    const/4 v6, 0x1

    return v6

    .line 1789
    .end local v30    # "filename":Ljava/lang/String;
    .end local v40    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v25

    .line 1791
    .local v25, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    if-eqz v25, :cond_c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    const/4 v6, 0x1

    return v6

    .line 1792
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 1796
    .end local v25    # "emulated":Z
    :sswitch_1b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1798
    .local v47, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v53

    .line 1799
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    const/4 v6, 0x1

    return v6

    .line 1804
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_1c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v65

    .line 1806
    .local v65, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1807
    .restart local v47    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v65

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v53

    .line 1808
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    const/4 v6, 0x1

    return v6

    .line 1813
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    .end local v65    # "type":I
    :sswitch_1d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v65

    .line 1815
    .restart local v65    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1816
    .restart local v47    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v65

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v53

    .line 1817
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    const/4 v6, 0x1

    return v6

    .line 1822
    .end local v47    # "password":Ljava/lang/String;
    .end local v53    # "result":I
    .end local v65    # "type":I
    :sswitch_1e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v66

    .line 1824
    .local v66, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1825
    .local v46, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1826
    .local v19, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    move-object/from16 v2, v46

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v58

    .line 1827
    .local v58, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1829
    const/4 v6, 0x1

    return v6

    .line 1832
    .end local v19    # "_flags":I
    .end local v46    # "packageName":Ljava/lang/String;
    .end local v58    # "result":[Landroid/os/storage/StorageVolume;
    .end local v66    # "uid":I
    :sswitch_1f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1835
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1836
    .restart local v48    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1838
    const/4 v6, 0x1

    return v6

    .line 1841
    .end local v7    # "id":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v53

    .line 1843
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    const/4 v6, 0x1

    return v6

    .line 1848
    .end local v53    # "result":I
    :sswitch_21
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1852
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 1854
    .local v33, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1855
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v59

    .line 1856
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    const/4 v6, 0x1

    return v6

    .line 1861
    .end local v7    # "id":Ljava/lang/String;
    .end local v30    # "filename":Ljava/lang/String;
    .end local v33    # "gid":I
    .end local v59    # "resultCode":I
    :sswitch_22
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1863
    .local v21, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 1864
    .restart local v48    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v53

    .line 1865
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    const/4 v6, 0x1

    return v6

    .line 1870
    .end local v21    # "callingPkg":Ljava/lang/String;
    .end local v48    # "path":Ljava/lang/String;
    .end local v53    # "result":I
    :sswitch_23
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v53

    .line 1872
    .restart local v53    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    const/4 v6, 0x1

    return v6

    .line 1877
    .end local v53    # "result":I
    :sswitch_24
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v56

    .line 1879
    .local v56, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1881
    const/4 v6, 0x1

    return v6

    .line 1884
    .end local v56    # "result":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    const/4 v6, 0x1

    return v6

    .line 1890
    :sswitch_26
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1892
    .local v29, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1893
    .local v22, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    const/4 v6, 0x1

    return v6

    .line 1898
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1900
    .restart local v29    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1901
    .restart local v22    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1903
    const/4 v6, 0x1

    return v6

    .line 1906
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isConvertibleToFBE()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v59, 0x1

    .line 1908
    .restart local v59    # "resultCode":I
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    const/4 v6, 0x1

    return v6

    .line 1907
    .end local v59    # "resultCode":I
    :cond_d
    const/16 v59, 0x0

    .restart local v59    # "resultCode":I
    goto :goto_d

    .line 1913
    .end local v59    # "resultCode":I
    :sswitch_29
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1917
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1919
    .restart local v8    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1920
    .restart local v10    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v59

    .line 1921
    .restart local v59    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    const/4 v6, 0x1

    return v6

    .line 1926
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v59    # "resultCode":I
    :sswitch_2a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v36

    .line 1928
    .local v36, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    move-object/from16 v0, p3

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1930
    const/4 v6, 0x1

    return v6

    .line 1933
    .end local v36    # "lastMaintenance":J
    :sswitch_2b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 1935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1936
    const/4 v6, 0x1

    return v6

    .line 1939
    :sswitch_2c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    const/4 v6, 0x1

    return v6

    .line 1945
    :sswitch_2d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v24

    .line 1947
    .local v24, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1949
    const/4 v6, 0x1

    return v6

    .line 1952
    .end local v24    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1954
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v70

    .line 1955
    .local v70, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1957
    const/4 v6, 0x1

    return v6

    .line 1960
    .end local v19    # "_flags":I
    .end local v70    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1962
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v71

    .line 1963
    .local v71, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1965
    const/4 v6, 0x1

    return v6

    .line 1968
    .end local v19    # "_flags":I
    .end local v71    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_30
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 1970
    .local v68, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    const/4 v6, 0x1

    return v6

    .line 1975
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 1977
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 1978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    const/4 v6, 0x1

    return v6

    .line 1982
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 1984
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    const/4 v6, 0x1

    return v6

    .line 1989
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 1991
    .restart local v68    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v54

    .line 1992
    .local v54, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    move-object/from16 v0, p3

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1994
    const/4 v6, 0x1

    return v6

    .line 1997
    .end local v54    # "res":J
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1999
    .local v23, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    const/4 v6, 0x1

    return v6

    .line 2004
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2006
    .restart local v23    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    const/4 v6, 0x1

    return v6

    .line 2011
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2013
    .restart local v23    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 2014
    .local v50, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    const/4 v6, 0x1

    return v6

    .line 2019
    .end local v23    # "diskId":Ljava/lang/String;
    .end local v50    # "ratio":I
    :sswitch_37
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 2021
    .restart local v68    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 2022
    .local v43, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    const/4 v6, 0x1

    return v6

    .line 2027
    .end local v43    # "nickname":Ljava/lang/String;
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 2029
    .restart local v68    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2030
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2031
    .local v20, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    const/4 v6, 0x1

    return v6

    .line 2036
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    .end local v68    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2038
    .local v32, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    const/4 v6, 0x1

    return v6

    .line 2043
    .end local v32    # "fsUuid":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    const/4 v6, 0x1

    return v6

    .line 2049
    :sswitch_3b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2051
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2052
    .restart local v20    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    const/4 v6, 0x1

    return v6

    .line 2057
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    :sswitch_3c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v69

    .line 2059
    .local v69, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    const/4 v6, 0x1

    return v6

    .line 2064
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v69

    .line 2067
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2066
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v35

    .line 2068
    .local v35, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 2069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    const/4 v6, 0x1

    return v6

    .line 2073
    .end local v35    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2075
    .local v67, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2076
    .local v61, "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    .line 2077
    .local v27, "ephemeral":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v61

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->createUserKey(IIZ)V

    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    const/4 v6, 0x1

    return v6

    .line 2076
    .end local v27    # "ephemeral":Z
    :cond_e
    const/16 v27, 0x0

    goto :goto_e

    .line 2082
    .end local v61    # "serialNumber":I
    .end local v67    # "userId":I
    :sswitch_3f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2084
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->destroyUserKey(I)V

    .line 2085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2086
    const/4 v6, 0x1

    return v6

    .line 2089
    .end local v67    # "userId":I
    :sswitch_40
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2091
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2092
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v64

    .line 2093
    .local v64, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v60

    .line 2094
    .local v60, "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v61

    move-object/from16 v3, v64

    move-object/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->addUserKeyAuth(II[B[B)V

    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    const/4 v6, 0x1

    return v6

    .line 2099
    .end local v60    # "secret":[B
    .end local v61    # "serialNumber":I
    .end local v64    # "token":[B
    .end local v67    # "userId":I
    :sswitch_41
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2101
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->fixateNewestUserKeyAuth(I)V

    .line 2102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    const/4 v6, 0x1

    return v6

    .line 2106
    .end local v67    # "userId":I
    :sswitch_42
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2108
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2109
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v64

    .line 2110
    .restart local v64    # "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v60

    .line 2111
    .restart local v60    # "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v61

    move-object/from16 v3, v64

    move-object/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unlockUserKey(II[B[B)V

    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    const/4 v6, 0x1

    return v6

    .line 2116
    .end local v60    # "secret":[B
    .end local v61    # "serialNumber":I
    .end local v64    # "token":[B
    .end local v67    # "userId":I
    :sswitch_43
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2118
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockUserKey(I)V

    .line 2119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    const/4 v6, 0x1

    return v6

    .line 2123
    .end local v67    # "userId":I
    :sswitch_44
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2125
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isUserKeyUnlocked(I)Z

    move-result v57

    .line 2126
    .restart local v57    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    if-eqz v57, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    const/4 v6, 0x1

    return v6

    .line 2127
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 2131
    .end local v57    # "result":Z
    .end local v67    # "userId":I
    :sswitch_45
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v69

    .line 2133
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2134
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2135
    .restart local v61    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2136
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, v67

    move/from16 v3, v61

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 2137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2138
    const/4 v6, 0x1

    return v6

    .line 2141
    .end local v19    # "_flags":I
    .end local v61    # "serialNumber":I
    .end local v67    # "userId":I
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v69

    .line 2143
    .restart local v69    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2144
    .restart local v67    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2145
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, v67

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 2146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    const/4 v6, 0x1

    return v6

    .line 2150
    .end local v19    # "_flags":I
    .end local v67    # "userId":I
    .end local v69    # "volumeUuid":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 2152
    .local v41, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    .line 2153
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2155
    const/4 v6, 0x1

    return v6

    .line 1537
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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_33
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_42
        0x41 -> :sswitch_43
        0x42 -> :sswitch_44
        0x43 -> :sswitch_45
        0x44 -> :sswitch_46
        0x45 -> :sswitch_28
        0x46 -> :sswitch_47
        0x47 -> :sswitch_40
        0x48 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings$Stub;
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
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 378
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 610
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    return-object v2

    .line 616
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 619
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    throw v3
.end method

.method public checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 543
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    return-object v2

    .line 549
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 552
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw v3
.end method

.method public checkVoldPassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 689
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    return v2

    .line 686
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 688
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 688
    throw v3
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 456
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    return v2

    .line 453
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 455
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string/jumbo v0, "com.android.internal.widget.ILockSettings"

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v4, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 476
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    return-wide v2

    .line 475
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    throw v4
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 760
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    return v2

    .line 757
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 759
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw v3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 496
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    return-object v2

    .line 495
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw v3
.end method

.method public getStrongAuthForUser(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 853
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 856
    return v2

    .line 852
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    throw v3
.end method

.method public havePassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 725
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    return v2

    .line 722
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 724
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    throw v3
.end method

.method public havePattern(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 707
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    return v2

    .line 704
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 706
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v3
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 5
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 772
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 765
    return-void

    .line 775
    :catchall_0
    move-exception v2

    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    throw v2
.end method

.method public requireStrongAuth(II)V
    .locals 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    return-void

    .line 806
    :catchall_0
    move-exception v2

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw v2
.end method

.method public resetKeyStore(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-void

    .line 528
    :catchall_0
    move-exception v2

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return-void

    :cond_0
    move v2, v3

    .line 397
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v2

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    throw v2
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    return-void

    .line 595
    :catchall_0
    move-exception v2

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 595
    throw v2
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    return-void

    .line 513
    :catchall_0
    move-exception v2

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 415
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    return-void

    .line 419
    :catchall_0
    move-exception v2

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v2
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    return-void

    .line 742
    :catchall_0
    move-exception v2

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v2
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-void

    .line 436
    :catchall_0
    move-exception v2

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v2
.end method

.method public systemReady()V
    .locals 5
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

    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 811
    return-void

    .line 820
    :catchall_0
    move-exception v2

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    throw v2
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 5
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 787
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    return-void

    .line 790
    :catchall_0
    move-exception v2

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw v2
.end method

.method public userPresent(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget-object v2, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 833
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    return-void

    .line 835
    :catchall_0
    move-exception v2

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    throw v2
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    return-object v2

    .line 641
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 644
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v3
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 567
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    return-object v2

    .line 574
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 577
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v3
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.widget.ILockSettings"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 660
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v3, p0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    return-object v2

    .line 667
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 670
    .end local v2    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v3

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v3
.end method

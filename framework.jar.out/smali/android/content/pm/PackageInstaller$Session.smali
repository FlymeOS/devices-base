.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/content/pm/IPackageInstallerSession;

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 644
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 2

    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 674
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public fsync(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_0

    .line 731
    check-cast p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    .line 729
    return-void

    .line 733
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unrecognized stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 751
    throw v1
.end method

.method public openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 771
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 775
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 772
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 774
    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 715
    .local v6, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v0, v6}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 719
    .end local v6    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    .line 720
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 716
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 717
    .local v8, "e":Ljava/lang/RuntimeException;
    invoke-static {v8}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 718
    throw v8
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 795
    throw v1
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    .line 650
    return-void
.end method

.method public setStagingProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 665
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

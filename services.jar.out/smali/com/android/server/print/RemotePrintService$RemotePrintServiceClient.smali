.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 714
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    .line 715
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 714
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 881
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid printer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 4
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p2, "printerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 865
    .local v2, "printerInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 866
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v1

    .line 867
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_0
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 874
    .local v2, "printerIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 875
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 876
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    const/4 v4, 0x0

    .line 735
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 736
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    .line 740
    const/4 v4, -0x2

    .line 739
    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 742
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    return-object v3

    .line 741
    :catchall_0
    move-exception v3

    .line 742
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    throw v3

    .line 745
    .end local v0    # "identity":J
    :cond_0
    return-object v4
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 720
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 721
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 724
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    .line 725
    const/4 v5, -0x4

    const/4 v6, -0x2

    .line 724
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    return-object v3

    .line 726
    :catchall_0
    move-exception v3

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    throw v3

    .line 730
    .end local v0    # "identity":J
    :cond_0
    return-object v4
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 890
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 891
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 893
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 894
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    throw v3
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 833
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 834
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 836
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 839
    .local v2, "identity":J
    :try_start_0
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "identity":J
    :cond_0
    return-void

    .line 840
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    .line 841
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    throw v4
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 849
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    .line 850
    .local v3, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v3, :cond_0

    .line 851
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 852
    .local v2, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 855
    .local v0, "identity":J
    :try_start_0
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->-get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    .end local v0    # "identity":J
    .end local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_0
    return-void

    .line 856
    .restart local v0    # "identity":J
    .restart local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :catchall_0
    move-exception v4

    .line 857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    throw v4
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 751
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 754
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 756
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    return v3

    .line 755
    :catchall_0
    move-exception v3

    .line 756
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    throw v3

    .line 759
    .end local v0    # "identity":J
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 765
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 768
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 770
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 768
    return v3

    .line 769
    :catchall_0
    move-exception v3

    .line 770
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    throw v3

    .line 773
    .end local v0    # "identity":J
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public setProgress(Landroid/print/PrintJobId;F)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F

    .prologue
    .line 792
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 793
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 797
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    throw v3
.end method

.method public setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 805
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 806
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 809
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 810
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw v3
.end method

.method public setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 819
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 820
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 823
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 818
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 824
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 825
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    throw v3
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 778
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 779
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 782
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 783
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    throw v3
.end method

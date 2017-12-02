.class public final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "PrintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# direct methods
.method static synthetic -get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;

    .prologue
    .line 779
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 767
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 781
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start printing for finishing activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 788
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 789
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 790
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 780
    return-void
.end method

.method private destroyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 970
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 972
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 977
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 979
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 980
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 983
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 985
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    invoke-interface {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;->destroy()V

    .line 987
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    .line 967
    :cond_0
    return-void
.end method

.method private isDestroyedLocked()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 890
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 892
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 894
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 893
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 889
    return-void

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public kill(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 901
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 900
    return-void

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
    .param p5, "sequence"    # I

    .prologue
    .line 825
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 827
    .local v2, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v2, p5}, Landroid/print/ILayoutResultCallback;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 836
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 837
    return-void

    .line 828
    :catch_0
    move-exception v3

    .line 830
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrintManager"

    const-string/jumbo v5, "Error notifying for layout start"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    return-void

    .line 840
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 843
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 844
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 845
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 846
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 847
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 848
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    invoke-direct {v4, p0, p3, p5}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 849
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 851
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 823
    return-void

    .line 834
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 916
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 949
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-ne p1, v2, :cond_0

    .line 950
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 951
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    :cond_0
    monitor-exit v3

    .line 954
    if-eqz v0, :cond_1

    .line 956
    :try_start_1
    invoke-interface {v0}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 948
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 911
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 926
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 936
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 921
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 931
    return-void
.end method

.method public setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;

    .prologue
    .line 796
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 797
    :try_start_0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 798
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "destroyed":Z
    monitor-exit v3

    .line 801
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 803
    :try_start_1
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 796
    .end local v0    # "destroyed":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 804
    .restart local v0    # "destroyed":Z
    :catch_0
    move-exception v1

    .line 805
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 812
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 816
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 815
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 811
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 7
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
    .param p4, "sequence"    # I

    .prologue
    .line 859
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 861
    .local v2, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v2, p4}, Landroid/print/IWriteResultCallback;->onWriteStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 870
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 871
    return-void

    .line 862
    :catch_0
    move-exception v3

    .line 864
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrintManager"

    const-string/jumbo v5, "Error notifying for write start"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    return-void

    .line 874
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 877
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 878
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 879
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 880
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 881
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 882
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    invoke-direct {v4, p0, p3, p2, p4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 884
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 857
    return-void

    .line 868
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

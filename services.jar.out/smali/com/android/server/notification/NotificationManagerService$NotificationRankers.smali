.class public Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationRankers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3817
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3818
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 3817
    return-void
.end method

.method private notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    .prologue
    .line 3880
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 3881
    .local v1, "ranker":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 3883
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3, p4}, Landroid/service/notification/INotificationListener;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3879
    :goto_0
    return-void

    .line 3884
    :catch_0
    move-exception v0

    .line 3885
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify ranker (enqueued): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3835
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 3840
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .prologue
    .line 3823
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 3824
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification ranker service"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 3825
    const-string/jumbo v1, "android.service.notification.NotificationRankerService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 3826
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 3827
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_RANKER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 3828
    const-string/jumbo v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 3829
    const v1, 0x1040486

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 3830
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3854
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3855
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v9, v0, v7}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 3860
    .local v9, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3861
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    .line 3862
    .local v8, "sbnVisible":Z
    if-eqz v8, :cond_0

    .line 3866
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    .line 3867
    .local v4, "importance":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isImportanceFromUser()Z

    move-result v5

    .line 3868
    .local v5, "fromUser":Z
    invoke-virtual {v9, v2}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 3869
    .local v3, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3853
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "importance":I
    .end local v5    # "fromUser":Z
    .end local v8    # "sbnVisible":Z
    :cond_1
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 6
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3907
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPackagesChanged removingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3908
    const-string/jumbo v5, " pkgList="

    .line 3907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3908
    if-nez p2, :cond_1

    .line 3907
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3910
    return-void

    .line 3908
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 3913
    :cond_2
    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    if-eqz p1, :cond_4

    .line 3906
    :cond_3
    return-void

    .line 3914
    :cond_4
    array-length v3, p2

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, p2, v1

    .line 3915
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3916
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 3914
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3844
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 3849
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 6
    .param p1, "user"    # I

    .prologue
    .line 3895
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3896
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3897
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 3898
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3899
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->unregisterService(Landroid/os/IInterface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v1    # "i":I
    :cond_0
    monitor-exit v4

    .line 3902
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    .line 3894
    return-void

    .line 3895
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected registerRanker()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3924
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3925
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "could not start ranker service: no package specified!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    return-void

    .line 3929
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 3928
    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    .line 3930
    .local v2, "rankerComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3931
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3932
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3933
    .local v1, "rankerComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3934
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "found multiple ranker services:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 3936
    .restart local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerSystemService(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 3939
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "could not start ranker service: none found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

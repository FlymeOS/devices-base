.class Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;,
        Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintServiceRecS"


# instance fields
.field private final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/printservice/recommendation/IRecommendationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callbacks"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 136
    new-instance v2, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {v2, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 139
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 143
    const v5, 0x4000001

    .line 142
    invoke-virtual {v2, v1, v4, v5, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 145
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemotePrintServiceRecS"

    const-string/jumbo v3, "Could not connect to print service recommendation service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 84
    iget-object v5, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 85
    new-instance v6, Landroid/content/Intent;

    .line 86
    const-string/jumbo v7, "android.printservice.recommendation.RecommendationService"

    .line 85
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 87
    const v8, 0x10000084

    .line 84
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 91
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " instead of exactly one service found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_0
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v1, "installedService":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    .line 97
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 98
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 96
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v4, "serviceName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 101
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 100
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 104
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Cannot read appInfo for service"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 108
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Service is not part of the system"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_2
    const-string/jumbo v5, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    .line 112
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 113
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    const-string/jumbo v7, " does not require permission "

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    const-string/jumbo v7, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v3, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object v3
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v2

    .line 158
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "RemotePrintServiceRecS"

    const-string/jumbo v3, "Could not unregister callbacks"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const-string/jumbo v0, "RemotePrintServiceRecS"

    const-string/jumbo v1, "Service still connected on finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 184
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void
.end method

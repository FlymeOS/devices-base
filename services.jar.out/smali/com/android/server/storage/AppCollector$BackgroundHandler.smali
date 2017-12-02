.class Lcom/android/server/storage/AppCollector$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_START_LOADING_SIZES:I


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field final synthetic this$0:Lcom/android/server/storage/AppCollector;


# direct methods
.method constructor <init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/AppCollector;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;
    .param p5, "um"    # Landroid/os/UserManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    iput-object p3, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 127
    iput-object p4, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 128
    iput-object p5, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 132
    :cond_0
    return-void

    .line 135
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 136
    const/16 v10, 0x2200

    .line 135
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v8, "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 141
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mUm:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    mul-int v3, v9, v10

    .line 148
    .local v3, "count":I
    if-nez v3, :cond_3

    .line 149
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-static {v9}, Lcom/android/server/storage/AppCollector;->-get0(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 153
    :cond_3
    new-instance v4, Lcom/android/server/storage/AppCollector$StatsObserver;

    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-direct {v4, v9, v3}, Lcom/android/server/storage/AppCollector$StatsObserver;-><init>(Lcom/android/server/storage/AppCollector;I)V

    .line 154
    .local v4, "observer":Lcom/android/server/storage/AppCollector$StatsObserver;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "user$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 155
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 156
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/server/storage/AppCollector$BackgroundHandler;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v11, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

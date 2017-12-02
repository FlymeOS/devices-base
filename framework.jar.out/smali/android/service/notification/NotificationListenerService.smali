.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$MyHandler;,
        Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$RankingMap;
    }
.end annotation


# static fields
.field public static final HINT_HOST_DISABLE_CALL_EFFECTS:I = 0x4

.field public static final HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final HINT_HOST_DISABLE_NOTIFICATION_EFFECTS:I = 0x2

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2

.field public static final TRIM_FULL:I = 0x0

.field public static final TRIM_LIGHT:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isConnected:Z

.field protected mCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected mSystemContext:Landroid/content/Context;

.field protected mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;


# direct methods
.method static synthetic -get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/notification/NotificationListenerService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return v0
.end method

.method static synthetic -get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/service/notification/NotificationListenerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "["

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "]"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    .line 79
    return-void
.end method

.method private applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 992
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 991
    return-void
.end method

.method private createLegacyIconExtras(Landroid/app/Notification;)V
    .locals 7
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 828
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 829
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 830
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 831
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.icon"

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    iput v4, p1, Landroid/app/Notification;->icon:I

    .line 834
    :cond_0
    if-eqz v1, :cond_1

    .line 835
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 836
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 837
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 838
    .local v2, "largeIconBits":Landroid/graphics/Bitmap;
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.largeIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 839
    iput-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 827
    .end local v2    # "largeIconBits":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private maybePopulateRemoteViews(Landroid/app/Notification;)V
    .locals 6
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 853
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 854
    .local v2, "content":Landroid/widget/RemoteViews;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 855
    .local v0, "big":Landroid/widget/RemoteViews;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 857
    .local v3, "headsUp":Landroid/widget/RemoteViews;
    iput-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 858
    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 859
    iput-object v3, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 847
    .end local v0    # "big":Landroid/widget/RemoteViews;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "content":Landroid/widget/RemoteViews;
    .end local v3    # "headsUp":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method public static requestRebind(Landroid/content/ComponentName;)V
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 795
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 794
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 797
    .local v1, "noMan":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/app/INotificationManager;->requestBindListener(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 213
    new-instance v0, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method public final cancelAllNotifications()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 404
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 405
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 404
    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    .line 375
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 374
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final cancelNotifications([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 445
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .prologue
    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "trim"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 13
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "trim"    # I

    .prologue
    const/4 v12, 0x0

    .line 557
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v9

    if-nez v9, :cond_0

    .line 558
    return-object v12

    .line 560
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v9

    .line 561
    iget-object v10, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 560
    invoke-interface {v9, v10, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 562
    .local v7, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 563
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 564
    .local v1, "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 565
    .local v0, "N":I
    const/4 v4, 0x0

    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 566
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/StatusBarNotification;

    .line 567
    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 570
    .local v6, "notification":Landroid/app/Notification;
    :try_start_1
    invoke-direct {p0, v6}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    .line 572
    invoke-direct {p0, v6}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    if-nez v1, :cond_1

    .line 575
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 579
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 578
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 586
    .end local v0    # "N":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v8    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v3

    .line 587
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Unable to contact notification manager"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    return-object v12

    .line 582
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 583
    :try_start_3
    invoke-interface {v5, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 585
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v9
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    return-object v0

    .line 1000
    :cond_0
    return-object p0
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 637
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 639
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    return v3
.end method

.method public final getCurrentListenerHints()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 608
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return v3
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 338
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    .line 340
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method protected isBound()Z
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 726
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 744
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 742
    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    .prologue
    .line 319
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 223
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 236
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 309
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 257
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 281
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v1, :cond_0

    .line 763
    new-instance v1, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v1, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 765
    :cond_0
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    .line 766
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 767
    .local v0, "noMan":Landroid/app/INotificationManager;
    new-instance v1, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 768
    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    .line 769
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 761
    return-void
.end method

.method public final requestInterruptionFilter(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 686
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    .line 687
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 686
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final requestListenerHints(I)V
    .locals 3
    .param p1, "hints"    # I

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 663
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final requestUnbind()V
    .locals 3

    .prologue
    .line 814
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    .line 817
    .local v1, "noMan":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 819
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .end local v1    # "noMan":Landroid/app/INotificationManager;
    :cond_0
    return-void

    .line 820
    .restart local v1    # "noMan":Landroid/app/INotificationManager;
    :catch_0
    move-exception v0

    .line 821
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 465
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setOnNotificationPostedTrim(I)V
    .locals 3
    .param p1, "trim"    # I

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 494
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAsSystemService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 783
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 780
    .end local v0    # "noMan":Landroid/app/INotificationManager;
    :cond_0
    return-void
.end method

.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 246
    return-void
.end method

.method private static checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    return-void
.end method

.method private fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 325
    iget v0, p1, Landroid/app/Notification;->icon:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 323
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getService()Landroid/app/INotificationManager;
    .locals 2

    .prologue
    .line 238
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v1

    .line 241
    :cond_0
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 243
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v1
.end method

.method public static zenModeFromInterruptionFilter(II)I
    .locals 1
    .param p0, "interruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 1013
    packed-switch p0, :pswitch_data_0

    .line 1018
    return p1

    .line 1014
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1015
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1016
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1017
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static zenModeToInterruptionFilter(I)I
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 1002
    packed-switch p0, :pswitch_data_0

    .line 1007
    const/4 v0, 0x0

    return v0

    .line 1003
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1004
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1005
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 1006
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 3
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    .prologue
    .line 518
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 520
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public areNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 601
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 603
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 346
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 344
    return-void
.end method

.method public cancelAll()V
    .locals 6

    .prologue
    .line 370
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 371
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": cancelAll()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 354
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 355
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": cancel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .prologue
    .line 948
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 949
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v5, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v3, v5}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 953
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 954
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 955
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 501
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAutomaticZenRules()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v13

    .line 474
    .local v13, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v13}, Landroid/app/INotificationManager;->getZenRules()Ljava/util/List;

    move-result-object v12

    .line 475
    .local v12, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v11, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 477
    .local v9, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v14, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 478
    iget-object v3, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget v4, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v4

    iget-boolean v5, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 479
    iget-wide v6, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 477
    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V

    invoke-interface {v11, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v9    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v10    # "rule$iterator":Ljava/util/Iterator;
    .end local v11    # "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    .end local v12    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :catch_0
    move-exception v8

    .line 483
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 481
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v10    # "rule$iterator":Ljava/util/Iterator;
    .restart local v11    # "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    .restart local v12    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :cond_0
    return-object v11
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 3

    .prologue
    .line 970
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 972
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 386
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getImportance()I
    .locals 3

    .prologue
    .line 589
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 591
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 3

    .prologue
    .line 650
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 652
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 691
    .local v4, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 693
    new-instance v3, Landroid/util/ArraySet;

    array-length v5, v2

    invoke-direct {v3, v5}, Landroid/util/ArraySet;-><init>(I)V

    .line 694
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 695
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    return-object v3

    .line 699
    .end local v1    # "i":I
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    return-object v5
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "owner"    # Landroid/content/ComponentName;

    .prologue
    .line 456
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 458
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getZenMode()I
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 434
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 446
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isNotificationPolicyAccessGranted()Z
    .locals 3

    .prologue
    .line 624
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 626
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 636
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 410
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 396
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 398
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 266
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 284
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 282
    return-void
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 292
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 293
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 294
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 297
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 299
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string/jumbo v3, "Notification.sound"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_1

    .line 305
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_1

    .line 306
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid notification (no valid small icon): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_1
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    invoke-static {p3}, Landroid/app/Notification$Builder;->maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v5

    .line 313
    .local v5, "copy":Landroid/app/Notification;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v4, p2

    .line 313
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 315
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget v2, v6, v2

    if-eq p2, v2, :cond_3

    .line 316
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: id corrupted: sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", got back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_3
    return-void

    .line 318
    :catch_0
    move-exception v8

    .line 319
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 563
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 577
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final setInterruptionFilter(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 992
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 994
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 668
    const-string/jumbo v2, "policy"

    invoke-static {v2, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 671
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 679
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 681
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 422
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    .prologue
    .line 540
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 542
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

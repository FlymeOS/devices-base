.class final Landroid/service/notification/StatusBarNotification$FlymeInjector;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/StatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 14
    .param p0, "src"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 524
    const/4 v7, 0x0

    .line 526
    .local v7, "notification":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->clone()Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "notification":Landroid/app/Notification;
    move-object v12, v7

    .line 529
    .end local v7    # "notification":Landroid/app/Notification;
    .local v12, "notification":Landroid/app/Notification;
    :goto_0
    if-nez v12, :cond_0

    .line 531
    :try_start_1
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    .end local v12    # "notification":Landroid/app/Notification;
    .restart local v7    # "notification":Landroid/app/Notification;
    :try_start_2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 536
    :goto_1
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    .line 536
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 538
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    .line 539
    return-object v0

    .line 527
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    .local v7, "notification":Landroid/app/Notification;
    :catch_0
    move-exception v13

    .local v13, "throwable":Ljava/lang/Throwable;
    move-object v12, v7

    .restart local v12    # "notification":Landroid/app/Notification;
    goto :goto_0

    .line 533
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v13

    .restart local v13    # "throwable":Ljava/lang/Throwable;
    move-object v7, v12

    .end local v12    # "notification":Landroid/app/Notification;
    .local v7, "notification":Landroid/app/Notification;
    goto :goto_1

    .end local v13    # "throwable":Ljava/lang/Throwable;
    :catch_2
    move-exception v13

    .restart local v13    # "throwable":Ljava/lang/Throwable;
    goto :goto_1

    .end local v7    # "notification":Landroid/app/Notification;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    .restart local v12    # "notification":Landroid/app/Notification;
    :cond_0
    move-object v7, v12

    .end local v12    # "notification":Landroid/app/Notification;
    .restart local v7    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method static cloneLight(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "src"    # Landroid/service/notification/StatusBarNotification;
    .param p1, "dest"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 518
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-result-object v0

    iput-object v0, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    .line 519
    return-object p1
.end method

.method static initFlymeExtraFields(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 501
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;-><init>()V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    .line 499
    return-void
.end method

.method static initFlymeExtraFields(Landroid/service/notification/StatusBarNotification;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 507
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-direct {v0, p1}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    .line 505
    return-void
.end method

.method static writeToParcel(Landroid/service/notification/StatusBarNotification;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 513
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v0, p1, p2}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    return-void
.end method

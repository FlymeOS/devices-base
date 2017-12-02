.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 958
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 960
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 961
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 962
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 963
    if-eqz p4, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 965
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 964
    invoke-static {v0, v1, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->-wrap0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 959
    :goto_0
    return-void

    .line 969
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_0
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 988
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 989
    check-cast v7, Landroid/app/NotificationManager;

    .line 991
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    invoke-virtual {v7, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 993
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 994
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    .line 996
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result v1

    .line 995
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 997
    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 998
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string/jumbo v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v6

    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 975
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 976
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    .line 978
    const/4 v1, -0x1

    .line 977
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v6

    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

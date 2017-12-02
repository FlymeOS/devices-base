.class Lcom/android/server/notification/NotificationManagerService$TrimCache;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimCache"
.end annotation


# instance fields
.field heavy:Landroid/service/notification/StatusBarNotification;

.field sbnClone:Landroid/service/notification/StatusBarNotification;

.field sbnCloneLight:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3796
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3797
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    .line 3796
    return-void
.end method


# virtual methods
.method ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;
    .locals 2
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3802
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 3803
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 3805
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    return-object v0

    .line 3807
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_2

    .line 3808
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 3810
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

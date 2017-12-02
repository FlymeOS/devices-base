.class Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationRankerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationRankingServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationRankerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationRankerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationRankerService;

    .prologue
    .line 220
    iput-object p1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankerService;Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationRankerService;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;-><init>(Landroid/service/notification/NotificationRankerService;)V

    return-void
.end method


# virtual methods
.method public onNotificationActionClick(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "actionIndex"    # I

    .prologue
    .line 261
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 262
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 263
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 264
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 265
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 253
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 254
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    .locals 5
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "importance"    # I
    .param p3, "user"    # Z

    .prologue
    const/4 v4, 0x1

    .line 226
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 232
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 233
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 234
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 235
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 236
    iget-object v3, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-static {v3}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void

    .line 227
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationRankers"

    const-string/jumbo v4, "onNotificationEnqueued: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    return-void

    .line 235
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onNotificationRemovedReason(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # I

    .prologue
    .line 271
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 272
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 273
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 274
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 275
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public onNotificationVisibilityChanged(Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "visible"    # Z

    .prologue
    .line 242
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 243
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 244
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 245
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 246
    iget-object v1, p0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;->this$0:Landroid/service/notification/NotificationRankerService;

    invoke-static {v1}, Landroid/service/notification/NotificationRankerService;->-get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void

    .line 245
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

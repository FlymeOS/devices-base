.class final Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/RankingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RankingHandlerWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3246
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3250
    :goto_0
    return-void

    .line 3253
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap25(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    goto :goto_0

    .line 3256
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap26(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 3251
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    .locals 4
    .param p1, "recon"    # Lcom/android/server/notification/RankingReconsideration;

    .prologue
    .line 3268
    const/16 v3, 0x3e8

    .line 3267
    invoke-static {p0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3269
    .local v2, "m":Landroid/os/Message;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 3270
    .local v0, "delay":J
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3266
    return-void
.end method

.method public requestSort()V
    .locals 1

    .prologue
    const/16 v0, 0x3e9

    .line 3262
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->removeMessages(I)V

    .line 3263
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendEmptyMessage(I)Z

    .line 3261
    return-void
.end method

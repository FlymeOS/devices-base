.class final Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3216
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3219
    :goto_0
    return-void

    .line 3224
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap29(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    goto :goto_0

    .line 3227
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 3230
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 3233
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap23(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_0

    .line 3236
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap24(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_0

    .line 3221
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

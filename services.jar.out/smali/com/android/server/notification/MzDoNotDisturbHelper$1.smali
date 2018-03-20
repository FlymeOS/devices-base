.class Lcom/android/server/notification/MzDoNotDisturbHelper$1;
.super Landroid/os/Handler;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V

    .line 127
    invoke-static {v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set1(Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set0(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z

    .line 129
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V

    .line 134
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set0(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set1(Z)Z

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

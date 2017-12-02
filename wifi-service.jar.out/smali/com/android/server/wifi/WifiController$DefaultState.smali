.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 355
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 425
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiController.handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 358
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->-set3(Lcom/android/server/wifi/WifiController;Z)Z

    .line 359
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v8}, Lcom/android/server/wifi/WifiController;->-set0(Lcom/android/server/wifi/WifiController;Z)Z

    .line 360
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;)V

    .line 427
    :cond_0
    :goto_0
    :pswitch_1
    return v9

    .line 363
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set3(Lcom/android/server/wifi/WifiController;Z)Z

    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 373
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 372
    if-ne v1, v4, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 375
    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26005

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 383
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set0(Lcom/android/server/wifi/WifiController;Z)Z

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 394
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 396
    .local v0, "pluggedType":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get13(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->-set2(Lcom/android/server/wifi/WifiController;I)I

    goto :goto_0

    .line 398
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 400
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 419
    .end local v0    # "pluggedType":I
    .end local v2    # "triggerTime":J
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, v9}, Lcom/android/server/wifi/WifiController;->-set1(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 422
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v4, "DEFERRED_TOGGLE ignored due to state change"

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

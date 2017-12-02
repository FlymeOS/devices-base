.class final Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;
.super Landroid/os/Handler;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 163
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v4, v4, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "User inactivity timeout reached"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    goto :goto_0

    .line 180
    :pswitch_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    .line 181
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    .line 182
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    if-eqz v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->logSessionDuration()V

    .line 186
    :cond_2
    const/4 v0, 0x0

    .line 187
    .local v0, "demoUser":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v5, :cond_4

    .line 189
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 190
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    move-object v0, v2

    .line 197
    .end local v0    # "demoUser":Landroid/content/pm/UserInfo;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_4
    if-nez v0, :cond_5

    .line 200
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v5, :cond_6

    .line 199
    :goto_1
    or-int/lit16 v1, v4, 0x200

    .line 201
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;

    move-result-object v4

    const-string/jumbo v5, "Demo"

    invoke-virtual {v4, v5, v1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 204
    .end local v1    # "flags":I
    :cond_5
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget v4, v4, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4, v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V

    .line 206
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v4}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    goto/16 :goto_0

    .line 200
    :cond_6
    const/16 v4, 0x100

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

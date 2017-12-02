.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1121
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1125
    :goto_0
    return-void

    .line 1128
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap18(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_0

    .line 1132
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap16(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_0

    .line 1136
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->-wrap6(Lcom/android/server/display/DisplayManagerService;II)V

    goto :goto_0

    .line 1140
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_0

    .line 1144
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get1(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get3(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1148
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class final Lcom/android/server/am/ActivityManagerService$KillHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KillHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1594
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x40

    .line 1599
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1609
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1598
    :goto_0
    return-void

    .line 1602
    :pswitch_0
    const-string/jumbo v0, "killProcessGroup"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1603
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1604
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
    .end packed-switch
.end method

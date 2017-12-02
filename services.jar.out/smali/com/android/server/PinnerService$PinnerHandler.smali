.class final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PinnerHandler"
.end annotation


# static fields
.field static final PIN_CAMERA_MSG:I = 0xfa0

.field static final PIN_ONSTART_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/PinnerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 365
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 386
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 370
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/PinnerService;->-wrap0(Lcom/android/server/PinnerService;I)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-wrap1(Lcom/android/server/PinnerService;)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

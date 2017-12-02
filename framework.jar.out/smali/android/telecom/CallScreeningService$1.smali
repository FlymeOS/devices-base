.class Landroid/telecom/CallScreeningService$1;
.super Landroid/os/Handler;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method constructor <init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/CallScreeningService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 65
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v2, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/ICallScreeningAdapter;

    invoke-static {v2, v1}, Landroid/telecom/CallScreeningService;->-set0(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 66
    iget-object v2, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    .line 67
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-static {v1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    .line 66
    invoke-virtual {v2, v1}, Landroid/telecom/CallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 68
    throw v1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

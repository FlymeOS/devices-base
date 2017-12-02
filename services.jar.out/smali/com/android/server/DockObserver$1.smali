.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;
    .param p2, "$anonymous0"    # Z

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-wrap0(Lcom/android/server/DockObserver;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-get5(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 231
    return v2

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;II)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-wrap1(Lcom/android/server/wifi/SoftApManager;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xb

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;II)V

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 233
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

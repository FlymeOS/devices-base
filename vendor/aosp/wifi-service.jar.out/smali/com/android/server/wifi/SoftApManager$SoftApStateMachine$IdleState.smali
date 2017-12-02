.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 213
    :goto_0
    return v5

    .line 196
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v3, 0xc

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;II)V

    .line 197
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap0(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 198
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v3, 0xd

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;II)V

    .line 200
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, "reason":I
    if-ne v1, v5, :cond_1

    .line 204
    const/4 v0, 0x1

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v3, 0xe

    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;II)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

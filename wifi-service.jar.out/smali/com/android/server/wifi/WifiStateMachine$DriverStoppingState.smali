.class Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 5039
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5042
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 5044
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 5063
    const/4 v1, 0x0

    return v1

    .line 5046
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 5047
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    .line 5048
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5065
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 5059
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5060
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 5044
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_1
        0x2000e -> :sswitch_1
        0x20047 -> :sswitch_1
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_1
        0x2004b -> :sswitch_1
        0x2005a -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method

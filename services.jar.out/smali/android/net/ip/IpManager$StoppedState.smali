.class Landroid/net/ip/IpManager$StoppedState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1083
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap15(Landroid/net/ip/IpManager;)V

    .line 1085
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;)V

    .line 1086
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get15(Landroid/net/ip/IpManager;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1087
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap13(Landroid/net/ip/IpManager;I)V

    .line 1088
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2, v3}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    .line 1082
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1094
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1127
    return v2

    .line 1099
    :sswitch_0
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 1100
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1130
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1131
    const/4 v0, 0x1

    return v0

    .line 1104
    :sswitch_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1108
    :sswitch_3
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1113
    :sswitch_4
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ProxyInfo;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1114
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1118
    :sswitch_5
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    goto :goto_0

    .line 1123
    :sswitch_6
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unexpected CMD_ON_QUIT (already stopped)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x30005 -> :sswitch_6
    .end sparse-switch
.end method

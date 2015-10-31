.class Lcom/android/server/wifi/WifiStateMachine$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v3, 0x2005f

    .line 980
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 986
    :cond_2
    const-string v1, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$4;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScanAsync()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0
.end method

.class Lcom/android/server/policy/GlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1096
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1097
    if-eqz v2, :cond_2

    .line 1099
    :cond_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1095
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1103
    :cond_2
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    .line 1106
    if-eqz v2, :cond_1

    .line 1108
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set2(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1109
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0
.end method

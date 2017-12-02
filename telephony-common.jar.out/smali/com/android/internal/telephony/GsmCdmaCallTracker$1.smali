.class Lcom/android/internal/telephony/GsmCdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 108
    const-string/jumbo v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    const-string/jumbo v4, "phoneinECMState"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    .local v2, "isInEcm":Z
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED isInEcm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 114
    if-nez v2, :cond_2

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 128
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->onExitedEcmMode()V

    goto :goto_0

    .line 106
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    .end local v2    # "isInEcm":Z
    .end local v3    # "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    return-void
.end method

.class Lcom/android/server/net/NetworkPolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 777
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 779
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    return-void

    .line 781
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 784
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 787
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    .line 788
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    if-ne v0, v2, :cond_1

    .line 790
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 794
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 773
    :cond_2
    return-void

    .line 781
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 784
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

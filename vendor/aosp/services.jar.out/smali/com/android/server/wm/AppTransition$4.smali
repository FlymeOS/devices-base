.class Lcom/android/server/wm/AppTransition$4;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field final synthetic val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;
    .param p2, "val$future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition$4;->val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1760
    const/4 v1, 0x0

    .line 1762
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-interface {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1766
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1767
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/wm/AppTransition;->-set0(Lcom/android/server/wm/AppTransition;Z)Z

    .line 1768
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    .line 1769
    iget-object v4, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;

    move-result-object v4

    .line 1770
    iget-object v5, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v5}, Lcom/android/server/wm/AppTransition;->-get4(Lcom/android/server/wm/AppTransition;)Z

    move-result v5

    .line 1769
    const/4 v6, 0x0

    .line 1768
    invoke-virtual {v2, v1, v4, v6, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1771
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/wm/AppTransition;->-set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;

    .line 1772
    if-eqz v1, :cond_0

    .line 1773
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->-get4(Lcom/android/server/wm/AppTransition;)Z

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowManagerService;->prolongAnimationsFromSpecs([Landroid/view/AppTransitionAnimationSpec;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1776
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1759
    return-void

    .line 1763
    .restart local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/wm/AppTransition;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to fetch app transition specs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1766
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

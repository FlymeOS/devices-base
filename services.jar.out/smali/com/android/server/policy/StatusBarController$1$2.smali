.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$closeAnimation:Landroid/view/animation/Animation;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;
    .param p2, "val$openAnimation"    # Landroid/view/animation/Animation;
    .param p3, "val$closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iput-object p2, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 64
    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v5, v5, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v4

    .line 65
    .local v4, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v4, :cond_1

    .line 66
    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    .line 67
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    .line 66
    invoke-static {v5, v6}, Lcom/android/server/policy/StatusBarController;->-wrap0(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v2

    .line 68
    .local v2, "startTime":J
    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_2

    .line 69
    :cond_0
    const-wide/16 v0, 0x78

    .line 70
    .local v0, "duration":J
    :goto_0
    invoke-interface {v4, v2, v3, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(JJ)V

    .line 63
    .end local v0    # "duration":J
    .end local v2    # "startTime":J
    :cond_1
    return-void

    .line 69
    .restart local v2    # "startTime":J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

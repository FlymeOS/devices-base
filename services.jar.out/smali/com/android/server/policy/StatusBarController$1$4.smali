.class Lcom/android/server/policy/StatusBarController$1$4;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$4;->this$1:Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 94
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 96
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished()V

    .line 93
    :cond_0
    return-void
.end method

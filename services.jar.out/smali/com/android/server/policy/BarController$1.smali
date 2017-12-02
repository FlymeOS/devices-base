.class Lcom/android/server/policy/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BarController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;
    .param p2, "val$state"    # I

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    iput p2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 190
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    invoke-static {v1}, Lcom/android/server/policy/BarController;->-get0(Lcom/android/server/policy/BarController;)I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(II)V

    .line 188
    :cond_0
    return-void
.end method

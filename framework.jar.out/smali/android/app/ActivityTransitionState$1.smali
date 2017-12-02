.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionState;

    .prologue
    .line 251
    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isWaitingForRemoteExit()Z

    move-result v0

    .line 254
    if-eqz v0, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-wrap0(Landroid/app/ActivityTransitionState;)V

    .line 257
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-wrap1(Landroid/app/ActivityTransitionState;)V

    .line 253
    :cond_1
    return-void
.end method

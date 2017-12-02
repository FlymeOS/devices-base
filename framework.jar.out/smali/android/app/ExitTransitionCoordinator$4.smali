.class Landroid/app/ExitTransitionCoordinator$4;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    .prologue
    .line 213
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get0(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap0(Landroid/app/ExitTransitionCoordinator;)V

    .line 215
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap5(Landroid/app/ExitTransitionCoordinator;)V

    goto :goto_0
.end method

.class Lcom/android/server/am/UserController$5$1;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController$5;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/UserController$5;

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController$5;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/UserController$5;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iput-object p2, p0, Lcom/android/server/am/UserController$5$1;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iget-object v0, v0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$5$1;->val$uss:Lcom/android/server/am/UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;)V

    .line 580
    return-void
.end method

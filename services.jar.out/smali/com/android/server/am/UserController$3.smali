.class Lcom/android/server/am/UserController$3;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$callback:Landroid/app/IStopUserCallback;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$callback"    # Landroid/app/IStopUserCallback;
    .param p3, "val$userId"    # I

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$3;->val$callback:Landroid/app/IStopUserCallback;

    iput p3, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$3;->val$callback:Landroid/app/IStopUserCallback;

    iget v2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-interface {v1, v2}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

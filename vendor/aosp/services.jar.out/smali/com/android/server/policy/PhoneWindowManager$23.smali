.class Lcom/android/server/policy/PhoneWindowManager$23;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$visibility"    # I
    .param p3, "val$win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "val$needsMenu"    # Z

    .prologue
    .line 6628
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$visibility:I

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6632
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6633
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6634
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$visibility:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 6635
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6630
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 6637
    :catch_0
    move-exception v0

    .line 6639
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

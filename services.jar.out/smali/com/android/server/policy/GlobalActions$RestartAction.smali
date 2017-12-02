.class final Lcom/android/server/policy/GlobalActions$RestartAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 384
    const v0, 0x1080430

    const v1, 0x1040138

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 389
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 390
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 392
    return v3

    .line 394
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$RestartAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 408
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

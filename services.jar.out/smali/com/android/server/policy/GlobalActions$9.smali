.class Lcom/android/server/policy/GlobalActions$9;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 505
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$9;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/internal/policy/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 507
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    return v0
.end method

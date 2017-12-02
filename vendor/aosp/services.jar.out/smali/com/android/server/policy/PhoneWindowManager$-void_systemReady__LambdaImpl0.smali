.class final synthetic Lcom/android/server/policy/PhoneWindowManager$-void_systemReady__LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardStateMonitor$OnShowingStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_systemReady__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$-void_systemReady__LambdaImpl0;->val$this:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method


# virtual methods
.method public onShowingStateChanged(Z)V
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$-void_systemReady__LambdaImpl0;->val$this:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-com_android_server_policy_PhoneWindowManager-mthref-0(Z)V

    return-void
.end method

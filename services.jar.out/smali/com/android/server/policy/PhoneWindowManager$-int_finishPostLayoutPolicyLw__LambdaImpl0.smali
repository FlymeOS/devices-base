.class final synthetic Lcom/android/server/policy/PhoneWindowManager$-int_finishPostLayoutPolicyLw__LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-int_finishPostLayoutPolicyLw__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/policy/PhoneWindowManager;

.field private synthetic val$trusted:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$-int_finishPostLayoutPolicyLw__LambdaImpl0;->val$this:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$-int_finishPostLayoutPolicyLw__LambdaImpl0;->val$trusted:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$-int_finishPostLayoutPolicyLw__LambdaImpl0;->val$this:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$-int_finishPostLayoutPolicyLw__LambdaImpl0;->val$trusted:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-com_android_server_policy_PhoneWindowManager_lambda$1(Z)V

    return-void
.end method

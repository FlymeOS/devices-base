.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->val$userHandle:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap8(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 522
    return-void
.end method

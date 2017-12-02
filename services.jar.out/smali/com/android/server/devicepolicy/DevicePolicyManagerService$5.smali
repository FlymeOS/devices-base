.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$adminReceiver"    # Landroid/content/ComponentName;
    .param p3, "val$userHandle"    # I

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap14(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    .line 2214
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap15(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 2212
    return-void
.end method

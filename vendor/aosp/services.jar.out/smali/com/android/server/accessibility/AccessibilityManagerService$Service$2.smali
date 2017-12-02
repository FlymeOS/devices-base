.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bindLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "val$userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 2363
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2362
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2358
    return-void
.end method

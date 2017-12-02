.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2267
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2268
    .local v1, "eventType":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 2269
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$Service;ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 2266
    return-void
.end method

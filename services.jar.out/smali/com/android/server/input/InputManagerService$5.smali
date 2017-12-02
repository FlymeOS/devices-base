.class Lcom/android/server/input/InputManagerService$5;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$availableKeyboardLayouts:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 1008
    .local p2, "val$availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$5;->val$availableKeyboardLayouts:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$5;->val$availableKeyboardLayouts:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.class Lcom/android/server/input/InputManagerService$9;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Landroid/hardware/input/KeyboardLayout;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "val$result"    # [Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Landroid/hardware/input/KeyboardLayout;

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
    .line 1344
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Landroid/hardware/input/KeyboardLayout;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 1343
    return-void
.end method

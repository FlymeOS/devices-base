.class Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field final synthetic val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

.field final synthetic val$showMode:I


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .param p2, "val$listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .param p3, "val$showMode"    # I

    .prologue
    .line 1223
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    .line 1225
    return-void
.end method

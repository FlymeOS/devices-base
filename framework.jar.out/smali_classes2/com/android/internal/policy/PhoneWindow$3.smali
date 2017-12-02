.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3018
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3021
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3022
    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3023
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3024
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3025
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v2, 0x400

    const/16 v3, 0x600

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 3017
    :cond_1
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p2, "alpha"    # F
    .param p3, "translate"    # F

    .prologue
    .line 3002
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3003
    .local v1, "newParams":Landroid/view/WindowManager$LayoutParams;
    float-to-int v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3004
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3005
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3007
    const/4 v0, 0x0

    .line 3008
    .local v0, "flags":I
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    .line 3009
    const/16 v0, 0x400

    .line 3013
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v3, 0x600

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setFlags(II)V

    .line 3001
    return-void

    .line 3011
    :cond_0
    const/16 v0, 0x200

    goto :goto_0
.end method

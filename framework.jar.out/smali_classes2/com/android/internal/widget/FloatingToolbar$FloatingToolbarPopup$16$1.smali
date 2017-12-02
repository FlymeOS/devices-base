.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    .line 1416
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16$1;->this$2:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    .line 1414
    return-void
.end method

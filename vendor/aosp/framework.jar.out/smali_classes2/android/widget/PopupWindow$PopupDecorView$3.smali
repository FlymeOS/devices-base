.class Landroid/widget/PopupWindow$PopupDecorView$3;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$anchorRoot:Landroid/view/View;

.field final synthetic val$listener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p2, "val$anchorRoot"    # Landroid/view/View;
    .param p3, "val$listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 2369
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "t"    # Landroid/transition/Transition;

    .prologue
    const/4 v2, 0x0

    .line 2372
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/widget/PopupWindow$PopupDecorView;->-get0(Landroid/widget/PopupWindow$PopupDecorView;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2376
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-interface {v0, p1}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 2379
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0, v2}, Landroid/widget/PopupWindow$PopupDecorView;->-set0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;

    .line 2380
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2371
    return-void
.end method

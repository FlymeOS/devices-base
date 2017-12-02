.class Landroid/widget/PopupWindow$PopupDecorView$4;
.super Landroid/transition/Transition$EpicenterCallback;
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

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p2, "val$epicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 2386
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2389
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$4;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method

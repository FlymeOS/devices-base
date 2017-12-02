.class Landroid/widget/ListPopupWindow$1;
.super Landroid/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 1056
    iput-object p1, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/widget/ListPopupWindow$1;->this$0:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

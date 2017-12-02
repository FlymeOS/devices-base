.class Landroid/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 217
    iput-object p1, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 221
    .local v1, "anchor":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 222
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 225
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v3}, Landroid/widget/PopupWindow;->-get3(Landroid/widget/PopupWindow;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v4}, Landroid/widget/PopupWindow;->-get4(Landroid/widget/PopupWindow;)I

    move-result v4

    .line 226
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v7, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    invoke-static {v7}, Landroid/widget/PopupWindow;->-get5(Landroid/widget/PopupWindow;)I

    move-result v7

    const/4 v8, 0x0

    .line 225
    invoke-static/range {v0 .. v8}, Landroid/widget/PopupWindow;->-wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-static {v9, v0}, Landroid/widget/PopupWindow;->-wrap3(Landroid/widget/PopupWindow;Z)V

    .line 227
    iget-object v3, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v6, v10

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 219
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

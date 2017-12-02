.class Landroid/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupMenu;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-get1(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-get1(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-interface {v0, v1}, Landroid/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/widget/PopupMenu;)V

    .line 118
    :cond_0
    return-void
.end method

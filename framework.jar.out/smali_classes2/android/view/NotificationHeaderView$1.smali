.class Landroid/view/NotificationHeaderView$1;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get0(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/view/NotificationHeaderView$1;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-get4(Landroid/view/NotificationHeaderView;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 60
    :cond_0
    return-void
.end method

.class Landroid/view/NotificationHeaderView$2;
.super Landroid/view/View$AccessibilityDelegate;
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
    .line 67
    iput-object p1, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get3(Landroid/view/NotificationHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 83
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return v2

    .line 74
    :cond_0
    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_1

    .line 75
    const/high16 v0, 0x40000

    if-ne p2, v0, :cond_2

    .line 76
    :cond_1
    iget-object v0, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 77
    return v2

    .line 79
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

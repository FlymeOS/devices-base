.class public Landroid/widget/MenuPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# instance fields
.field private mHoverListener:Landroid/widget/MenuItemHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 51
    new-instance v0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 52
    .local v0, "view":Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 53
    return-object v0
.end method

.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 56
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 60
    return-void
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/widget/MenuItemHoverListener;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 64
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 72
    return-void
.end method

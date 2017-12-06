.class final Landroid/widget/Editor$FlymeInjector;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hideSelectionModifierCursorController(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6928
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 6929
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 6930
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 6927
    :cond_0
    return-void
.end method

.method static initFlymeExtraFields(Landroid/widget/Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6901
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mEnableDragSelection:Z

    .line 6900
    return-void
.end method

.method static isFlymeCursorVisible(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6918
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v0

    return v0
.end method

.method static removeSelectonActionModeRunnable(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6922
    iget-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6923
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6921
    :cond_0
    return-void
.end method

.method static stopDragSelectionMode(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    const/4 v1, 0x0

    .line 6909
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_0

    .line 6910
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    .line 6911
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6912
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6908
    :cond_0
    return-void
.end method

.method static updateBackground(Landroid/widget/Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6905
    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->mzIsCursorVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->updateBackground(Z)V

    .line 6904
    return-void
.end method

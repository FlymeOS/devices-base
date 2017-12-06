.class final Landroid/widget/Editor$FlymeInsertionPointCursorController;
.super Landroid/widget/Editor$InsertionPointCursorController;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FlymeInsertionPointCursorController"
.end annotation


# instance fields
.field private mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    .line 7302
    iput-object p1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V

    return-void
.end method

.method private getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;
    .locals 2

    .prologue
    .line 7354
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-nez v0, :cond_0

    .line 7355
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 7357
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setLimitInView(Z)V

    .line 7358
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/MagnifierPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 7361
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 7341
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7342
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 7343
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 7340
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 7307
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v0, :cond_0

    .line 7308
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 7310
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 7366
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7367
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 7369
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v1, :cond_0

    .line 7370
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v1}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 7365
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 7395
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeInvokeMethodGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 7394
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7374
    invoke-virtual {p0}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7375
    return v2

    .line 7377
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->update(FF)V

    .line 7379
    return v3

    .line 7381
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 7382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 7383
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7384
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->mzUpdateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    .line 7387
    :cond_3
    return v2
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 7348
    if-nez p1, :cond_0

    .line 7349
    invoke-virtual {p0}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->hide()V

    .line 7347
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 7336
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->update(FF)V

    .line 7337
    iget-object v0, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/Editor;->mLastScrollTime:J

    .line 7335
    return-void
.end method

.method public showWithActionPopup()V
    .locals 0

    .prologue
    .line 7398
    return-void
.end method

.method public update(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 7314
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 7317
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7318
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-wide v4, v1, Landroid/widget/Editor;->mLastScrollTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 7319
    return-void

    .line 7322
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/Editor;->mLastScrollTime:J

    .line 7324
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 7325
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 7326
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7329
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7330
    iget-object v1, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeInvokeMethodGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 7332
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$FlymeInsertionPointCursorController;->getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$FlymeInsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 7313
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 0
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 7391
    return-void
.end method

.class public abstract Landroid/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ForwardingListener$DisallowIntercept;,
        Landroid/widget/ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/widget/ForwardingListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ForwardingListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    .line 68
    iget v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    .line 59
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 206
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 219
    iget-object v9, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 220
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    return-void

    .line 231
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 235
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 236
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    iput-boolean v10, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 216
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v6, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 251
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v5

    .line 252
    .local v5, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    invoke-interface {v5}, Lcom/android/internal/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Landroid/widget/DropDownListView;

    .line 257
    .local v1, "dst":Landroid/widget/DropDownListView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 262
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 263
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v2}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 264
    invoke-virtual {v1, v2}, Landroid/widget/DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 267
    iget v8, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 268
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 272
    .local v0, "action":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    .line 273
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    const/4 v4, 0x1

    .line 275
    .local v4, "keepForwarding":Z
    :goto_0
    if-eqz v3, :cond_4

    .end local v4    # "keepForwarding":Z
    :goto_1
    return v4

    .line 253
    .end local v0    # "action":I
    .end local v1    # "dst":Landroid/widget/DropDownListView;
    .end local v2    # "dstEvent":Landroid/view/MotionEvent;
    .end local v3    # "handled":Z
    :cond_0
    return v7

    .line 258
    .restart local v1    # "dst":Landroid/widget/DropDownListView;
    :cond_1
    return v7

    .line 273
    .restart local v0    # "action":I
    .restart local v2    # "dstEvent":Landroid/view/MotionEvent;
    .restart local v3    # "handled":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    .line 272
    .end local v4    # "keepForwarding":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    :cond_4
    move v4, v7

    .line 275
    goto :goto_1
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 161
    iget-object v2, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 162
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    return v8

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 167
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 203
    :cond_1
    :goto_0
    return v8

    .line 169
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 171
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v5, :cond_2

    .line 172
    new-instance v5, Landroid/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v5, p0, v9}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$DisallowIntercept;)V

    iput-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 174
    :cond_2
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v6, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v5, :cond_3

    .line 177
    new-instance v5, Landroid/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v5, p0, v9}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$TriggerLongPress;)V

    iput-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 179
    :cond_3
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v6, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 182
    :pswitch_1
    iget v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 183
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_1

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 185
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 188
    .local v4, "y":F
    iget v5, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 193
    return v6

    .line 199
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 131
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->show()V

    goto :goto_0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 148
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->dismiss()V

    .line 151
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 85
    iget-boolean v10, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 87
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_2

    .line 88
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    .line 102
    :cond_0
    :goto_0
    iput-boolean v9, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 103
    if-nez v9, :cond_4

    .end local v10    # "wasForwarding":Z
    :goto_1
    return v10

    .line 88
    .restart local v10    # "wasForwarding":Z
    :cond_1
    const/4 v9, 0x1

    .local v9, "forwarding":Z
    goto :goto_0

    .line 90
    .end local v9    # "forwarding":Z
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v9

    .line 92
    .local v9, "forwarding":Z
    :goto_2
    if-eqz v9, :cond_0

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 97
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_3
    move v9, v7

    .line 90
    goto :goto_2

    .line 103
    :cond_4
    const/4 v10, 0x1

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 115
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

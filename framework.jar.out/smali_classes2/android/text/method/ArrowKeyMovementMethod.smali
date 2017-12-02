.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method private static getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I
    .locals 1
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 332
    :cond_0
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private static getPageHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSelecting(Landroid/text/Spannable;)Z
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 35
    const/16 v2, 0x800

    invoke-static {p0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 35
    goto :goto_0
.end method


# virtual methods
.method protected bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 173
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 101
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p2, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 104
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    packed-switch p3, :pswitch_data_0

    .line 65
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 55
    :pswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/16 v0, 0x800

    .line 58
    invoke-static {p2, v0, p5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v0

    return v0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 311
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 71
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p2, v0}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 74
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 200
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 201
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 202
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 189
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 192
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 179
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {p2, v0}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 182
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .prologue
    .line 317
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 226
    const/4 v3, -0x1

    .line 227
    .local v3, "initialScrollX":I
    const/4 v4, -0x1

    .line 228
    .local v4, "initialScrollY":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 230
    .local v0, "action":I
    if-ne v0, v10, :cond_0

    .line 231
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 232
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 235
    :cond_0
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v7

    .line 236
    .local v7, "wasTouchSelecting":Z
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 238
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 239
    return v2

    .line 241
    :cond_1
    if-nez v0, :cond_4

    .line 243
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_2

    .line 245
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    move-result v8

    if-nez v8, :cond_2

    .line 246
    return v2

    .line 249
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 250
    .local v5, "offset":I
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v9, 0x22

    invoke-interface {p2, v8, v5, v5, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 255
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 302
    .end local v5    # "offset":I
    :cond_3
    return v2

    .line 257
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    const/4 v8, 0x2

    if-ne v0, v8, :cond_5

    .line 259
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    .line 260
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 267
    .local v6, "startOffset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 272
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 273
    .restart local v5    # "offset":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 274
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 273
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 275
    return v10

    .line 277
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :cond_5
    if-ne v0, v10, :cond_3

    .line 282
    if-ltz v4, :cond_7

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-eq v4, v8, :cond_7

    .line 284
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    .line 285
    return v10

    .line 283
    :cond_7
    if-ltz v3, :cond_8

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    if-ne v3, v8, :cond_6

    .line 288
    :cond_8
    if-eqz v7, :cond_9

    .line 289
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 290
    .restart local v6    # "startOffset":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 291
    .local v1, "endOffset":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 292
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 291
    invoke-static {p2, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 293
    sget-object v8, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 296
    .end local v1    # "endOffset":I
    .end local v6    # "startOffset":I
    :cond_9
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 297
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 299
    return v10
.end method

.method protected pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 135
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v3

    .line 136
    .local v3, "selecting":Z
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v6

    add-int v4, v5, v6

    .line 137
    .local v4, "targetY":I
    const/4 v0, 0x0

    .line 139
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 140
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    .line 141
    invoke-static {p2, v1}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 145
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 153
    :goto_1
    return v0

    .line 143
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x1

    .line 149
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-lt v5, v4, :cond_0

    goto :goto_1
.end method

.method protected pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 111
    .local v1, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v3

    .line 112
    .local v3, "selecting":Z
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    invoke-static {p1}, Landroid/text/method/ArrowKeyMovementMethod;->getPageHeight(Landroid/widget/TextView;)I

    move-result v6

    sub-int v4, v5, v6

    .line 113
    .local v4, "targetY":I
    const/4 v0, 0x0

    .line 115
    .local v0, "handled":Z
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 116
    .local v2, "previousSelectionEnd":I
    if-eqz v3, :cond_1

    .line 117
    invoke-static {p2, v1}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 121
    :goto_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 129
    :goto_1
    return v0

    .line 119
    :cond_1
    invoke-static {p2, v1}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x1

    .line 125
    invoke-static {p2, v1}, Landroid/text/method/ArrowKeyMovementMethod;->getCurrentLineTop(Landroid/text/Spannable;Landroid/text/Layout;)I

    move-result v5

    if-gt v5, v4, :cond_0

    goto :goto_1
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 81
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p2, v0}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 84
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

.method protected rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 209
    .local v0, "selectionEnd":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 210
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    invoke-virtual {v1, p2, v0, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 211
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/text/Selection;->moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z

    move-result v2

    return v2
.end method

.method protected top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p2, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 163
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 91
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p2}, Landroid/text/method/ArrowKeyMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {p2, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1

    .line 94
    :cond_0
    invoke-static {p2, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v1

    return v1
.end method

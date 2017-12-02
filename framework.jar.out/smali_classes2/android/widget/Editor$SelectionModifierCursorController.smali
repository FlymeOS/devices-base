.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorMode:I

.field private mEndHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5134
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5115
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5119
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5121
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5124
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 5135
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 5134
    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 5147
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5148
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5149
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    .line 5148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5151
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5152
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5153
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    .line 5152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5146
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 6

    .prologue
    .line 5159
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_0

    .line 5160
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5161
    const v4, 0x1020058

    .line 5162
    const/4 v5, 0x0

    .line 5160
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 5164
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_1

    .line 5165
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5166
    const v4, 0x1020059

    .line 5167
    const/4 v5, 0x1

    .line 5165
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 5170
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 5171
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 5173
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5157
    return-void
.end method

.method private resetDragAcceleratorState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5456
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5457
    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 5458
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5459
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5460
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5461
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_0

    .line 5462
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5455
    :cond_0
    return-void
.end method

.method private selectCurrentParagraphAndStartDrag()Z
    .locals 2

    .prologue
    .line 5347
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5348
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5350
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5351
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5352
    const/4 v0, 0x0

    return v0

    .line 5354
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 5355
    const/4 v0, 0x1

    return v0
.end method

.method private updateCharacterBasedSelection(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5359
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5360
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5358
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5435
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5436
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5437
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5438
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5433
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method

.method private updateParagraphBasedSelection(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5420
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5422
    .local v1, "offset":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5423
    .local v6, "start":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5424
    .local v0, "end":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v6, v0}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;II)J

    move-result-wide v2

    .line 5425
    .local v2, "paragraphsRange":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 5426
    .local v5, "selectionStart":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 5427
    .local v4, "selectionEnd":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5419
    return-void
.end method

.method private updateSelection(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5326
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5327
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    packed-switch v0, :pswitch_data_0

    .line 5325
    :cond_0
    :goto_0
    return-void

    .line 5329
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5332
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateWordBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5335
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateParagraphBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWordBasedSelection(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5364
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v10, :cond_0

    .line 5365
    return-void

    .line 5367
    :cond_0
    const/16 v10, 0x2002

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    .line 5369
    .local v4, "isMouse":Z
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 5368
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 5370
    .local v8, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5371
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 5373
    .local v2, "eventY":F
    if-eqz v4, :cond_2

    .line 5375
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 5403
    .local v0, "currLine":I
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    .line 5405
    .local v5, "offset":I
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-ge v10, v5, :cond_5

    .line 5407
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    move-result v5

    .line 5408
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    move-result v6

    .line 5414
    .local v6, "startOffset":I
    :goto_0
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5415
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5363
    return-void

    .line 5377
    .end local v0    # "currLine":I
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :cond_2
    move v9, v2

    .line 5378
    .local v9, "y":F
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-eqz v10, :cond_3

    .line 5383
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 5384
    .local v7, "touchSlop":I
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v10, :cond_4

    .line 5385
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v10}, Landroid/widget/Editor$SelectionHandleView;->getIdealVerticalOffset()F

    move-result v3

    .line 5387
    .local v3, "fingerOffset":F
    :goto_1
    sub-float v9, v2, v3

    .line 5390
    .end local v3    # "fingerOffset":F
    .end local v7    # "touchSlop":I
    :cond_3
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    iget v12, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    invoke-static {v10, v11, v12, v9}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 5392
    .restart local v0    # "currLine":I
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-nez v10, :cond_1

    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    if-eq v0, v10, :cond_1

    .line 5397
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5398
    return-void

    .line 5386
    .end local v0    # "currLine":I
    .restart local v7    # "touchSlop":I
    :cond_4
    int-to-float v3, v7

    goto :goto_1

    .line 5411
    .end local v7    # "touchSlop":I
    .end local v9    # "y":F
    .restart local v0    # "currLine":I
    .restart local v5    # "offset":I
    :cond_5
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    move-result v5

    .line 5412
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    move-result v6

    .restart local v6    # "startOffset":I
    goto :goto_0
.end method


# virtual methods
.method public enterDrag(I)V
    .locals 3
    .param p1, "dragAcceleratorMode"    # I

    .prologue
    .line 5183
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 5184
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 5186
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 5187
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 5186
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5188
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5190
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5195
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5196
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 5181
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5447
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5443
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 5177
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 5178
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 5176
    :cond_1
    return-void
.end method

.method public invalidateHandles()V
    .locals 1

    .prologue
    .line 5508
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 5509
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 5511
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    .line 5512
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 5507
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 5504
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorBeingModified()Z
    .locals 1

    .prologue
    .line 5476
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5477
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    .line 5476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragAcceleratorActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5484
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5471
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5495
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5496
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5498
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 5499
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 5494
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 5203
    .local v6, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 5204
    .local v7, "eventY":F
    const/16 v14, 0x2002

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    .line 5205
    .local v8, "isMouse":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 5199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5207
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 5212
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5216
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_5

    .line 5217
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 5218
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 5219
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v1, v6, v14

    .line 5220
    .local v1, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v2, v7, v14

    .line 5221
    .local v2, "deltaY":F
    mul-float v14, v1, v1

    mul-float v15, v2, v2

    add-float v3, v14, v15

    .line 5224
    .local v3, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 5223
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    .line 5225
    .local v13, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v4

    .line 5227
    .local v4, "doubleTapSlop":I
    mul-int v14, v4, v4

    int-to-float v14, v14

    cmpg-float v14, v3, v14

    if-gez v14, :cond_6

    const/4 v10, 0x1

    .line 5229
    .local v10, "stayedInArea":Z
    :goto_1
    if-eqz v10, :cond_5

    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14, v6, v7}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;FF)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 5230
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 5231
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-wrap9(Landroid/widget/Editor;)Z

    .line 5235
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5240
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v10    # "stayedInArea":Z
    .end local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5241
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5242
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5243
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_0

    .line 5227
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "distanceSquared":F
    .restart local v4    # "doubleTapSlop":I
    .restart local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 5232
    .restart local v10    # "stayedInArea":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4

    .line 5233
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->selectCurrentParagraphAndStartDrag()Z

    goto :goto_2

    .line 5251
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v10    # "stayedInArea":Z
    .end local v13    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 5252
    const-string/jumbo v15, "android.hardware.touchscreen.multitouch.distinct"

    .line 5251
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5253
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5259
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 5258
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    .line 5260
    .local v12, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    .line 5262
    .local v11, "touchSlop":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v14, :cond_a

    .line 5263
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v1, v6, v14

    .line 5264
    .restart local v1    # "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v2, v7, v14

    .line 5265
    .restart local v2    # "deltaY":F
    mul-float v14, v1, v1

    mul-float v15, v2, v2

    add-float v3, v14, v15

    .line 5267
    .restart local v3    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_9

    .line 5268
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v5

    .line 5270
    .local v5, "doubleTapTouchSlop":I
    mul-int v14, v5, v5

    int-to-float v14, v14

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_d

    const/4 v14, 0x1

    .line 5269
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5272
    .end local v5    # "doubleTapTouchSlop":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v14, :cond_a

    .line 5275
    mul-int v14, v11, v11

    int-to-float v14, v14

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_e

    const/4 v14, 0x1

    .line 5274
    :goto_4
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 5279
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 5298
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v14}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 5303
    :cond_c
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5270
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "distanceSquared":F
    .restart local v5    # "doubleTapTouchSlop":I
    :cond_d
    const/4 v14, 0x0

    goto :goto_3

    .line 5275
    .end local v5    # "doubleTapTouchSlop":I
    :cond_e
    const/4 v14, 0x0

    goto :goto_4

    .line 5280
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    .line 5281
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hasSelection()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 5282
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v14, v9, :cond_11

    .line 5283
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    if-lt v9, v14, :cond_11

    .line 5284
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    if-gt v9, v14, :cond_11

    .line 5285
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;)V

    goto/16 :goto_0

    .line 5289
    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v14, v9, :cond_b

    .line 5291
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5292
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 5293
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5294
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_5

    .line 5307
    .end local v9    # "offset":I
    .end local v11    # "touchSlop":I
    .end local v12    # "viewConfig":Landroid/view/ViewConfiguration;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5310
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 5313
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5316
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 5318
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hasSelection()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5319
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 5205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5488
    if-nez p1, :cond_0

    .line 5489
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5487
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5451
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5452
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 5450
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5139
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5140
    return-void

    .line 5142
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5143
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5138
    return-void
.end method

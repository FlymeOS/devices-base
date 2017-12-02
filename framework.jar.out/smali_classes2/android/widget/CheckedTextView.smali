.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 69
    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 68
    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 58
    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 59
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 60
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 64
    const v3, 0x800005

    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 88
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    .line 87
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const/4 v3, -0x1

    .line 96
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 97
    iget-object v4, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 96
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 101
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 103
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 106
    :cond_2
    const/4 v3, 0x4

    const v4, 0x800005

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 108
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 109
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 84
    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 282
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 288
    :cond_2
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 274
    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 4

    .prologue
    .line 373
    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 374
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 375
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "checkmarkAtStart"    # Z

    .prologue
    .line 365
    if-eqz p1, :cond_0

    .line 366
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 364
    :goto_0
    return-void

    .line 368
    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 184
    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 187
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 193
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 198
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    iput p2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 201
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 205
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 176
    return-void

    :cond_1
    move v0, v2

    .line 182
    goto :goto_0

    :cond_2
    move v1, v2

    .line 186
    goto :goto_1

    .line 195
    :cond_3
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 349
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 350
    iget v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int v0, v3, v4

    .line 351
    .local v0, "newPadding":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 353
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    .line 358
    :goto_2
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 360
    iput-boolean v2, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 347
    :cond_0
    return-void

    .line 350
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .restart local v0    # "newPadding":I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 352
    goto :goto_1

    .line 355
    :cond_3
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 356
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 355
    goto :goto_3
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 445
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 442
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 434
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 435
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 435
    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 536
    const-string/jumbo v0, "text:checked"

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 534
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 452
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 338
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 336
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 308
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 305
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 423
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 424
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 427
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 382
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 383
    .local v3, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v11

    and-int/lit8 v8, v11, 0x70

    .line 385
    .local v8, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 387
    .local v4, "height":I
    const/4 v10, 0x0

    .line 389
    .local v10, "y":I
    sparse-switch v8, :sswitch_data_0

    .line 398
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v2

    .line 399
    .local v2, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v9

    .line 400
    .local v9, "width":I
    move v7, v10

    .line 401
    .local v7, "top":I
    add-int v1, v10, v4

    .line 404
    .local v1, "bottom":I
    if-eqz v2, :cond_1

    .line 405
    iget v5, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 406
    .local v5, "left":I
    iget v11, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int v6, v5, v11

    .line 411
    .local v6, "right":I
    :goto_1
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v6

    invoke-virtual {v3, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 415
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 416
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v6

    invoke-virtual {v0, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 379
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v2    # "checkMarkAtStart":Z
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "verticalGravity":I
    .end local v9    # "width":I
    .end local v10    # "y":I
    :cond_0
    return-void

    .line 391
    .restart local v4    # "height":I
    .restart local v8    # "verticalGravity":I
    .restart local v10    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v11

    sub-int v10, v11, v4

    .line 392
    goto :goto_0

    .line 394
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v4

    div-int/lit8 v10, v11, 0x2

    goto :goto_0

    .line 408
    .restart local v1    # "bottom":I
    .restart local v2    # "checkMarkAtStart":Z
    .restart local v7    # "top":I
    .restart local v9    # "width":I
    :cond_1
    iget v11, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v6, v9, v11

    .line 409
    .restart local v6    # "right":I
    iget v11, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v6, v11

    .restart local v5    # "left":I
    goto :goto_1

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 521
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 519
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 529
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 526
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 510
    check-cast v0, Landroid/widget/CheckedTextView$SavedState;

    .line 512
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 513
    iget-boolean v1, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 514
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 509
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 344
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 342
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 500
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 502
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CheckedTextView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 504
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    .line 505
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 153
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 152
    return-void

    .line 157
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 172
    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 227
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 223
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 257
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 253
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 134
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 136
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 300
    iget-object v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 296
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 300
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 116
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public Landroid/inputmethodservice/CompactExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "CompactExtractEditLayout.java"


# instance fields
.field private mInputExtractAccessories:Landroid/view/View;

.field private mInputExtractAction:Landroid/view/View;

.field private mInputExtractEditText:Landroid/view/View;

.field private mPerformLayoutChanges:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private applyFractionInt(II)I
    .locals 1
    .param p1, "fraction"    # I
    .param p2, "whole"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private applyProportionalLayout(II)V
    .locals 3
    .param p1, "screenWidthPx"    # I
    .param p2, "screenHeightPx"    # I

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    :cond_0
    const v0, 0x1130006

    .line 87
    invoke-direct {p0, v0, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutHeight(Landroid/view/View;I)V

    .line 91
    const v0, 0x1130007

    invoke-direct {p0, v0, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v0

    .line 94
    const v1, 0x1130009

    invoke-direct {p0, v1, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 90
    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    .line 99
    const v1, 0x113000a

    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 98
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    .line 103
    const v1, 0x113000b

    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    move-result v1

    .line 102
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    .line 83
    return-void
.end method

.method private static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private static setLayoutMarginBottom(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 110
    iget-boolean v4, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    .local v1, "heightPixels":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 115
    .local v3, "widthPixels":I
    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyProportionalLayout(II)V

    .line 108
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "heightPixels":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "widthPixels":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    const v0, 0x1020025

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    .line 58
    const v0, 0x1020388

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    .line 59
    const v0, 0x1020389

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    .line 61
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    .line 55
    :cond_0
    return-void
.end method

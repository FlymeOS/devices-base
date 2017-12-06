.class final Landroid/widget/TextView$FlymeInjector;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10742
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeInvokeMethodSetPrimaryClip(Landroid/content/ClipData;)V

    .line 10743
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 10741
    return-void
.end method

.method static editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 10695
    const/4 v2, 0x0

    .line 10696
    .local v2, "selChanged":Z
    const/4 v1, -0x1

    .local v1, "newSelStart":I
    const/4 v0, -0x1

    .line 10698
    .local v0, "newSelEnd":I
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    .line 10699
    const/4 v2, 0x1

    .line 10700
    move v0, p4

    .line 10703
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    .line 10704
    const/4 v2, 0x1

    .line 10705
    move v1, p4

    .line 10708
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10709
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_3

    .line 10710
    if-gez v1, :cond_2

    .line 10711
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 10713
    :cond_2
    if-gez v0, :cond_3

    .line 10714
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 10717
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/Editor;->onSelectionChanged(II)V

    .line 10694
    :cond_4
    return-void
.end method

.method private static editorSelectCurrentWordMz(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10736
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10737
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->selectCurrentWordMz()Z

    .line 10735
    :cond_0
    return-void
.end method

.method static initFlymeExtraFields(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 10671
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 10673
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iget v3, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v3, :cond_0

    .line 10674
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10675
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    :goto_0
    iput v2, p0, Landroid/widget/TextView;->mFlymeCursorWidth:I

    .line 10677
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    .line 10678
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/TextView;->mFlymeTempCoords:[I

    .line 10670
    return-void

    .line 10675
    .restart local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0
.end method

.method static mzGetAutoLinkMask(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10682
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 10683
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    return v0

    .line 10685
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    return v0
.end method

.method static mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 10724
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdStartSelecting()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 10725
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->editorSelectCurrentWordMz(Landroid/widget/TextView;)V

    .line 10726
    return v1

    .line 10727
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdCopyAll()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 10728
    invoke-static {p0}, Landroid/widget/TextView$FlymeInjector;->copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V

    .line 10729
    return v1

    .line 10732
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static resetAutoLinkMask(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10689
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 10690
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeSetFieldAutoLinkMask(I)V

    .line 10688
    :cond_0
    return-void
.end method

.class Landroid/media/Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1693
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1698
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1697
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1701
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, -0x2

    .line 1707
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1682
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 1683
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1684
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 1686
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1710
    new-instance v2, Landroid/media/Cea708CCWidget$CCView;

    invoke-direct {v2, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 1711
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1713
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1717
    const-string/jumbo v2, "captioning"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 1718
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1719
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1720
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1706
    return-void
.end method

.method private getScreenColumnCount()I
    .locals 1

    .prologue
    .line 2042
    const/16 v0, 0x2a

    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "appended"    # Z

    .prologue
    .line 2067
    if-nez p2, :cond_0

    .line 2068
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2070
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2071
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 2072
    .local v4, "length":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2073
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "characterStyle$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/CharacterStyle;

    .line 2074
    .local v0, "characterStyle":Landroid/text/style/CharacterStyle;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 2075
    const/16 v11, 0x21

    .line 2074
    invoke-virtual {v9, v0, v4, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 2078
    .end local v0    # "characterStyle":Landroid/text/style/CharacterStyle;
    .end local v1    # "characterStyle$iterator":Ljava/util/Iterator;
    .end local v4    # "length":I
    :cond_1
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2082
    .local v5, "lines":[Ljava/lang/String;
    const-string/jumbo v9, "\n"

    .line 2083
    array-length v10, v5

    iget v11, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    array-length v11, v5

    .line 2082
    invoke-static {v5, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2084
    .local v8, "truncatedText":Ljava/lang/String;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2087
    const/4 v6, 0x0

    .local v6, "start":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 2088
    .local v3, "last":I
    move v2, v3

    .line 2089
    .local v2, "end":I
    :goto_1
    if-gt v6, v3, :cond_2

    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-gt v9, v10, :cond_2

    .line 2090
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2092
    :cond_2
    :goto_2
    if-lt v2, v6, :cond_3

    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-gt v9, v10, :cond_3

    .line 2093
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2095
    :cond_3
    if-nez v6, :cond_4

    if-ne v2, v3, :cond_4

    .line 2096
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 2066
    :goto_3
    return-void

    .line 2098
    :cond_4
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2099
    .local v7, "trim":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2100
    if-ge v2, v3, :cond_5

    .line 2101
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2103
    :cond_5
    if-lez v6, :cond_6

    .line 2104
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2106
    :cond_6
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateTextSize()V
    .locals 12

    .prologue
    const v11, 0x3c23d70a    # 0.01f

    .line 2013
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-nez v9, :cond_0

    return-void

    .line 2016
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2017
    .local v7, "widestTextBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v3

    .line 2018
    .local v3, "screenColumnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2019
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2021
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2022
    .local v6, "widestText":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2023
    .local v2, "paint":Landroid/graphics/Paint;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2024
    const/4 v4, 0x0

    .line 2025
    .local v4, "startFontSize":F
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2026
    .local v0, "endFontSize":F
    :goto_1
    cmpg-float v9, v4, v0

    if-gez v9, :cond_3

    .line 2027
    add-float v9, v4, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    .line 2028
    .local v5, "testTextSize":F
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2029
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 2030
    .local v8, "width":F
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    cmpl-float v9, v9, v8

    if-lez v9, :cond_2

    .line 2031
    add-float v4, v5, v11

    goto :goto_1

    .line 2033
    :cond_2
    sub-float v0, v5, v11

    goto :goto_1

    .line 2036
    .end local v5    # "testTextSize":F
    .end local v8    # "width":F
    :cond_3
    iget v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float/2addr v9, v0

    iput v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 2037
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 2012
    return-void
.end method

.method private updateWidestChar()V
    .locals 9

    .prologue
    .line 1997
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1998
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1999
    const-string/jumbo v6, "ISO-8859-1"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 2000
    .local v3, "latin1":Ljava/nio/charset/Charset;
    const/4 v5, 0x0

    .line 2001
    .local v5, "widestCharWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x100

    if-ge v2, v6, :cond_1

    .line 2002
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    int-to-byte v7, v2

    const/4 v8, 0x0

    aput-byte v7, v6, v8

    invoke-direct {v0, v6, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2003
    .local v0, "ch":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 2004
    .local v1, "charWidth":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 2005
    move v5, v1

    .line 2006
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    .line 2001
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2009
    .end local v0    # "ch":Ljava/lang/String;
    .end local v1    # "charWidth":F
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1996
    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2058
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2057
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1743
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 1744
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1742
    return-void
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2063
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    return-void
.end method

.method public getCaptionWindowId()I
    .locals 1

    .prologue
    .line 1735
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1752
    return-void
.end method

.method public initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .locals 22
    .param p1, "ccLayout"    # Landroid/media/Cea708CCWidget$CCLayout;
    .param p2, "captionWindow"    # Landroid/media/Cea708CCParser$CaptionWindow;

    .prologue
    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1869
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1871
    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1875
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1876
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1877
    const/16 v19, 0x63

    .line 1876
    :goto_0
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1875
    div-float v14, v20, v19

    .line 1880
    .local v14, "scaleRow":F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1881
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/16 v19, 0x63

    :goto_1
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1880
    div-float v11, v20, v19

    .line 1886
    .local v11, "scaleCol":F
    const/16 v19, 0x0

    cmpg-float v19, v14, v19

    if-ltz v19, :cond_2

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_3

    .line 1887
    :cond_2
    const-string/jumbo v19, "CCWindowLayout"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 1891
    :cond_3
    const/16 v19, 0x0

    cmpg-float v19, v11, v19

    if-ltz v19, :cond_4

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v11, v19

    if-lez v19, :cond_5

    .line 1892
    :cond_4
    const-string/jumbo v19, "CCWindowLayout"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1896
    :cond_5
    const/16 v5, 0x11

    .line 1897
    .local v5, "gravity":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    move/from16 v19, v0

    rem-int/lit8 v7, v19, 0x3

    .line 1898
    .local v7, "horizontalMode":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    move/from16 v19, v0

    div-int/lit8 v17, v19, 0x3

    .line 1899
    .local v17, "verticalMode":I
    const/16 v16, 0x0

    .line 1900
    .local v16, "scaleStartRow":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1901
    .local v13, "scaleEndRow":F
    const/4 v15, 0x0

    .line 1902
    .local v15, "scaleStartCol":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1903
    .local v12, "scaleEndCol":F
    packed-switch v7, :pswitch_data_0

    .line 1954
    :goto_2
    packed-switch v17, :pswitch_data_1

    .line 1972
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    new-instance v20, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v1, v13, v15, v12}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 1974
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 1975
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 1976
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1977
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1978
    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    .line 1864
    :goto_4
    return-void

    .line 1877
    .end local v5    # "gravity":I
    .end local v7    # "horizontalMode":I
    .end local v11    # "scaleCol":F
    .end local v12    # "scaleEndCol":F
    .end local v13    # "scaleEndRow":F
    .end local v14    # "scaleRow":F
    .end local v15    # "scaleStartCol":F
    .end local v16    # "scaleStartRow":F
    .end local v17    # "verticalMode":I
    :cond_6
    const/16 v19, 0x4a

    goto/16 :goto_0

    .line 1882
    .restart local v14    # "scaleRow":F
    :cond_7
    const/16 v19, 0xd1

    goto/16 :goto_1

    .line 1905
    .restart local v5    # "gravity":I
    .restart local v7    # "horizontalMode":I
    .restart local v11    # "scaleCol":F
    .restart local v12    # "scaleEndCol":F
    .restart local v13    # "scaleEndRow":F
    .restart local v15    # "scaleStartCol":F
    .restart local v16    # "scaleStartRow":F
    .restart local v17    # "verticalMode":I
    :pswitch_0
    const/4 v5, 0x3

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1907
    move v15, v11

    .line 1908
    goto :goto_2

    .line 1910
    :pswitch_1
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v11

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1914
    .local v4, "gap":F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    move/from16 v19, v0

    add-int/lit8 v3, v19, 0x1

    .line 1915
    .local v3, "columnCount":I
    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1916
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1917
    .local v18, "widestTextBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v3, :cond_8

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1920
    :cond_8
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1921
    .local v10, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1922
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1923
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 1924
    .local v9, "maxWindowWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    if-lez v19, :cond_9

    .line 1925
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v9, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3f4ccccd    # 0.8f

    mul-float v20, v20, v21

    div-float v6, v19, v20

    .line 1926
    .local v6, "halfMaxWidthScale":F
    :goto_6
    const/16 v19, 0x0

    cmpl-float v19, v6, v19

    if-lez v19, :cond_a

    cmpg-float v19, v6, v11

    if-gez v19, :cond_a

    .line 1930
    const/4 v5, 0x3

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1932
    sub-float v15, v11, v6

    .line 1933
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1926
    goto/16 :goto_2

    .line 1925
    .end local v6    # "halfMaxWidthScale":F
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 1942
    .restart local v6    # "halfMaxWidthScale":F
    :cond_a
    const/4 v5, 0x1

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1944
    sub-float v15, v11, v4

    .line 1945
    add-float v12, v11, v4

    goto/16 :goto_2

    .line 1949
    .end local v3    # "columnCount":I
    .end local v4    # "gap":F
    .end local v6    # "halfMaxWidthScale":F
    .end local v8    # "i":I
    .end local v9    # "maxWindowWidth":F
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v18    # "widestTextBuilder":Ljava/lang/StringBuilder;
    :pswitch_2
    const/4 v5, 0x5

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1951
    move v12, v11

    .line 1952
    goto/16 :goto_2

    .line 1956
    :pswitch_3
    or-int/lit8 v5, v5, 0x30

    .line 1957
    move/from16 v16, v14

    .line 1958
    goto/16 :goto_3

    .line 1960
    :pswitch_4
    or-int/lit8 v5, v5, 0x10

    .line 1963
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v14

    move/from16 v0, v19

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1964
    .restart local v4    # "gap":F
    sub-float v16, v14, v4

    .line 1965
    add-float v13, v14, v4

    .line 1966
    goto/16 :goto_3

    .line 1968
    .end local v4    # "gap":F
    :pswitch_5
    or-int/lit8 v5, v5, 0x50

    .line 1969
    move v13, v14

    .line 1970
    goto/16 :goto_3

    .line 1980
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    goto/16 :goto_4

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1954
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1987
    sub-int v1, p4, p2

    .line 1988
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1989
    .local v0, "height":I
    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq v0, v2, :cond_1

    .line 1990
    :cond_0
    iput v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 1991
    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 1992
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1986
    :cond_1
    return-void
.end method

.method public removeFromCaptionView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2046
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    .line 2048
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2049
    iput-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2045
    :cond_0
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 1803
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method public sendControl(C)V
    .locals 0
    .param p1, "control"    # C

    .prologue
    .line 1806
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 1725
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1726
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1724
    return-void
.end method

.method public setCaptionWindowId(I)V
    .locals 0
    .param p1, "captionWindowId"    # I

    .prologue
    .line 1739
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    .line 1738
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .prologue
    .line 1730
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1731
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1729
    return-void
.end method

.method public setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .locals 3
    .param p1, "penAttr"    # Landroid/media/Cea708CCParser$CaptionPenAttr;

    .prologue
    .line 1758
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1759
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_0
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_1

    .line 1763
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_1
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    packed-switch v0, :pswitch_data_0

    .line 1773
    :goto_0
    :pswitch_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    packed-switch v0, :pswitch_data_1

    .line 1757
    :goto_1
    :pswitch_1
    return-void

    .line 1767
    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1770
    :pswitch_3
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1775
    :pswitch_4
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1778
    :pswitch_5
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1773
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .locals 0
    .param p1, "penColor"    # Landroid/media/Cea708CCParser$CaptionPenColor;

    .prologue
    .line 1783
    return-void
.end method

.method public setPenLocation(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 1789
    iget v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz v1, :cond_0

    .line 1790
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .local v0, "r":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1791
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1794
    .end local v0    # "r":I
    :cond_0
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1787
    return-void
.end method

.method public setRowLimit(I)V
    .locals 2
    .param p1, "rowLimit"    # I

    .prologue
    .line 2111
    if-gez p1, :cond_0

    .line 2112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A rowLimit should have a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2114
    :cond_0
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 2110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2053
    return-void
.end method

.method public setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .locals 0
    .param p1, "windowAttr"    # Landroid/media/Cea708CCParser$CaptionWindowAttr;

    .prologue
    .line 1797
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1747
    return-void
.end method

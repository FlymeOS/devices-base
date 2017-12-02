.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# static fields
.field private static final NUM_OF_VIEW_TYPES:I = 0x2

.field private static final VIEW_TYPE_ICON_ONLY:I = 0x1

.field private static final VIEW_TYPE_STRING_TITLE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconOnlyViewCalculator:Landroid/view/View;

.field private final mStringTitleViewCalculator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1534
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    .line 1535
    invoke-direct {p0, v1, v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    .line 1536
    invoke-direct {p0, v1, v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    .line 1533
    return-void
.end method

.method private getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1597
    if-eqz p3, :cond_1

    .line 1598
    move-object v0, p3

    .line 1606
    .local v0, "menuButton":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_0

    .line 1608
    const v1, 0x102005b

    .line 1607
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1609
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1607
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1610
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1612
    :cond_0
    return-object v0

    .line 1600
    .end local v0    # "menuButton":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1601
    const v2, 0x1090060

    .line 1600
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1602
    .restart local v0    # "menuButton":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1577
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 1578
    check-cast v0, Landroid/widget/TextView;

    .line 1586
    .local v0, "menuButton":Landroid/widget/TextView;
    :goto_0
    if-eqz p1, :cond_0

    .line 1587
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1589
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1591
    :cond_0
    return-object v0

    .line 1580
    .end local v0    # "menuButton":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1581
    const v2, 0x1090061

    .line 1580
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1582
    .restart local v0    # "menuButton":Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1583
    const/4 v2, -0x1

    .line 1584
    const/4 v3, -0x2

    .line 1582
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public calculateWidth(Landroid/view/MenuItem;)I
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 1561
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    .line 1563
    const v2, 0x102005b

    .line 1562
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1564
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1562
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconOnlyViewCalculator:Landroid/view/View;

    .line 1570
    .local v0, "calculator":Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1571
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    return v1

    .line 1567
    .end local v0    # "calculator":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mStringTitleViewCalculator:Landroid/widget/TextView;

    .restart local v0    # "calculator":Landroid/view/View;
    goto :goto_0
.end method

.method public getItemViewType(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1552
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x1

    return v0

    .line 1556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 1544
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getItemViewType(Landroid/view/MenuItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1546
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getIconOnlyView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1548
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getStringTitleView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1540
    const/4 v0, 0x2

    return v0
.end method

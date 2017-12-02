.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field public static final LAYOUT_MARGIN_BOTTOM_DIMEN:I = 0x3

.field public static final LAYOUT_MARGIN_END_DIMEN:I = 0x1

.field public static final LAYOUT_WIDTH:I = 0x2

.field public static final TAG:I = 0x13


# instance fields
.field property:I

.field value:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    .prologue
    .line 1868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 1869
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 1870
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    .line 1871
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    .line 1868
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1874
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 1875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 1876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    .line 1877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    .line 1874
    return-void
.end method

.method private static resolveDimenPixelOffset(Landroid/view/View;I)I
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 1922
    if-nez p1, :cond_0

    .line 1923
    return v0

    .line 1925
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1889
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1890
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    .line 1891
    return-void

    .line 1893
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1894
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 1895
    return-void

    .line 1897
    :cond_1
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    packed-switch v3, :pswitch_data_0

    .line 1917
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1899
    :pswitch_0
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    .line 1900
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    invoke-static {v2, v3}, Landroid/widget/RemoteViews$LayoutParamAction;->resolveDimenPixelOffset(Landroid/view/View;I)I

    move-result v1

    .local v1, "resolved":I
    move-object v3, v0

    .line 1901
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1902
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1888
    .end local v1    # "resolved":I
    :cond_2
    :goto_0
    return-void

    .line 1906
    :pswitch_1
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    .line 1907
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    invoke-static {v2, v3}, Landroid/widget/RemoteViews$LayoutParamAction;->resolveDimenPixelOffset(Landroid/view/View;I)I

    move-result v1

    .restart local v1    # "resolved":I
    move-object v3, v0

    .line 1908
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1909
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1913
    .end local v1    # "resolved":I
    :pswitch_2
    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1914
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LayoutParamAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1881
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->property:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1884
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    return-void
.end method

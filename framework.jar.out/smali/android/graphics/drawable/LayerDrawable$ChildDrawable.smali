.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDensity:I

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mGravity:I

.field public mHeight:I

.field public mId:I

.field public mInsetB:I

.field public mInsetE:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetS:I

.field public mInsetT:I

.field public mThemeAttrs:[I

.field public mWidth:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "density"    # I

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, -0x1

    .line 1829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1822
    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1823
    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1824
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1825
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1826
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1827
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1830
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1829
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v5, -0x80000000

    const/4 v4, -0x1

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    const/16 v3, 0xa0

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1822
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1823
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1824
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1825
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1826
    const/4 v3, 0x0

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1827
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1835
    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1837
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 1838
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 1839
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_1

    .line 1840
    move-object v0, v2

    .line 1846
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1847
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1848
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1849
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1854
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1855
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 1856
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1857
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1858
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1859
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1860
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1861
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1862
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1863
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1864
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1865
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1867
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1868
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v3, v4, :cond_0

    .line 1869
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-direct {p0, v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1834
    :cond_0
    return-void

    .line 1841
    .restart local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    if-eqz p3, :cond_2

    .line 1842
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1844
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1851
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_3
    const/4 v0, 0x0

    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private applyDensityScaling(II)V
    .locals 4
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 1888
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1889
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1890
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1891
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1892
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    if-eq v0, v2, :cond_0

    .line 1893
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1895
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    if-eq v0, v2, :cond_1

    .line 1896
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1898
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-lez v0, :cond_2

    .line 1899
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1901
    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-lez v0, :cond_3

    .line 1902
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1887
    :cond_3
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_0

    .line 1875
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    .line 1874
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDensity(I)V
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1879
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v1, p1, :cond_0

    .line 1880
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1881
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1883
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1878
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method

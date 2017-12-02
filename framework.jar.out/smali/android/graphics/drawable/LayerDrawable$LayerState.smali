.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field mDensity:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field mOpacityOverride:I

.field mPaddingBottom:I

.field mPaddingEnd:I

.field mPaddingLeft:I

.field private mPaddingMode:I

.field mPaddingRight:I

.field mPaddingStart:I

.field mPaddingTop:I

.field private mThemeAttrs:[I


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method

.method static synthetic -set2(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1937
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1916
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1917
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1918
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1919
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1920
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1921
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1922
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1933
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1935
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1939
    if-eqz p1, :cond_0

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    :goto_0
    invoke-static {p3, v4}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 1941
    if-eqz p1, :cond_3

    .line 1942
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1943
    .local v3, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1945
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1946
    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1948
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1949
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1951
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1952
    aget-object v2, v3, v1

    .line 1953
    .local v2, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v1

    .line 1951
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    move v4, v5

    .line 1939
    goto :goto_0

    .line 1956
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 1957
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1958
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 1959
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1960
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1961
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1962
    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 1963
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1964
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1965
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1966
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1967
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1968
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1969
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1971
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v4, v5, :cond_2

    .line 1972
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 1938
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    :goto_2
    return-void

    .line 1975
    :cond_3
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1976
    iput-object v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_2
.end method

.method private applyDensityScaling(II)V
    .locals 2
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    const/4 v1, 0x0

    .line 1994
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    if-lez v0, :cond_0

    .line 1996
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1995
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1998
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_1

    .line 2000
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1999
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2002
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_2

    .line 2004
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2003
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2006
    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_3

    .line 2008
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2007
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2010
    :cond_3
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_4

    .line 2012
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2011
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2014
    :cond_4
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_5

    .line 2016
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2015
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1993
    :cond_5
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2133
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2134
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 2135
    .local v0, "N":I
    const/4 v4, 0x0

    .line 2136
    .local v4, "pixelCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2137
    aget-object v6, v1, v3

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2138
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 2139
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 2140
    .local v5, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v5, :cond_0

    .line 2141
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    move-result v6

    add-int/2addr v4, v6

    .line 2136
    .end local v5    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2145
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v4
.end method

.method public canApplyTheme()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2022
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    if-nez v4, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2023
    :cond_0
    return v5

    .line 2026
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2027
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 2028
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2029
    aget-object v3, v1, v2

    .line 2030
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2031
    return v5

    .line 2028
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2035
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public final canConstantState()Z
    .locals 5

    .prologue
    .line 2113
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2114
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 2115
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2116
    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2117
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2118
    const/4 v4, 0x0

    return v4

    .line 2115
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2123
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 2050
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 2051
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 2050
    or-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 7

    .prologue
    .line 2055
    iget-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v6, :cond_0

    .line 2056
    iget v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v6

    .line 2059
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2060
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 2063
    .local v0, "N":I
    const/4 v3, -0x1

    .line 2064
    .local v3, "firstIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2065
    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 2066
    move v3, v4

    .line 2072
    :cond_1
    if-ltz v3, :cond_4

    .line 2073
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 2079
    .local v5, "op":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    :goto_2
    if-ge v4, v0, :cond_5

    .line 2080
    aget-object v6, v1, v4

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2081
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 2082
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    .line 2079
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2064
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "op":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2075
    :cond_4
    const/4 v5, -0x2

    .restart local v5    # "op":I
    goto :goto_1

    .line 2086
    :cond_5
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2087
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 2088
    return v5
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2127
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 2128
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 2126
    return-void
.end method

.method public final isStateful()Z
    .locals 6

    .prologue
    .line 2092
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    if-eqz v5, :cond_0

    .line 2093
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v5

    .line 2096
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2097
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 2098
    .local v0, "N":I
    const/4 v4, 0x0

    .line 2099
    .local v4, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2100
    aget-object v5, v1, v3

    iget-object v2, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2101
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2102
    const/4 v4, 0x1

    .line 2107
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2108
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 2109
    return v4

    .line 2099
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2040
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2045
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 1989
    return-void
.end method

.method public final setDensity(I)V
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1981
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v1, p1, :cond_0

    .line 1982
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 1983
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 1985
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 1980
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method

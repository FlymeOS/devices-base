.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field public mAngle:I

.field mAttrCorners:[I

.field mAttrGradient:[I

.field mAttrPadding:[I

.field mAttrSize:[I

.field mAttrSolid:[I

.field mAttrStroke:[I

.field mCenterX:F

.field mCenterY:F

.field public mChangingConfigurations:I

.field mDensity:I

.field public mDither:Z

.field public mGradient:I

.field public mGradientColors:[I

.field mGradientRadius:F

.field mGradientRadiusType:I

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field mOpaqueOverBounds:Z

.field mOpaqueOverShape:Z

.field public mOpticalInsets:Landroid/graphics/Insets;

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColors:Landroid/content/res/ColorStateList;

.field public mStrokeColors:Landroid/content/res/ColorStateList;

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field mThemeAttrs:[I

.field public mThickness:I

.field public mThicknessRatio:F

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseLevel:Z

.field mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "orig"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1820
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1767
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1768
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1769
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1777
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1778
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1779
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1780
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1781
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1782
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1783
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1784
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1785
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1786
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1787
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1788
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1789
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1790
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1792
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1793
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1794
    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1795
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1796
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1797
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1802
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1803
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1805
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 1821
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1822
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1823
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1824
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1825
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1826
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1827
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 1830
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    .line 1831
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1833
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1834
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1835
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1836
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1837
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1838
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1841
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1842
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1844
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1845
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1846
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1847
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1848
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1849
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1850
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1851
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1852
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1853
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1854
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1855
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1856
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1857
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1858
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 1859
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 1860
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1861
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1862
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 1863
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 1864
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 1865
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 1866
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 1867
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 1868
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 1870
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 1871
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_4

    .line 1872
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    .line 1820
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 5
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "gradientColors"    # [I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1815
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1767
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1768
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1769
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1777
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1778
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1779
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1780
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1781
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1782
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1783
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1784
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1785
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1786
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1787
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1788
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1789
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1790
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1792
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1793
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1794
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1795
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1796
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1797
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1802
    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1803
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1805
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 1816
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1817
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 1815
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 11
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1895
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-lez v4, :cond_0

    .line 1897
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1896
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1899
    :cond_0
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-lez v4, :cond_1

    .line 1901
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1900
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1903
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v4, v5, :cond_2

    .line 1905
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    .line 1904
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    .line 1907
    .local v1, "left":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    .line 1906
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 1909
    .local v3, "top":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    .line 1908
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    .line 1911
    .local v2, "right":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 1910
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 1912
    .local v0, "bottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1914
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    .line 1915
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1916
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1915
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1917
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1918
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1917
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1919
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1920
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 1919
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1921
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1922
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1921
    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1924
    :cond_3
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_4

    .line 1925
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1927
    :cond_4
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_5

    .line 1928
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1929
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v7

    float-to-int v5, v5

    .line 1928
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    .line 1930
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1931
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v6

    float-to-int v5, v5

    .line 1930
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    .line 1932
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1933
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v9

    float-to-int v5, v5

    .line 1932
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v9

    .line 1934
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1935
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v10

    float-to-int v5, v5

    .line 1934
    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    .line 1937
    :cond_5
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v4, :cond_6

    .line 1939
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1938
    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1941
    :cond_6
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_7

    .line 1943
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1942
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1945
    :cond_7
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_8

    .line 1947
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1946
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1949
    :cond_8
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-nez v4, :cond_9

    .line 1951
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1950
    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1953
    :cond_9
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-lez v4, :cond_a

    .line 1954
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1956
    :cond_a
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-lez v4, :cond_b

    .line 1957
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1894
    :cond_b
    return-void
.end method

.method private computeOpacity()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2028
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 2029
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 2031
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v3, :cond_1

    .line 2032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2033
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2034
    return-void

    .line 2032
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2040
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_2

    .line 2041
    return-void

    .line 2045
    :cond_2
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 2047
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-nez v3, :cond_4

    .line 2048
    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 2049
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez v3, :cond_3

    .line 2047
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 2027
    return-void

    :cond_3
    move v1, v2

    .line 2049
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2047
    goto :goto_1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    .line 1964
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v0, :cond_1

    .line 1963
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1964
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-nez v0, :cond_0

    .line 1965
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-nez v0, :cond_0

    .line 1966
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-nez v0, :cond_0

    .line 1967
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    .line 1963
    if-nez v0, :cond_0

    .line 1968
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    .line 1963
    if-nez v0, :cond_0

    .line 1969
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    .line 1963
    if-nez v0, :cond_0

    .line 1970
    :cond_4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1995
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1996
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    .line 1995
    :goto_0
    or-int/2addr v2, v0

    .line 1997
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    .line 1995
    :goto_1
    or-int/2addr v0, v2

    .line 1998
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    .line 1995
    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 1996
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1997
    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1975
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1983
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 1984
    .local v0, "density":I
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v2, :cond_0

    .line 1985
    new-instance v1, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 1990
    .local v1, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    return-object v2

    .line 1987
    .end local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_0
    move-object v1, p0

    .restart local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    goto :goto_0
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    .prologue
    .line 2070
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2071
    if-nez p1, :cond_0

    .line 2072
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2069
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 2062
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 2063
    const/4 p1, 0x0

    .line 2065
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2066
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2061
    return-void
.end method

.method public final setDensity(I)V
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1886
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v1, p1, :cond_0

    .line 1887
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 1888
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 1890
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    .line 1885
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2011
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2012
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 2010
    return-void
.end method

.method public setGradientColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 2016
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 2017
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2018
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2015
    return-void
.end method

.method public setGradientRadius(FI)V
    .locals 0
    .param p1, "gradientRadius"    # F
    .param p2, "type"    # I

    .prologue
    .line 2082
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2083
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 2081
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .param p1, "gradient"    # I

    .prologue
    .line 2007
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 2006
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1, "shape"    # I

    .prologue
    .line 2002
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2003
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2001
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2077
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2078
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2076
    return-void
.end method

.method public setSolidColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2022
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 2023
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2024
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2021
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .prologue
    .line 2054
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2055
    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 2056
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2057
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2058
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2053
    return-void
.end method

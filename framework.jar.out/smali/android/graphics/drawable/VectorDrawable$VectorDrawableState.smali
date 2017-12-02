.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorDrawableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
    }
.end annotation


# static fields
.field static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x13c


# instance fields
.field private mAllocationOfAllNodes:I

.field mAutoMirrored:Z

.field mBaseHeight:F

.field mBaseWidth:F

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedThemeAttrs:[I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mDensity:I

.field mLastHWCachePixelCount:I

.field mLastSWCachePixelCount:I

.field mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

.field mOpticalInsets:Landroid/graphics/Insets;

.field mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 840
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;-><init>(Ljava/lang/String;)V

    .line 839
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    .line 807
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 866
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 811
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 812
    sget-object v0, Landroid/graphics/drawable/VectorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 815
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    .line 816
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    .line 817
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 818
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 819
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 820
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 822
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 824
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 825
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    .line 836
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    .line 837
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    .line 860
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 867
    if-eqz p1, :cond_1

    .line 868
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 869
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 870
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 871
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 872
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 873
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 876
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    .line 877
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    .line 878
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 879
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 881
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 882
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 883
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 866
    return-void

    .line 887
    :cond_1
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 888
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    goto :goto_0
.end method

.method private applyDensityScaling(II)V
    .locals 6
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .prologue
    const/4 v5, 0x0

    .line 995
    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    .line 996
    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    .line 999
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    .line 998
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    .line 1001
    .local v1, "insetLeft":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    .line 1000
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 1003
    .local v3, "insetTop":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    .line 1002
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    .line 1005
    .local v2, "insetRight":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 1004
    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 1006
    .local v0, "insetBottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 994
    return-void
.end method

.method private createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 4
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 894
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap26(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 896
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 893
    return-void
.end method

.method private createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 6
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 902
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    .line 903
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v4

    .line 902
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-wrap25(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 905
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 901
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 946
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 945
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-nez v0, :cond_2

    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v0

    .line 951
    if-nez v0, :cond_2

    .line 953
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    .line 951
    if-nez v0, :cond_2

    .line 954
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    .line 951
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReuseCache()Z
    .locals 2

    .prologue
    .line 924
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-ne v0, v1, :cond_0

    .line 926
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    .line 927
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    .line 928
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    .line 929
    const/4 v0, 0x1

    return v0

    .line 931
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->finalize()V

    .line 1016
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    mul-int/lit8 v2, v2, 0x4

    add-int v0, v1, v2

    .line 1017
    .local v0, "bitmapCacheSize":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    .line 1018
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 1017
    add-int/lit16 v2, v2, 0x13c

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1014
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap6(J)F

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 969
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 970
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    .line 969
    :goto_0
    or-int/2addr v0, v1

    return v0

    .line 970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNativeRenderer()J
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    .line 918
    const-wide/16 v0, 0x0

    return-wide v0

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    return-object v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isStateful()Z

    move-result v0

    .line 974
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 975
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 964
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    return-object v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method onTreeConstructionFinished()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 912
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 913
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 910
    return-void
.end method

.method public setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap2(JF)Z

    move-result v0

    return v0
.end method

.method public final setDensity(I)Z
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 985
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    if-eq v1, p1, :cond_0

    .line 986
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 987
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 988
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyDensityScaling(II)V

    .line 989
    const/4 v1, 0x1

    return v1

    .line 991
    .end local v0    # "sourceDensity":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setViewportSize(FF)V
    .locals 2
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .prologue
    .line 979
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 980
    iput p2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 981
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->-wrap35(JFF)V

    .line 978
    return-void
.end method

.method public updateCacheStates()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    .line 939
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    .line 940
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 941
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 935
    return-void
.end method

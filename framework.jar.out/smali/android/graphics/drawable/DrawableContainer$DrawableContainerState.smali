.class public abstract Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroid/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "orig"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Landroid/graphics/drawable/DrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 718
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 669
    const/16 v7, 0xa0

    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 677
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 681
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 697
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 702
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 703
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 720
    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    .line 721
    if-eqz p3, :cond_6

    move-object v5, p3

    :cond_0
    :goto_0
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 722
    if-eqz p1, :cond_7

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    :goto_1
    invoke-static {p3, v5}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v5

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 724
    if-eqz p1, :cond_a

    .line 725
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 726
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 728
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 729
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 731
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 732
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 733
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 734
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 735
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 736
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 737
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 738
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 739
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 740
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 741
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 742
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 743
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 744
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 746
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-ne v5, v6, :cond_2

    .line 747
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v5, :cond_1

    .line 748
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 749
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 752
    :cond_1
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-eqz v5, :cond_2

    .line 753
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 754
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 755
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 756
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 757
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 761
    :cond_2
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v5, :cond_3

    .line 762
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 763
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 766
    :cond_3
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v5, :cond_4

    .line 767
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 768
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 773
    :cond_4
    iget-object v4, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 774
    .local v4, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v5, v4

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 775
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 777
    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 778
    .local v3, "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_8

    .line 779
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 787
    :goto_2
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 788
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_b

    .line 789
    aget-object v5, v4, v2

    if-eqz v5, :cond_5

    .line 790
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 791
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_9

    .line 792
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 721
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_6
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_7
    move v5, v6

    .line 722
    goto/16 :goto_1

    .line 781
    .restart local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .restart local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_8
    new-instance v5, Landroid/util/SparseArray;

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_2

    .line 794
    .restart local v0    # "N":I
    .restart local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v2    # "i":I
    :cond_9
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v4, v2

    aput-object v6, v5, v2

    goto :goto_4

    .line 799
    .end local v0    # "N":I
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "i":I
    .end local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_a
    const/16 v5, 0xa

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 800
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 719
    :cond_b
    return-void
.end method

.method private createAllFutures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 844
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 845
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 846
    .local v1, "futureCount":I
    const/4 v3, 0x0

    .local v3, "keyIndex":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 847
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 848
    .local v2, "index":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 849
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 852
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "index":I
    :cond_0
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 843
    .end local v1    # "futureCount":I
    .end local v3    # "keyIndex":I
    :cond_1
    return-void
.end method

.method private mutate()V
    .locals 4

    .prologue
    .line 988
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 989
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 990
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 991
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 992
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 990
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 996
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 985
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "child"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 857
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 859
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 860
    return-object p1
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 5
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
    .line 1200
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1201
    .local v0, "N":I
    const/4 v2, 0x0

    .line 1202
    .local v2, "pixelCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1203
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 1204
    .local v3, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_0

    .line 1205
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    .end local v3    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    return v2
.end method

.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 816
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 817
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 818
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 822
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 823
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 825
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 826
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 827
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 828
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 829
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 831
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 832
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 833
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 834
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 836
    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 946
    if-eqz p1, :cond_2

    .line 947
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 949
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 950
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 951
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 952
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 953
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 956
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 945
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 966
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 967
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 968
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 969
    aget-object v1, v2, v4

    .line 970
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 972
    return v6

    .line 975
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 976
    .local v3, "future":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 977
    return v6

    .line 968
    .end local v3    # "future":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public declared-synchronized canConstantState()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    .line 1176
    :try_start_0
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v3, :cond_0

    .line 1177
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    .line 1180
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1182
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 1184
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1185
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1186
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1187
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1188
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1189
    return v5

    .line 1186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1193
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1194
    return v4

    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method final clearMutated()V
    .locals 4

    .prologue
    .line 1000
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1001
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1002
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1003
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 1004
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1002
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 999
    return-void
.end method

.method protected computeConstantSize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1090
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 1092
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1094
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1095
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1096
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1097
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1098
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1099
    aget-object v1, v2, v3

    .line 1100
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1101
    .local v4, "s":I
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1102
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1103
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 1104
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1105
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1106
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 1107
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_3

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 1098
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1089
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 878
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v4, p1

    .line 879
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 880
    return-object v3

    .line 884
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 885
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 886
    .local v1, "keyIndex":I
    if-ltz v1, :cond_2

    .line 887
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 888
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 889
    .local v2, "prepared":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, p1

    .line 890
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 891
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 892
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 894
    :cond_1
    return-object v2

    .line 898
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v1    # "keyIndex":I
    .end local v2    # "prepared":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v5
.end method

.method public final getChildCount()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    .prologue
    .line 1066
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1070
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1086
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    .line 1075
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1078
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1021
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v5, :cond_0

    .line 1022
    return-object v6

    .line 1025
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v5, :cond_2

    .line 1026
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v5

    .line 1029
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1031
    const/4 v3, 0x0

    .line 1032
    .local v3, "r":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1033
    .local v4, "t":Landroid/graphics/Rect;
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1034
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1035
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .end local v3    # "r":Landroid/graphics/Rect;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 1036
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1037
    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1038
    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 1039
    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1040
    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1041
    :cond_6
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1035
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1045
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 1046
    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v3
.end method

.method public final getConstantWidth()I
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1062
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1128
    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v4, :cond_0

    .line 1129
    iget v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    return v4

    .line 1132
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1134
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 1136
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1137
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1138
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_1

    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 1139
    .local v3, "op":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1140
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1138
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    .restart local v3    # "op":I
    goto :goto_0

    .line 1143
    .restart local v2    # "i":I
    :cond_2
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 1144
    return v3
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1170
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 1171
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1169
    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1148
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v3, :cond_0

    .line 1149
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    return v3

    .line 1152
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1154
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 1156
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1157
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1158
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1159
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1160
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 1161
    return v4

    .line 1158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1165
    :cond_2
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 1166
    return v5
.end method

.method public final setConstantSize(Z)V
    .locals 0
    .param p1, "constant"    # Z

    .prologue
    .line 1050
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 1049
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1112
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 1111
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1120
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 1119
    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "currentIndex"    # I

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 906
    .local v1, "changed":Z
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 907
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 908
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .end local v1    # "changed":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 909
    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    .line 910
    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v2

    .line 911
    .local v2, "childChanged":Z
    if-ne v4, p2, :cond_0

    .line 912
    move v1, v2

    .line 908
    .end local v2    # "childChanged":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 917
    :cond_1
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 919
    return v1
.end method

.method public final setVariablePadding(Z)V
    .locals 0
    .param p1, "variable"    # Z

    .prologue
    .line 1017
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 1016
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    .line 929
    if-eqz p1, :cond_0

    .line 930
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 934
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 935
    .local v1, "targetDensity":I
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 936
    .local v0, "sourceDensity":I
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 938
    if-eq v0, v1, :cond_0

    .line 939
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 940
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 928
    .end local v0    # "sourceDensity":I
    .end local v1    # "targetDensity":I
    :cond_0
    return-void
.end method

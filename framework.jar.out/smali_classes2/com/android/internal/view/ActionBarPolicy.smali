.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 106
    const/16 v1, 0xe

    .line 105
    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 9

    .prologue
    const/16 v8, 0x3c0

    const/16 v7, 0x2d0

    const/16 v6, 0x280

    const/16 v5, 0x1e0

    .line 48
    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 49
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 50
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 51
    .local v1, "height":I
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 52
    .local v2, "smallest":I
    const/16 v4, 0x258

    if-gt v2, v4, :cond_0

    if-le v3, v8, :cond_1

    if-le v1, v7, :cond_1

    .line 54
    :cond_0
    const/4 v4, 0x5

    return v4

    .line 52
    :cond_1
    if-le v3, v7, :cond_2

    if-gt v1, v8, :cond_0

    .line 55
    :cond_2
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_3

    if-le v3, v6, :cond_4

    if-le v1, v5, :cond_4

    .line 57
    :cond_3
    const/4 v4, 0x4

    return v4

    .line 55
    :cond_4
    if-le v3, v5, :cond_5

    if-gt v1, v6, :cond_3

    .line 58
    :cond_5
    const/16 v4, 0x168

    if-lt v3, v4, :cond_6

    .line 60
    const/4 v4, 0x3

    return v4

    .line 62
    :cond_6
    const/4 v4, 0x2

    return v4
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x1050072

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v5, 0x0

    .line 90
    const v6, 0x10102ce

    .line 89
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 92
    .local v1, "height":I
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 93
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const v3, 0x1050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 95
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 9

    .prologue
    const/16 v8, 0x1e0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 75
    .local v2, "targetSdk":I
    const/16 v6, 0x10

    if-lt v2, v6, :cond_0

    .line 76
    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    return v4

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 82
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 83
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 84
    .local v1, "height":I
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 85
    if-lt v3, v8, :cond_2

    .line 84
    :cond_1
    :goto_0
    return v4

    .line 85
    :cond_2
    const/16 v6, 0x280

    if-lt v3, v6, :cond_3

    if-ge v1, v8, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V
    .locals 3
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 36
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 37
    if-eqz p3, :cond_0

    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 39
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    .line 42
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/lit16 v0, v1, 0x20f

    .line 43
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v2

    .line 44
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 45
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 46
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 34
    return-void

    .line 38
    .end local v0    # "hash":I
    .restart local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_0
    sget-object p3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 42
    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 60
    instance-of v1, p1, Landroid/content/res/ResourcesKey;

    if-nez v1, :cond_0

    .line 61
    return v3

    :cond_0
    move-object v0, p1

    .line 63
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 65
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    return v3

    .line 68
    :cond_1
    iget v1, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v2, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v1, v2, :cond_2

    .line 69
    return v3

    .line 71
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    return v3

    .line 74
    :cond_3
    iget v1, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget v2, v0, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 75
    return v3

    .line 77
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    .line 50
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

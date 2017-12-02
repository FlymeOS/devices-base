.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public final mDisplayId:I

.field private final mHash:I

.field public final mLibDirs:[Ljava/lang/String;

.field public final mOverlayDirs:[Ljava/lang/String;

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mResDir:Ljava/lang/String;

.field public final mSplitResDirs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 61
    iput p5, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 62
    if-eqz p6, :cond_0

    .end local p6    # "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iput-object p6, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 63
    if-eqz p7, :cond_1

    .end local p7    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :goto_1
    iput-object p7, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 66
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 67
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 69
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v2

    .line 71
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 72
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 73
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 56
    return-void

    .line 62
    .end local v0    # "hash":I
    .restart local p6    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p7    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_0
    sget-object p6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 63
    .end local p6    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1
    sget-object p7, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    goto :goto_1
.end method

.method private static anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    if-eqz p0, :cond_1

    .line 91
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 92
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 107
    instance-of v1, p1, Landroid/content/res/ResourcesKey;

    if-nez v1, :cond_0

    .line 108
    return v3

    :cond_0
    move-object v0, p1

    .line 111
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 112
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget v1, p0, Landroid/content/res/ResourcesKey;->mHash:I

    iget v2, v0, Landroid/content/res/ResourcesKey;->mHash:I

    if-eq v1, v2, :cond_1

    .line 114
    return v3

    .line 117
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    return v3

    .line 120
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    return v3

    .line 123
    :cond_3
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    return v3

    .line 126
    :cond_4
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 127
    return v3

    .line 129
    :cond_5
    iget v1, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v2, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v1, v2, :cond_6

    .line 130
    return v3

    .line 132
    :cond_6
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 133
    return v3

    .line 135
    :cond_7
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 136
    return v3

    .line 138
    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    .line 77
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
    .line 102
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public isPathReferenced(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    return v0

    .line 84
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 84
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ResourcesKey{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v1, " mResDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v1, " mSplitDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    const-string/jumbo v1, ","

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v1, " mOverlayDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 153
    const-string/jumbo v1, ","

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v1, " mLibDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 158
    const-string/jumbo v1, ","

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, " mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 162
    invoke-static {v2}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, " mCompatInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

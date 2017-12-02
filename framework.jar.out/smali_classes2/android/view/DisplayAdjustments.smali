.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 29
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 29
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 35
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .locals 1
    .param p1, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 29
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 39
    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 40
    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Landroid/view/DisplayAdjustments;

    if-nez v2, :cond_0

    .line 83
    return v1

    :cond_0
    move-object v0, p1

    .line 85
    check-cast v0, Landroid/view/DisplayAdjustments;

    .line 86
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v1, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 86
    :cond_1
    return v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 76
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 77
    return v0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 44
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    :cond_1
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 43
    :goto_0
    return-void

    .line 50
    :cond_2
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .end local p1    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 60
    return-void

    .line 65
    .restart local p1    # "configuration":Landroid/content/res/Configuration;
    :cond_1
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0
.end method

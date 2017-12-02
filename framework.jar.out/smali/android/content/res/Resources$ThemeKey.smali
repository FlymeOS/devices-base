.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 1647
    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x4

    .line 1655
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    .line 1656
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1659
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    .line 1660
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1663
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1664
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1665
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1667
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    mul-int/lit8 v1, v0, 0x1f

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 1654
    return-void

    .line 1667
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .prologue
    .line 1716
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 1717
    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1718
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1719
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1720
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 1721
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1715
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1688
    if-ne p0, p1, :cond_0

    .line 1689
    return v6

    .line 1692
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1693
    :cond_1
    return v5

    .line 1692
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v2, p1

    .line 1696
    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    .line 1697
    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v3, v4, :cond_3

    .line 1698
    return v5

    .line 1701
    :cond_3
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1702
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 1703
    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v4, v4, v1

    if-eq v3, v4, :cond_5

    .line 1704
    :cond_4
    return v5

    .line 1702
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1708
    :cond_6
    return v6
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    .prologue
    const/4 v1, 0x0

    .line 1676
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1677
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1678
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1675
    return-void

    .line 1676
    :cond_0
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1677
    :cond_1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move-object v1, v0

    goto :goto_1
.end method

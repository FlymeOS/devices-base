.class final Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 7929
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 7930
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 7932
    .local v1, "v2":I
    if-eq v0, v1, :cond_2

    .line 7933
    if-le v0, v1, :cond_1

    .line 7952
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 7933
    goto :goto_0

    .line 7935
    :cond_2
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 7936
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 7937
    if-eq v0, v1, :cond_3

    .line 7938
    if-gt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 7940
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_4

    .line 7941
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 7943
    :cond_4
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 7944
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 7946
    if-eq v0, v1, :cond_5

    .line 7947
    if-gt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 7949
    :cond_5
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_6

    .line 7950
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 7952
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7927
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$4;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.class final Lcom/android/server/pm/ShortcutUser$PackageWithUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageWithUser"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final userId:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    .line 76
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .locals 3
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 94
    instance-of v2, p1, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    if-nez v2, :cond_0

    .line 95
    return v1

    :cond_0
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 99
    .local v0, "that":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    iget v3, v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    const-string/jumbo v0, "[Package: %d, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

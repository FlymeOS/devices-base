.class final Lcom/android/server/pm/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# static fields
.field static final TYPE_BUILTIN:I = 0x1

.field static final TYPE_DYNAMIC:I = 0x2

.field static final TYPE_NORMAL:I


# instance fields
.field private gids:[I

.field final name:Ljava/lang/String;

.field packageSetting:Lcom/android/server/pm/PackageSettingBase;

.field pendingInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackage:Ljava/lang/String;

.field final type:I

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_sourcePackage"    # Ljava/lang/String;
    .param p3, "_type"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/android/server/pm/BasePermission;->type:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 56
    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 76
    iget-boolean v2, p0, Lcom/android/server/pm/BasePermission;->perUser:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 78
    .local v1, "userGids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    aget v2, v2, v0

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v1

    .line 83
    .end local v0    # "i":I
    .end local v1    # "userGids":[I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    return-object v2
.end method

.method public isDevelopment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget v1, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 94
    const/4 v2, 0x2

    .line 93
    if-ne v1, v2, :cond_0

    .line 95
    iget v1, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public isRuntime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGids([IZ)V
    .locals 0
    .param p1, "gids"    # [I
    .param p2, "perUser"    # Z

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    .line 72
    iput-boolean p2, p0, Lcom/android/server/pm/BasePermission;->perUser:Z

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BasePermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "}"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

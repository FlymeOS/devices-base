.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionData;,
        Lcom/android/server/pm/PermissionsState$PermissionState;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 75
    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 3
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .prologue
    .line 570
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 571
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 572
    .local v0, "guid":I
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "guid":I
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 579
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-gez p0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 596
    :cond_1
    return-void
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .locals 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 586
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 589
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 591
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_1
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 485
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 486
    return-object v2

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 489
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    .line 490
    return-object v2

    .line 492
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 498
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_0

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 502
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 505
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 506
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 508
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v3

    .line 509
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_1

    .line 510
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    .end local v3    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_2
    return-object v4
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 8
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 518
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 519
    return v7

    .line 522
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 523
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 525
    .local v2, "oldGids":[I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 527
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 528
    return v7

    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    move v0, v5

    .line 522
    goto :goto_0

    .line 523
    .restart local v0    # "hasGids":Z
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_1

    .line 531
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    if-eqz v0, :cond_4

    .line 532
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 533
    .local v1, "newGids":[I
    array-length v6, v2

    array-length v7, v1

    if-eq v6, v7, :cond_4

    .line 534
    return v5

    .line 538
    .end local v1    # "newGids":[I
    :cond_4
    return v4
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 542
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 543
    return v8

    .line 546
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 547
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 549
    .local v2, "oldGids":[I
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 551
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 552
    return v8

    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    move v0, v5

    .line 546
    goto :goto_0

    .line 547
    .restart local v0    # "hasGids":Z
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_1

    .line 555
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 556
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 559
    :cond_4
    if-eqz v0, :cond_5

    .line 560
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 561
    .local v1, "newGids":[I
    array-length v6, v2

    array-length v7, v1

    if-eq v6, v7, :cond_5

    .line 562
    return v5

    .line 566
    .end local v1    # "newGids":[I
    :cond_5
    return v4
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 436
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 440
    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_2

    .line 441
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 442
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 443
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 444
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 448
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v2

    .line 449
    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v2, v6, :cond_0

    .line 450
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    goto :goto_1

    .line 455
    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    return-object v0
.end method

.method public computeGids([I)[I
    .locals 5
    .param p1, "userIds"    # [I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 467
    .local v0, "gids":[I
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 468
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 469
    .local v1, "userGids":[I
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "userGids":[I
    .end local v2    # "userId":I
    :cond_0
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    const/4 v8, 0x0

    .line 96
    if-ne p1, p0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1

    .line 100
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_3

    .line 101
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 106
    :cond_1
    :goto_0
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_4

    .line 107
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_2

    .line 108
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 110
    :cond_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 111
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 112
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 114
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/PermissionsState$PermissionData;

    invoke-direct {v7, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    goto :goto_0

    .line 118
    :cond_4
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 119
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    sget-object v7, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v6, v7, :cond_5

    .line 120
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 121
    iget-object v7, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    array-length v7, v7

    .line 120
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 124
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_6

    .line 125
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_8

    .line 126
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 131
    :cond_6
    :goto_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_9

    .line 132
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_7

    .line 133
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 135
    :cond_7
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 136
    .local v5, "userCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v5, :cond_9

    .line 137
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 138
    .local v4, "reviewRequired":Z
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 128
    .end local v0    # "i":I
    .end local v4    # "reviewRequired":Z
    .end local v5    # "userCount":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_2

    .line 95
    :cond_9
    return-void
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    .line 348
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 351
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    .line 352
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 355
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 273
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 277
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 279
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 280
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 281
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_2
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 289
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 316
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 181
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 182
    if-ne p2, v0, :cond_0

    .line 183
    return v0

    .line 185
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 239
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 240
    return v1

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 244
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 253
    return v3

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 260
    :cond_2
    return v3
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 214
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionReviewRequired(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 480
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 481
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 478
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 198
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 199
    if-ne p2, v0, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .locals 1
    .param p1, "globalGids"    # [I

    .prologue
    .line 85
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 84
    :cond_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 368
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 370
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 372
    .local v0, "mayChangeFlags":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_3

    .line 373
    if-nez v0, :cond_2

    .line 374
    return v7

    .line 370
    .end local v0    # "mayChangeFlags":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mayChangeFlags":Z
    goto :goto_0

    .line 376
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 379
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 380
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v3, :cond_5

    .line 381
    if-nez v0, :cond_4

    .line 382
    return v7

    .line 384
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 387
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v2

    .line 389
    .local v2, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 390
    .local v4, "updated":Z
    if-eqz v4, :cond_7

    .line 391
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 392
    .local v1, "newFlags":I
    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_8

    .line 393
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_8

    .line 394
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_6

    .line 395
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 397
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 408
    .end local v1    # "newFlags":I
    :cond_7
    :goto_1
    return v4

    .line 398
    .restart local v1    # "newFlags":I
    :cond_8
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_7

    .line 399
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_7

    .line 400
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_7

    .line 401
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 402
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-gtz v5, :cond_7

    .line 403
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    .line 413
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 415
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 416
    const/4 v4, 0x0

    return v4

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 419
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 420
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 421
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 422
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 420
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "changed":Z
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    return v0
.end method

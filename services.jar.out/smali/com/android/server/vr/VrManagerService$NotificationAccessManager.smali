.class final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationAccessManager"
.end annotation


# instance fields
.field private final mAllowedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 269
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 268
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 274
    .local v1, "currentUserId":I
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 275
    .local v0, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 280
    .restart local v0    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 281
    .local v4, "listenerCount":I
    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 282
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 283
    .local v2, "grantUserId":I
    if-eq v2, v1, :cond_1

    .line 284
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v5, v2}, Lcom/android/server/vr/VrManagerService;->-wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 286
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v5}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 287
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v5, v2}, Lcom/android/server/vr/VrManagerService;->-wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 288
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 281
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 292
    .end local v2    # "grantUserId":I
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 293
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 294
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 295
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 296
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 297
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 300
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .restart local v6    # "pkg":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 302
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 303
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 304
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap7(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 305
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 309
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 310
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

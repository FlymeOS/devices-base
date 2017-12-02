.class Lcom/android/server/content/SyncManager$11;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .locals 7
    .param p1, "type"    # Landroid/content/SyncAdapterType;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 537
    if-nez p3, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    .line 540
    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 538
    const/4 v2, -0x1

    .line 539
    const/4 v3, -0x3

    .line 540
    const/4 v6, -0x2

    move-object v5, v1

    .line 538
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 536
    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 536
    check-cast p1, Landroid/content/SyncAdapterType;

    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$11;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method

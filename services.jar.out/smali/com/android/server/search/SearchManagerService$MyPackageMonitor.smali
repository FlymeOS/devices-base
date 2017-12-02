.class Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 175
    .local v0, "changingUserId":I
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/search/Searchables;

    invoke-virtual {v3}, Lcom/android/server/search/Searchables;->updateSearchableList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 173
    return-void

    .line 177
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 169
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 164
    return-void
.end method

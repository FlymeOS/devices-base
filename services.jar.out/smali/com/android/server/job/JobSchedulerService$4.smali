.class Lcom/android/server/job/JobSchedulerService$4;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$4;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 6
    .param p1, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1852
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 1853
    .local v2, "uid1":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 1854
    .local v3, "uid2":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    .line 1855
    .local v0, "id1":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    .line 1856
    .local v1, "id2":I
    if-eq v2, v3, :cond_1

    .line 1857
    if-ge v2, v3, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    .line 1859
    :cond_1
    if-ge v0, v1, :cond_2

    :goto_1
    return v4

    :cond_2
    if-le v0, v1, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1851
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$4;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    return v0
.end method

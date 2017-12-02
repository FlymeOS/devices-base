.class Lcom/android/server/job/JobStore$JobSet;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobSet"
.end annotation


# instance fields
.field private mJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 777
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 806
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 807
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_0

    .line 808
    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 809
    .restart local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 811
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 827
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 828
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public countJobsForUid(I)I
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 876
    const/4 v3, 0x0

    .line 877
    .local v3, "total":I
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 878
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_1

    .line 879
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 880
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 881
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 882
    add-int/lit8 v3, v3, 0x1

    .line 879
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 886
    .end local v0    # "i":I
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return v3
.end method

.method public forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    .prologue
    .line 899
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 900
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 902
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v2}, Lcom/android/server/job/JobStore$JobStatusFunctor;->process(Lcom/android/server/job/controllers/JobStatus;)V

    .line 901
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 898
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 4
    .param p1, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    .prologue
    .line 890
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "uidIndex":I
    :goto_0
    if-ltz v2, :cond_1

    .line 891
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 892
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 893
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p1, v3}, Lcom/android/server/job/JobStore$JobStatusFunctor;->process(Lcom/android/server/job/controllers/JobStatus;)V

    .line 892
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 890
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 889
    .end local v0    # "i":I
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-void
.end method

.method public get(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    const/4 v4, 0x0

    .line 832
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 833
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_1

    .line 834
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 835
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 836
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 837
    return-object v1

    .line 834
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 841
    .end local v0    # "i":I
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-object v4
.end method

.method public getAllJobs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 847
    .local v0, "allJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 848
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 849
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 854
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 847
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 858
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v1, "matchingJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 784
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 787
    :cond_0
    return-object v1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 794
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 795
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 796
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 793
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    :cond_1
    return-object v2
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v0, 0x0

    .line 815
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 816
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 817
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 818
    .local v0, "didRemove":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 820
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    :cond_1
    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 866
    const/4 v1, 0x0

    .line 867
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 868
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 870
    :cond_0
    return v1
.end method

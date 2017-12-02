.class final Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
.super Ljava/lang/Object;
.source "AppIdleController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageUpdateFunc"
.end annotation


# instance fields
.field mChanged:Z

.field final mIdle:Z

.field final mPackage:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "idle"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mUserId:I

    .line 73
    iput-object p2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mPackage:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mIdle:Z

    .line 71
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    iget v2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mUserId:I

    if-ne v0, v2, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mIdle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-boolean v1, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mChanged:Z

    .line 77
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 80
    goto :goto_0
.end method

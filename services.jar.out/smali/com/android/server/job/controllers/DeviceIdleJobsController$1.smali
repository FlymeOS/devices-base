.class Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Ljava/lang/Object;
.source "DeviceIdleJobsController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-wrap0(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)V

    .line 60
    return-void
.end method

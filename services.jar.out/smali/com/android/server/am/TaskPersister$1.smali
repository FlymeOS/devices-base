.class Lcom/android/server/am/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(I)Ljava/util/List;
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
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$1;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 8
    .param p1, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p2, "rhs"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const-wide/16 v6, 0x0

    .line 505
    iget-wide v2, p2, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iget-wide v4, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    sub-long v0, v2, v4

    .line 506
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 507
    const/4 v2, -0x1

    return v2

    .line 508
    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 509
    const/4 v2, 0x1

    return v2

    .line 511
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, Lcom/android/server/am/TaskRecord;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/TaskRecord;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskPersister$1;->compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v0

    return v0
.end method

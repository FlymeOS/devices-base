.class Lcom/android/server/AlarmManagerService$BatchTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Batch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I
    .locals 5
    .param p1, "b1"    # Lcom/android/server/AlarmManagerService$Batch;
    .param p2, "b2"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 607
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 608
    .local v0, "when1":J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 609
    .local v2, "when2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 610
    const/4 v4, 0x1

    return v4

    .line 612
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 613
    const/4 v4, -0x1

    return v4

    .line 615
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "b1"    # Ljava/lang/Object;
    .param p2, "b2"    # Ljava/lang/Object;

    .prologue
    .line 606
    check-cast p1, Lcom/android/server/AlarmManagerService$Batch;

    .end local p1    # "b1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Batch;

    .end local p2    # "b2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I

    move-result v0

    return v0
.end method

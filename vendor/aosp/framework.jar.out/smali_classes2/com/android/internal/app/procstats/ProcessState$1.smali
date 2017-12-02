.class final Lcom/android/internal/app/procstats/ProcessState$1;
.super Ljava/lang/Object;
.source "ProcessState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/procstats/ProcessState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "rhs"    # Lcom/android/internal/app/procstats/ProcessState;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-get0(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-get0(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 104
    const/4 v0, -0x1

    return v0

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-get0(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-get0(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/android/internal/app/procstats/ProcessState;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/procstats/ProcessState;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState$1;->compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I

    move-result v0

    return v0
.end method

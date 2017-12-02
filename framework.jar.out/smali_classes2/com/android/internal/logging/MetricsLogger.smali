.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final VIEW_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    .line 63
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I

    .prologue
    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .prologue
    .line 71
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-static {p1, v1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 41
    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 58
    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 49
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    .line 34
    return-void
.end method

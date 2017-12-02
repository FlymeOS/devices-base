.class Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduleSyncMessagePayload"
.end annotation


# instance fields
.field final minDelayMillis:J

.field final syncOperation:Lcom/android/server/content/SyncOperation;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .prologue
    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 1221
    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    .line 1219
    return-void
.end method

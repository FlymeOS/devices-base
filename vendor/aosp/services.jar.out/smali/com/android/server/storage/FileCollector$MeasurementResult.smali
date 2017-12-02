.class public Lcom/android/server/storage/FileCollector$MeasurementResult;
.super Ljava/lang/Object;
.source "FileCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/FileCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasurementResult"
.end annotation


# instance fields
.field public audioSize:J

.field public imagesSize:J

.field public miscSize:J

.field public videosSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public totalAccountedSize()J
    .locals 4

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    iget-wide v2, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

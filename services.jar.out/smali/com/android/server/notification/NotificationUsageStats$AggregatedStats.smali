.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field public mLastAccessTime:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 397
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_noisy_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 398
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_quiet_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 399
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_importance_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 400
    new-instance v0, Lcom/android/server/notification/RateEstimator;

    invoke-direct {v0}, Lcom/android/server/notification/RateEstimator;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 393
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .locals 4
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 694
    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 695
    float-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 693
    :cond_0
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 688
    if-lez p3, :cond_0

    .line 689
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 687
    :cond_0
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v1, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "AggregatedStats{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "indentPlusTwo":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string/jumbo v2, "key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\',\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v2, "numEnqueuedByApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo v2, "numPostedByApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string/jumbo v2, "numUpdatedByApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string/jumbo v2, "numRemovedByApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string/jumbo v2, "numPeopleCacheHit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string/jumbo v2, "numWithStaredPeople="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string/jumbo v2, "numWithValidPeople="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string/jumbo v2, "numPeopleCacheMiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string/jumbo v2, "numBlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string/jumbo v2, "numSuspendedByAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v2, "numWithActions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string/jumbo v2, "numPrivate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v2, "numSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v2, "numInterrupt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo v2, "numWithBigText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v2, "numWithBigPicture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v2, "numForegroundService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v2, "numOngoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v2, "numAutoCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string/jumbo v2, "numWithLargeIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v2, "numWithInbox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string/jumbo v2, "numWithMediaSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v2, "numWithTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string/jumbo v2, "numWithText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v2, "numWithSubText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string/jumbo v2, "numWithInfoText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string/jumbo v2, "numRateViolations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v2, "numQuotaViolations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 412
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_0

    .line 413
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 416
    :cond_0
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 417
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 420
    :cond_1
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 421
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 424
    :cond_2
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 425
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 428
    :cond_3
    iget v2, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 429
    iget v2, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 431
    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 434
    :cond_5
    iget v2, v0, Landroid/app/Notification;->visibility:I

    packed-switch v2, :pswitch_data_0

    .line 443
    :goto_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v2, :cond_10

    .line 444
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 448
    :goto_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 450
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 451
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "android.bigText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 452
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 454
    :cond_6
    const-string/jumbo v2, "android.picture"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 455
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 457
    :cond_7
    const-string/jumbo v2, "android.largeIcon"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 458
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 460
    :cond_8
    const-string/jumbo v2, "android.textLines"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 461
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 463
    :cond_9
    const-string/jumbo v2, "android.mediaSession"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 464
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 466
    :cond_a
    const-string/jumbo v2, "android.title"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 467
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 470
    :cond_b
    :goto_3
    const-string/jumbo v2, "android.text"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 471
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 474
    :cond_c
    :goto_4
    const-string/jumbo v2, "android.subText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 475
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 478
    :cond_d
    :goto_5
    const-string/jumbo v2, "android.infoText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 479
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.infoText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 410
    :cond_e
    :goto_6
    return-void

    .line 430
    .end local v1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    iget-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 436
    :pswitch_0
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    goto/16 :goto_1

    .line 439
    :pswitch_1
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    goto/16 :goto_1

    .line 446
    :cond_10
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    goto/16 :goto_2

    .line 468
    .restart local v1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    goto :goto_3

    .line 472
    :cond_12
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    goto :goto_4

    .line 476
    :cond_13
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    goto :goto_5

    .line 480
    :cond_14
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    goto :goto_6

    .line 434
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 558
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v1

    .line 648
    .local v1, "previous":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 649
    .local v0, "dump":Lorg/json/JSONObject;
    const-string/jumbo v2, "key"

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string/jumbo v2, "duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 651
    const-string/jumbo v2, "numEnqueuedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 652
    const-string/jumbo v2, "numPostedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 653
    const-string/jumbo v2, "numUpdatedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 654
    const-string/jumbo v2, "numRemovedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 655
    const-string/jumbo v2, "numPeopleCacheHit"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 656
    const-string/jumbo v2, "numPeopleCacheMiss"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 657
    const-string/jumbo v2, "numWithStaredPeople"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 658
    const-string/jumbo v2, "numWithValidPeople"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 659
    const-string/jumbo v2, "numBlocked"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 660
    const-string/jumbo v2, "numSuspendedByAdmin"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 661
    const-string/jumbo v2, "numWithActions"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 662
    const-string/jumbo v2, "numPrivate"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 663
    const-string/jumbo v2, "numSecret"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 664
    const-string/jumbo v2, "numInterrupt"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 665
    const-string/jumbo v2, "numWithBigText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 666
    const-string/jumbo v2, "numWithBigPicture"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 667
    const-string/jumbo v2, "numForegroundService"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 668
    const-string/jumbo v2, "numOngoing"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 669
    const-string/jumbo v2, "numAutoCancel"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 670
    const-string/jumbo v2, "numWithLargeIcon"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 671
    const-string/jumbo v2, "numWithInbox"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 672
    const-string/jumbo v2, "numWithMediaSession"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 673
    const-string/jumbo v2, "numWithTitle"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 674
    const-string/jumbo v2, "numWithText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 675
    const-string/jumbo v2, "numWithSubText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 676
    const-string/jumbo v2, "numWithInfoText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 677
    const-string/jumbo v2, "numRateViolations"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 678
    const-string/jumbo v2, "numQuotaLViolations"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 679
    const-string/jumbo v2, "notificationEnqueueRate"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 680
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 681
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 682
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 684
    return-object v0
.end method

.method public emit()V
    .locals 4

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 486
    .local v0, "previous":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const-string/jumbo v1, "note_enqueued"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 487
    const-string/jumbo v1, "note_post"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 488
    const-string/jumbo v1, "note_update"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 489
    const-string/jumbo v1, "note_remove"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 490
    const-string/jumbo v1, "note_with_people"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 491
    const-string/jumbo v1, "note_with_stars"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 492
    const-string/jumbo v1, "people_cache_hit"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 493
    const-string/jumbo v1, "people_cache_miss"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 494
    const-string/jumbo v1, "note_blocked"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 495
    const-string/jumbo v1, "note_suspended"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 496
    const-string/jumbo v1, "note_with_actions"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 497
    const-string/jumbo v1, "note_private"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 498
    const-string/jumbo v1, "note_secret"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 499
    const-string/jumbo v1, "note_interupt"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 500
    const-string/jumbo v1, "note_big_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 501
    const-string/jumbo v1, "note_big_pic"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 502
    const-string/jumbo v1, "note_fg"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 503
    const-string/jumbo v1, "note_ongoing"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v1, "note_auto"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 505
    const-string/jumbo v1, "note_large_icon"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v1, "note_inbox"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 507
    const-string/jumbo v1, "note_media"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "note_title"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v1, "note_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v1, "note_sub_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v1, "note_info_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 512
    const-string/jumbo v1, "note_over_rate"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 513
    const-string/jumbo v1, "note_over_quota"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 514
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 515
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 518
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 519
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 520
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 521
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 522
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 523
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 524
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 525
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 526
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 527
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 528
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 529
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 530
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 531
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 532
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 533
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 534
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 535
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 536
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 537
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 538
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 539
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 540
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 541
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 542
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 543
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 544
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 545
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 546
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 548
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 484
    return-void
.end method

.method public getEnqueueRate()F
    .locals 2

    .prologue
    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result v0

    return v0
.end method

.method public getEnqueueRate(J)F
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getRate(J)F

    move-result v0

    return v0
.end method

.method public getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-object v0
.end method

.method maybeCount(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 552
    if-lez p2, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 551
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterarrivalEstimate(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->update(J)F

    .line 575
    return-void
.end method

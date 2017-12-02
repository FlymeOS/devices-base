.class final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataSet"
.end annotation


# instance fields
.field final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMaxFgActive:I

.field mMaxTotalActive:I

.field final mStartClockTime:J

.field final mStartElapsedTime:J

.field final mStartUptimeTime:J

.field mSummedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .locals 2
    .param p1, "otherTimes"    # Lcom/android/server/job/JobPackageTracker$DataSet;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 112
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 113
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 114
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    .line 111
    return-void
.end method

.method private getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 125
    .local v1, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v1, :cond_0

    .line 126
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 127
    .restart local v1    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 130
    .local v0, "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .end local v0    # "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    .line 132
    .restart local v0    # "entry":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    return-object v0
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 12
    .param p1, "out"    # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"    # J

    .prologue
    const/4 v10, 0x1

    .line 236
    iget-wide v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 237
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 238
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 239
    .local v4, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_3

    .line 240
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 241
    .local v3, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p1, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v2

    .line 242
    .local v2, "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 243
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 244
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 245
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 246
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 247
    iget v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 248
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v5, :cond_0

    .line 249
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 250
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    .line 252
    :cond_0
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_1

    .line 253
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 254
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    .line 256
    :cond_1
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_2

    .line 257
    iget-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 258
    iput-boolean v10, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    .line 239
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 237
    .end local v2    # "outPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v3    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 262
    .end local v1    # "j":I
    .end local v4    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_4
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v5, v6, :cond_5

    .line 263
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iput v5, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 265
    :cond_5
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v6, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v5, v6, :cond_6

    .line 266
    iget v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iput v5, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 235
    :cond_6
    return-void
.end method

.method decActive(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 180
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 183
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 178
    return-void
.end method

.method decActiveTop(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 197
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 198
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 200
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 195
    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 163
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 164
    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 166
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 161
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .param p6, "nowEllapsed"    # J
    .param p8, "filterUid"    # I

    .prologue
    .line 290
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v6

    .line 291
    .local v6, "period":J
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " at "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-static {v4, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v0, p6

    move-object/from16 v2, p1

    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 295
    const-string/jumbo v4, ") over "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 297
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 299
    .local v12, "NE":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_8

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 301
    .local v17, "uid":I
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_1

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move/from16 v0, p8

    if-eq v0, v4, :cond_1

    .line 299
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 304
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/ArrayMap;

    .line 305
    .local v18, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 306
    .local v13, "NP":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v13, :cond_0

    .line 307
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 308
    .local v16, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 310
    const-string/jumbo v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v8

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v11, "pending"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 313
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string/jumbo v11, "active"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 314
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v8

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 315
    const-string/jumbo v11, "active-top"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 314
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    .line 316
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v4, :cond_2

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v4, :cond_3

    .line 317
    :cond_2
    const-string/jumbo v4, " (pending)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    :cond_3
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v4, :cond_4

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v4, :cond_5

    .line 320
    :cond_4
    const-string/jumbo v4, " (active)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    :cond_5
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v4, :cond_6

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v4, :cond_7

    .line 323
    :cond_6
    const-string/jumbo v4, " (active-top)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 306
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 328
    .end local v13    # "NP":I
    .end local v15    # "j":I
    .end local v16    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .end local v17    # "uid":I
    .end local v18    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Max concurrency: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " total, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " foreground"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 12
    .param p1, "next"    # Lcom/android/server/job/JobPackageTracker$DataSet;
    .param p2, "now"    # J

    .prologue
    const/4 v10, 0x0

    .line 204
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 205
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 206
    .local v4, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_5

    .line 207
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 208
    .local v3, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v5, :cond_0

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_4

    .line 210
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p1, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v2

    .line 211
    .local v2, "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 212
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 213
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 214
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 215
    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 216
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 218
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v5, :cond_1

    .line 219
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 220
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 222
    :cond_1
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_2

    .line 223
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 224
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 226
    :cond_2
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_3

    .line 227
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 228
    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 206
    .end local v2    # "nextPe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 208
    :cond_4
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_3

    goto :goto_2

    .line 204
    .end local v3    # "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 203
    .end local v1    # "j":I
    .end local v4    # "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    :cond_6
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 139
    .local v0, "uidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/job/JobPackageTracker$PackageEntry;>;"
    if-nez v0, :cond_0

    .line 140
    return-object v2

    .line 142
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object v1
.end method

.method getTotalTime(J)J
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 147
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    return-wide v0

    .line 149
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method incActive(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 171
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez v1, :cond_0

    .line 172
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 173
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 175
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 169
    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 188
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez v1, :cond_0

    .line 189
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 190
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 192
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 186
    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "now"    # J

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 154
    .local v0, "pe":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez v1, :cond_0

    .line 155
    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 156
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 158
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 152
    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "period"    # J
    .param p4, "duration"    # J
    .param p6, "count"    # I
    .param p7, "suffix"    # Ljava/lang/String;

    .prologue
    .line 271
    long-to-float v2, p4

    long-to-float v3, p2

    div-float v0, v2, v3

    .line 272
    .local v0, "fraction":F
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 273
    .local v1, "percent":I
    if-lez v1, :cond_1

    .line 274
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 276
    const-string/jumbo v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 278
    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    if-lez p6, :cond_0

    .line 281
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    .line 283
    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public mergeStats(IIJJJJJJ)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    .prologue
    .line 64
    move/from16 v0, p1

    int-to-byte v5, v0

    const/4 v8, 0x7

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v4

    .line 65
    .local v4, "key":I
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v2

    .line 66
    .local v2, "count":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 67
    move/from16 v0, p2

    int-to-long v8, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 68
    const/4 v5, 0x1

    move-wide/from16 v0, p3

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 69
    const/4 v5, 0x2

    move-wide/from16 v0, p5

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 70
    const/4 v5, 0x3

    move-wide/from16 v0, p7

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 71
    const/4 v5, 0x4

    move-wide/from16 v0, p9

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 72
    const/4 v5, 0x5

    move-wide/from16 v0, p11

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 73
    const/4 v5, 0x6

    move-wide/from16 v0, p13

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    move/from16 v0, p2

    int-to-long v8, v0

    add-long/2addr v8, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 79
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 80
    .local v6, "val":J
    cmp-long v5, v6, p3

    if-lez v5, :cond_2

    .line 81
    const/4 v5, 0x1

    move-wide/from16 v0, p3

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 84
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 86
    long-to-double v8, v6

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p5

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    .line 85
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 88
    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 89
    cmp-long v5, v6, p7

    if-gez v5, :cond_3

    .line 90
    const/4 v5, 0x3

    move-wide/from16 v0, p7

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 93
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 94
    cmp-long v5, v6, p9

    if-lez v5, :cond_4

    .line 95
    const/4 v5, 0x4

    move-wide/from16 v0, p9

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 98
    :cond_4
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 100
    long-to-double v8, v6

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p11

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    .line 99
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 102
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 103
    cmp-long v5, v6, p13

    if-gez v5, :cond_0

    .line 104
    const/4 v5, 0x6

    move-wide/from16 v0, p13

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    goto :goto_0
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 20
    .param p1, "that"    # Lcom/android/internal/app/procstats/PssTable;

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    .line 45
    .local v2, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 46
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v19

    .line 47
    .local v19, "key":I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 48
    .local v4, "state":I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    long-to-int v5, v6

    .line 49
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    .line 50
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    .line 51
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    .line 52
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v12

    .line 53
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v14

    .line 54
    const/4 v3, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v16

    move-object/from16 v3, p0

    .line 48
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    .line 45
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 43
    .end local v4    # "state":I
    .end local v19    # "key":I
    :cond_0
    return-void
.end method

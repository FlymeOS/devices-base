.class public Lcom/android/internal/app/procstats/DurationsTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "DurationsTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public addDuration(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 48
    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getOrAddKey(BI)I

    move-result v0

    .line 49
    .local v0, "key":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->setValue(IJ)V

    .line 47
    return-void
.end method

.method public addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V
    .locals 6
    .param p1, "from"    # Lcom/android/internal/app/procstats/DurationsTable;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    .line 35
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 37
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v2    # "key":I
    :cond_0
    return-void
.end method

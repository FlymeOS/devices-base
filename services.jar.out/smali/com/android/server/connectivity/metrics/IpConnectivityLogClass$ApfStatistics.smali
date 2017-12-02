.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfStatistics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;


# instance fields
.field public droppedRas:I

.field public durationMs:J

.field public matchingRas:I

.field public maxProgramSize:I

.field public parseErrors:I

.field public programUpdates:I

.field public receivedRas:I

.field public zeroLifetimeRas:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    .line 1760
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    .locals 2

    .prologue
    .line 1723
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    if-nez v0, :cond_1

    .line 1724
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1726
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    if-nez v0, :cond_0

    .line 1727
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1731
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    return-object v0

    .line 1724
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1904
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1898
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1765
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 1766
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 1767
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 1768
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 1769
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 1770
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 1771
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 1772
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 1773
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->cachedSize:I

    .line 1774
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 1809
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1810
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1812
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v1, 0x1

    .line 1811
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1814
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v1, :cond_1

    .line 1816
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    const/4 v2, 0x2

    .line 1815
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1818
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v1, :cond_2

    .line 1820
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    const/4 v2, 0x3

    .line 1819
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1822
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v1, :cond_3

    .line 1824
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    const/4 v2, 0x5

    .line 1823
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1826
    :cond_3
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v1, :cond_4

    .line 1828
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    const/4 v2, 0x6

    .line 1827
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1830
    :cond_4
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v1, :cond_5

    .line 1832
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    const/4 v2, 0x7

    .line 1831
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1834
    :cond_5
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v1, :cond_6

    .line 1836
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    const/16 v2, 0x8

    .line 1835
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1838
    :cond_6
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v1, :cond_7

    .line 1840
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    const/16 v2, 0x9

    .line 1839
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1842
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1851
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1855
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1856
    return-object p0

    .line 1853
    :sswitch_0
    return-object p0

    .line 1861
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    goto :goto_0

    .line 1865
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    goto :goto_0

    .line 1869
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    goto :goto_0

    .line 1873
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    goto :goto_0

    .line 1877
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    goto :goto_0

    .line 1881
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    goto :goto_0

    .line 1885
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    goto :goto_0

    .line 1889
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    goto :goto_0

    .line 1851
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1781
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1783
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v0, :cond_1

    .line 1784
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1786
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v0, :cond_2

    .line 1787
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1789
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v0, :cond_3

    .line 1790
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1792
    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v0, :cond_4

    .line 1793
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1795
    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v0, :cond_5

    .line 1796
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1798
    :cond_5
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v0, :cond_6

    .line 1799
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1801
    :cond_6
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v0, :cond_7

    .line 1802
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1804
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1779
    return-void
.end method

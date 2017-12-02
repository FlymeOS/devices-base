.class public Lcom/android/internal/util/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    .line 33
    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    .prologue
    .line 43
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ge v1, v2, :cond_0

    .line 44
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 45
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 46
    return v0

    .line 48
    .end local v0    # "pos":I
    :cond_0
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 49
    .restart local v0    # "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 50
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ne v1, v2, :cond_1

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 53
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 61
    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 59
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 76
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int v0, v1, p1

    .line 77
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-lt v0, v1, :cond_0

    .line 78
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    sub-int/2addr v0, v1

    .line 80
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v0
.end method

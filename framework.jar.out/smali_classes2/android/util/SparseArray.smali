.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 75
    if-nez p1, :cond_0

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 82
    :goto_0
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 74
    return-void

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    goto :goto_0
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 193
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 194
    .local v2, "n":I
    const/4 v3, 0x0

    .line 195
    .local v3, "o":I
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 196
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 198
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 199
    aget-object v4, v5, v0

    .line 201
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 202
    if-eq v0, v3, :cond_0

    .line 203
    aget v6, v1, v0

    aput v6, v1, v3

    .line 204
    aput-object v4, v5, v3

    .line 205
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 208
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 213
    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    .line 190
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 377
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    return-void

    .line 381
    :cond_0
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 382
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 385
    :cond_1
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 386
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 387
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 375
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    .line 360
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 361
    .local v1, "n":I
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 363
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 364
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    .line 368
    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 359
    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 91
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v1, Landroid/util/SparseArray;->mKeys:[I

    .line 92
    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v2

    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 126
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 128
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 129
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 125
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 115
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    return-object p2

    .line 118
    :cond_1
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 327
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 346
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 349
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 350
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 351
    return v0

    .line 349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 276
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 226
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 227
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 223
    :goto_0
    return-void

    .line 229
    :cond_0
    not-int v0, v0

    .line 231
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 232
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 233
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 234
    return-void

    .line 237
    :cond_1
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 238
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 241
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    .line 244
    :cond_2
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 245
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 246
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    goto :goto_0
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 158
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 157
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 168
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 167
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 184
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 185
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v2, v3, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 143
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 144
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 145
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 146
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 148
    return-object v1

    .line 151
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 318
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 313
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 259
    :cond_0
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 399
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 400
    const-string/jumbo v4, "{}"

    return-object v4

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 404
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v4, :cond_3

    .line 406
    if-lez v1, :cond_1

    .line 407
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 410
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 413
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 414
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_2
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 419
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

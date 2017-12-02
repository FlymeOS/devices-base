.class public final Lcom/android/framework/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/android/framework/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/android/framework/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    .line 54
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v0, p1, [Lcom/android/framework/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 67
    iput v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 63
    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 3
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 261
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 262
    const/4 v1, 0x0

    return v1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z
    .locals 3
    .param p1, "a"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/android/framework/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 270
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    const/4 v1, 0x0

    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "lo":I
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v4, -0x1

    .line 244
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 245
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 246
    .local v2, "mid":I
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v4, v2

    .line 248
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 249
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    if-le v3, p1, :cond_1

    .line 251
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 253
    :cond_1
    return v2

    .line 256
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    return v4
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 97
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 98
    .local v2, "n":I
    const/4 v3, 0x0

    .line 99
    .local v3, "o":I
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 100
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 102
    .local v5, "values":[Lcom/android/framework/protobuf/nano/FieldData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 103
    aget-object v4, v5, v0

    .line 105
    .local v4, "val":Lcom/android/framework/protobuf/nano/FieldData;
    sget-object v6, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v4, v6, :cond_1

    .line 106
    if-eq v0, v3, :cond_0

    .line 107
    aget v6, v1, v0

    aput v6, v1, v3

    .line 108
    aput-object v4, v5, v3

    .line 109
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 112
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v4    # "val":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 117
    iput v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 96
    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .param p1, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 234
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_0

    .line 235
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return p1
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .param p1, "need"    # I

    .prologue
    .line 229
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final clone()Lcom/android/framework/protobuf/nano/FieldArray;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    .line 282
    .local v0, "clone":Lcom/android/framework/protobuf/nano/FieldArray;
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 284
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v1

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    .line 289
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->clone()Lcom/android/framework/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_0

    .line 201
    const/4 v1, 0x1

    return v1

    .line 203
    :cond_0
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_1

    .line 204
    return v1

    :cond_1
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/android/framework/protobuf/nano/FieldArray;

    .line 208
    .local v0, "other":Lcom/android/framework/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 209
    return v1

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z

    move-result v1

    .line 211
    :cond_3
    return v1
.end method

.method get(I)Lcom/android/framework/protobuf/nano/FieldData;
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 77
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 217
    iget-boolean v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 220
    :cond_0
    const/16 v1, 0x11

    .line 221
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_1

    .line 222
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 223
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method put(ILcom/android/framework/protobuf/nano/FieldData;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/android/framework/protobuf/nano/FieldData;

    .prologue
    const/4 v6, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 127
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 124
    :goto_0
    return-void

    .line 130
    :cond_0
    not-int v0, v0

    .line 132
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v4, v5, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 134
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 135
    return-void

    .line 138
    :cond_1
    iget-boolean v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v4

    not-int v0, v4

    .line 145
    :cond_2
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 146
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 148
    .local v1, "n":I
    new-array v2, v1, [I

    .line 149
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/android/framework/protobuf/nano/FieldData;

    .line 151
    .local v3, "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 155
    iput-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    .line 158
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/android/framework/protobuf/nano/FieldData;
    :cond_3
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 159
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_4
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 164
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 165
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    goto :goto_0
.end method

.method remove(I)V
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 90
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    .line 87
    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method

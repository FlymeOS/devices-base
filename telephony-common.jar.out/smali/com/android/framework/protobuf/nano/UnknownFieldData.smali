.class final Lcom/android/framework/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 51
    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .locals 2

    .prologue
    .line 58
    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 59
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_0

    .line 71
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    if-nez v2, :cond_1

    .line 74
    return v1

    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 78
    .local v0, "other":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v1, 0x20f

    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 86
    return v0
.end method

.method writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 63
    return-void
.end method

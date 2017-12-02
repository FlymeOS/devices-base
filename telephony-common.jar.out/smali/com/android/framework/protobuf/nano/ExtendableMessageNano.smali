.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    .line 166
    .local v0, "cloned":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 53
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    .end local v1    # "i":I
    :cond_0
    return v2
.end method

.method public final getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    .line 87
    return-object v1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 90
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;*>;"
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 79
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 97
    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 98
    .local v1, "fieldNumber":I
    if-nez p2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    .line 101
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iput-object v4, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 120
    :cond_0
    :goto_0
    move-object v2, p0

    .line 121
    .local v2, "typedThis":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    return-object p0

    .line 106
    .end local v2    # "typedThis":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v3, :cond_2

    .line 108
    new-instance v3, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v3}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 112
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :goto_1
    if-nez v0, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    new-instance v4, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v4, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    goto :goto_0

    .line 110
    .restart local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    goto :goto_1

    .line 115
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 7
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v4

    .line 141
    .local v4, "startPos":I
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    const/4 v6, 0x0

    return v6

    .line 144
    :cond_0
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    .line 145
    .local v3, "fieldNumber":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 146
    .local v1, "endPos":I
    sub-int v6, v1, v4

    invoke-virtual {p1, v4, v6}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 147
    .local v0, "bytes":[B
    new-instance v5, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v5, p2, v0}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    .line 149
    .local v5, "unknownField":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    const/4 v2, 0x0

    .line 150
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v6, :cond_2

    .line 151
    new-instance v6, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 155
    .end local v2    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :goto_0
    if-nez v2, :cond_1

    .line 156
    new-instance v2, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    .line 157
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v3, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    .line 159
    .end local v2    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    .line 160
    const/4 v6, 0x1

    return v6

    .line 153
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v2

    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    goto :goto_0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 66
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_1
    return-void
.end method

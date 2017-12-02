.class Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)V
    .locals 1
    .param p1, "this$1"    # Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    .prologue
    .line 452
    iput-object p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 452
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get1(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "type":I
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 464
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v1, v3, v4

    .line 468
    :cond_0
    :goto_0
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "length":I
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 472
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v2, v3, v4

    .line 476
    :cond_1
    :goto_1
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 478
    new-instance v0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/nan/TlvBufferUtils$TlvElement;)V

    .line 479
    .local v0, "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 480
    return-object v0

    .line 465
    .end local v0    # "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    .end local v2    # "length":I
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 466
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    goto :goto_0

    .line 473
    .restart local v2    # "length":I
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 474
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

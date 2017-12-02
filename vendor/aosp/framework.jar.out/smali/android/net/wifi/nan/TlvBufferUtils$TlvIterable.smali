.class public Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return v0
.end method

.method static synthetic -get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return v0
.end method

.method static synthetic -get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return v0
.end method

.method public constructor <init>(II[BI)V
    .locals 3
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I
    .param p3, "array"    # [B
    .param p4, "length"    # I

    .prologue
    const/4 v0, 0x2

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 399
    iput p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 400
    iput p2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mLengthSize:I

    .line 401
    iput-object p3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArray:[B

    .line 402
    iput p4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArrayLength:I

    .line 394
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/4 v1, 0x1

    .line 416
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tlv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    .line 417
    .local v2, "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    if-nez v1, :cond_1

    .line 418
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_1
    const/4 v1, 0x0

    .line 421
    const-string/jumbo v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    if-eqz v4, :cond_2

    .line 423
    const-string/jumbo v4, "T="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_2
    const-string/jumbo v4, "L="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    if-nez v4, :cond_3

    .line 427
    const-string/jumbo v4, "<null>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :goto_1
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    if-eqz v4, :cond_0

    .line 438
    const-string/jumbo v4, " (S=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    :cond_3
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 429
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getByte()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :cond_4
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 431
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getShort()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 432
    :cond_5
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 433
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_6
    const-string/jumbo v4, "<bytes>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    .end local v2    # "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    :cond_7
    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.class public Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvElement"
.end annotation


# instance fields
.field public mLength:I

.field public mOffset:I

.field public mRefArray:[B

.field public mType:I


# direct methods
.method private constructor <init>(II[BI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I
    .param p3, "refArray"    # [B
    .param p4, "offset"    # I

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mType:I

    .line 311
    iput p2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    .line 312
    iput-object p3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mRefArray:[B

    .line 313
    iput p4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mOffset:I

    .line 309
    return-void
.end method

.method synthetic constructor <init>(II[BILandroid/net/wifi/nan/TlvBufferUtils$TlvElement;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I
    .param p3, "refArray"    # [B
    .param p4, "offset"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;-><init>(II[BI)V

    return-void
.end method


# virtual methods
.method public getByte()B
    .locals 3

    .prologue
    .line 324
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing a byte from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mOffset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing an int from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mOffset:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 339
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accesing a short from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mOffset:I

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 367
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mOffset:I

    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

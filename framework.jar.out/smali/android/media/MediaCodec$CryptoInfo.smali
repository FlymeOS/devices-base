.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoInfo$Pattern;
    }
.end annotation


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 2
    .param p1, "newNumSubSamples"    # I
    .param p2, "newNumBytesOfClearData"    # [I
    .param p3, "newNumBytesOfEncryptedData"    # [I
    .param p4, "newKey"    # [B
    .param p5, "newIV"    # [B
    .param p6, "newMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 2407
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 2408
    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 2409
    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 2410
    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 2411
    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 2412
    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 2413
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2406
    return-void
.end method

.method public setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 0
    .param p1, "newPattern"    # Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .prologue
    .line 2421
    iput-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2420
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2427
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " subsamples, key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    const-string/jumbo v1, "0123456789abcdef"

    .line 2429
    .local v1, "hexdigits":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2430
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2431
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2433
    :cond_0
    const-string/jumbo v3, "], iv ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2435
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2436
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2438
    :cond_1
    const-string/jumbo v3, "], clear "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    const-string/jumbo v3, ", encrypted "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

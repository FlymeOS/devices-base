.class public Landroid/media/AudioRecord$Builder;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mBufferSizeInBytes:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 487
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 591
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v2, :cond_3

    .line 592
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 609
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    if-nez v2, :cond_1

    .line 610
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 618
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    if-nez v2, :cond_2

    .line 619
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    .line 620
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3

    .line 619
    mul-int/2addr v2, v3

    iput v2, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 622
    :cond_2
    new-instance v1, Landroid/media/AudioRecord;

    .line 623
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v4, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    iget v5, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 622
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 624
    .local v1, "record":Landroid/media/AudioRecord;
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-nez v2, :cond_5

    .line 626
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Cannot create AudioRecord"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v1    # "record":Landroid/media/AudioRecord;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    if-nez v2, :cond_4

    .line 598
    new-instance v2, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 602
    :cond_4
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    if-nez v2, :cond_0

    .line 603
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    if-nez v2, :cond_0

    .line 604
    new-instance v2, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    goto/16 :goto_0

    .line 628
    .restart local v1    # "record":Landroid/media/AudioRecord;
    :cond_5
    return-object v1
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 523
    const-string/jumbo v1, "No valid capture preset in AudioAttributes argument"

    .line 522
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_1
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 527
    return-object p0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 542
    return-object p0
.end method

.method public setAudioSource(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 497
    if-ltz p1, :cond_0

    .line 498
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid audio source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 504
    return-object p0
.end method

.method public setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 558
    if-gtz p1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 562
    return-object p0
.end method

.method public setSessionId(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 576
    if-gez p1, :cond_0

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 580
    return-object p0
.end method

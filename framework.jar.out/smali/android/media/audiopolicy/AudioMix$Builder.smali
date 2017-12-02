.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackFlags:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 183
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 184
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 185
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 187
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 188
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 183
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 184
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 185
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 187
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 188
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 203
    return-void
.end method


# virtual methods
.method public build()Landroid/media/audiopolicy/AudioMix;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, -0x7fffff00

    const/4 v7, 0x0

    .line 326
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioMixingRule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    if-nez v0, :cond_1

    .line 331
    iput v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 334
    :cond_1
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported route behavior combination 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    iget v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_4

    .line 340
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v8

    .line 341
    .local v8, "rate":I
    if-gtz v8, :cond_3

    .line 342
    const v8, 0xac44

    .line 344
    :cond_3
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v8}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 346
    .end local v8    # "rate":I
    :cond_4
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-eqz v0, :cond_6

    .line 347
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    const v1, 0x8000

    if-eq v0, v1, :cond_6

    .line 348
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-eq v0, v2, :cond_6

    .line 349
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 351
    const-string/jumbo v1, "Can\'t have audio device without flag ROUTE_FLAG_RENDER"

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_5
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-eqz v0, :cond_8

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported device on non-playback mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_6
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_7

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 359
    const-string/jumbo v1, "Can\'t have flag ROUTE_FLAG_RENDER without an audio device"

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_7
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v4, :cond_8

    .line 362
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-nez v0, :cond_9

    .line 363
    const v0, 0x8000

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 371
    :cond_8
    :goto_0
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iget v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iget v5, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 372
    iget-object v6, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 371
    invoke-direct/range {v0 .. v7}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix;)V

    return-object v0

    .line 364
    :cond_9
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 365
    iput v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_0

    .line 367
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown mixing rule type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 234
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal callback flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 239
    return-object p0
.end method

.method setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 0
    .param p1, "deviceType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 250
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 251
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioDeviceInfo argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported device type on mix, not a sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 315
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 268
    return-object p0
.end method

.method setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 223
    return-object p0
.end method

.method public setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal empty route flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid route flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string/jumbo v2, "when configuring an AudioMix"

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_2

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown route flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    const-string/jumbo v2, "when configuring an AudioMix"

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 294
    return-object p0
.end method

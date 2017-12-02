.class Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
.super Ljava/lang/Object;
.source "CaptureCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CaptureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mFailedJpeg:Z

.field private mFailedPreview:Z

.field private mHasStarted:Z

.field private final mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mPreviewCompleted:Z

.field private mReceivedFlags:I

.field private final mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mTimestamp:J

.field public final needsJpeg:Z

.field public final needsPreview:Z

.field final synthetic this$0:Landroid/hardware/camera2/legacy/CaptureCollector;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    return-wide v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 3
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .param p2, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p3, "legacyHolder"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 56
    iput v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 57
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 58
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 59
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 60
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    .line 61
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 64
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 65
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mLegacy:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 66
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 67
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    .locals 4
    .param p1, "captureHolder"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "captureHolder"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .end local p1    # "captureHolder":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 260
    instance-of v1, p1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    if-eqz v1, :cond_0

    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCompleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isJpegCompleted()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewCompleted()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setJpegFailed()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isJpegCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    .line 183
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 184
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 185
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 174
    return-void
.end method

.method public setJpegProduced()V
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    const-string/jumbo v1, "setJpegProduced called for capture with no jpeg targets."

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 167
    const-string/jumbo v1, "setJpegProduced called on already completed request."

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 171
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 157
    return-void
.end method

.method public setJpegTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    const-string/jumbo v1, "setJpegTimestamp called for capture with no jpeg targets."

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    const-string/jumbo v1, "setJpegTimestamp called on already completed request."

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 144
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 145
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 148
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_3

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 150
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 151
    const/4 v4, -0x1

    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 154
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 129
    return-void
.end method

.method public setPreviewFailed()V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    .line 244
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 245
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 246
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 235
    return-void
.end method

.method public setPreviewProduced()V
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 224
    const-string/jumbo v1, "setPreviewProduced called for capture with no preview targets."

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 228
    const-string/jumbo v1, "setPreviewProduced called on already completed request."

    .line 227
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 232
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 218
    return-void
.end method

.method public setPreviewTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    const-string/jumbo v1, "setPreviewTimestamp called for capture with no preview targets."

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 198
    const-string/jumbo v1, "setPreviewTimestamp called on already completed request."

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mReceivedFlags:I

    .line 203
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 204
    iput-wide p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 207
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v0, :cond_3

    .line 208
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v0, :cond_3

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    .line 210
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 211
    const/4 v4, -0x1

    .line 210
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 215
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->tryComplete()V

    .line 188
    return-void
.end method

.method public tryComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 83
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isPreviewCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap0(Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 85
    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mPreviewCompleted:Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    if-eqz v3, :cond_2

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v3, :cond_4

    .line 90
    :cond_3
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mHasStarted:Z

    if-nez v3, :cond_5

    .line 92
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 93
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iget-wide v6, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J

    .line 94
    const/4 v5, 0x3

    .line 93
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 124
    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3, p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->-wrap1(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    .line 125
    iput-boolean v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mCompleted:Z

    goto :goto_0

    .line 98
    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "targetSurface$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 100
    .local v1, "targetSurface":Landroid/view/Surface;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/legacy/RequestHolder;->jpegType(Landroid/view/Surface;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedJpeg:Z

    if-eqz v3, :cond_6

    .line 102
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x5

    .line 102
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string/jumbo v3, "CaptureCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected exception when querying Surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :cond_7
    :try_start_1
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mFailedPreview:Z

    if-eqz v3, :cond_6

    .line 111
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->this$0:Landroid/hardware/camera2/legacy/CaptureCollector;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x5

    .line 111
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

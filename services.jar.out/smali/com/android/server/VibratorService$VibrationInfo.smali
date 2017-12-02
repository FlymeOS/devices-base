.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field opPkg:Ljava/lang/String;

.field pattern:[J

.field repeat:I

.field startTime:J

.field timeout:J

.field uid:I

.field usageHint:I


# direct methods
.method public constructor <init>(JJ[JIIILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 170
    iput-wide p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 171
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    .line 172
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 173
    iput p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 174
    iput p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 175
    iput-object p9, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string/jumbo v1, "timeout: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, ", startTime: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, ", pattern: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, ", repeat: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, ", usageHint: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, ", uid: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, ", opPkg: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

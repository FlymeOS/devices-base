.class final Lcom/android/server/display/LuxLevels;
.super Ljava/lang/Object;
.source "LuxLevels.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LuxLevels"


# instance fields
.field private final mBrightLevels:[F

.field private final mDarkLevels:[F

.field private final mDozeBrightnessBacklightValues:[F

.field private final mDozeSensorLuxLevels:[F

.field private final mLuxHysteresisLevels:[F


# direct methods
.method public constructor <init>([I[I[I[I[I)V
    .locals 4
    .param p1, "brightLevels"    # [I
    .param p2, "darkLevels"    # [I
    .param p3, "luxHysteresisLevels"    # [I
    .param p4, "dozeSensorLuxLevels"    # [I
    .param p5, "dozeBrightnessBacklightValues"    # [I

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 53
    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    array-length v0, p5

    if-lez v0, :cond_2

    array-length v0, p4

    if-lez v0, :cond_2

    .line 57
    array-length v0, p5

    array-length v1, p4

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mismatch between doze lux array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/display/LuxLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LuxLevels;->mBrightLevels:[F

    .line 61
    invoke-direct {p0, p2, v3}, Lcom/android/server/display/LuxLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LuxLevels;->mDarkLevels:[F

    .line 62
    invoke-direct {p0, p3, v2}, Lcom/android/server/display/LuxLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LuxLevels;->mLuxHysteresisLevels:[F

    .line 63
    invoke-direct {p0, p4, v2}, Lcom/android/server/display/LuxLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LuxLevels;->mDozeSensorLuxLevels:[F

    .line 64
    invoke-direct {p0, p5, v2}, Lcom/android/server/display/LuxLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LuxLevels;->mDozeBrightnessBacklightValues:[F

    .line 51
    return-void
.end method

.method private getReferenceLevel(F[F[F)F
    .locals 2
    .param p1, "lux"    # F
    .param p2, "referenceLevels"    # [F
    .param p3, "thresholdLevels"    # [F

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "index":I
    :goto_0
    array-length v1, p3

    if-le v1, v0, :cond_0

    aget v1, p3, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    aget v1, p2, v0

    return v1
.end method

.method private setArrayFormat([IF)[F
    .locals 3
    .param p1, "configArray"    # [I
    .param p2, "divideFactor"    # F

    .prologue
    .line 128
    array-length v2, p1

    new-array v1, v2, [F

    .line 129
    .local v1, "levelArray":[F
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 130
    aget v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .locals 5
    .param p1, "lux"    # F

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/server/display/LuxLevels;->mBrightLevels:[F

    iget-object v3, p0, Lcom/android/server/display/LuxLevels;->mLuxHysteresisLevels:[F

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/LuxLevels;->getReferenceLevel(F[F[F)F

    move-result v0

    .line 72
    .local v0, "brightConstant":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float v1, p1, v2

    .line 74
    .local v1, "brightThreshold":F
    const-string/jumbo v2, "LuxLevels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bright hysteresis constant= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    const-string/jumbo v4, ", lux="

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v1
.end method

.method public getDarkeningThreshold(F)F
    .locals 5
    .param p1, "lux"    # F

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/server/display/LuxLevels;->mDarkLevels:[F

    iget-object v3, p0, Lcom/android/server/display/LuxLevels;->mLuxHysteresisLevels:[F

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/display/LuxLevels;->getReferenceLevel(F[F[F)F

    move-result v0

    .line 85
    .local v0, "darkConstant":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, p1, v2

    .line 87
    .local v1, "darkThreshold":F
    const-string/jumbo v2, "LuxLevels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dark hysteresis constant= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    const-string/jumbo v4, ", lux="

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1
.end method

.method public getDozeBrightness(F)I
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/server/display/LuxLevels;->mDozeBrightnessBacklightValues:[F

    .line 98
    iget-object v2, p0, Lcom/android/server/display/LuxLevels;->mDozeSensorLuxLevels:[F

    .line 97
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/LuxLevels;->getReferenceLevel(F[F[F)F

    move-result v1

    float-to-int v0, v1

    .line 100
    .local v0, "dozeBrightness":I
    const-string/jumbo v1, "LuxLevels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doze brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v0
.end method

.method public hasDynamicDozeBrightness()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/server/display/LuxLevels;->mDozeSensorLuxLevels:[F

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

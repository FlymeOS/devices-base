.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    .line 30
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v4, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayTransformManager;

    .line 62
    .local v2, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/4 v1, -0x1

    .line 64
    .local v1, "daltonizerMode":I
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 63
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const-string/jumbo v4, "accessibility_display_daltonizer"

    const/16 v5, 0xc

    .line 65
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 69
    :cond_0
    const/4 v3, 0x0

    .line 70
    .local v3, "grayscaleMatrix":[F
    if-nez v1, :cond_1

    .line 72
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 73
    .local v3, "grayscaleMatrix":[F
    const/4 v1, -0x1

    .line 75
    .end local v3    # "grayscaleMatrix":[F
    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 58
    return-void
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 87
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 86
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 89
    .local v2, "invertColors":Z
    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    .line 88
    :goto_0
    const/16 v4, 0x12c

    invoke-virtual {v1, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 82
    return-void

    .line 89
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

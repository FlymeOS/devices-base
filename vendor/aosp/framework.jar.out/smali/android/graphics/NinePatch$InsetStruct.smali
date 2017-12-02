.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IIIIIIIIFIF)V
    .locals 2
    .param p1, "opticalLeft"    # I
    .param p2, "opticalTop"    # I
    .param p3, "opticalRight"    # I
    .param p4, "opticalBottom"    # I
    .param p5, "outlineLeft"    # I
    .param p6, "outlineTop"    # I
    .param p7, "outlineRight"    # I
    .param p8, "outlineBottom"    # I
    .param p9, "outlineRadius"    # F
    .param p10, "outlineAlpha"    # I
    .param p11, "decodeScale"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    .line 48
    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    .line 50
    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    .line 53
    mul-float v0, p9, p11

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    .line 54
    int-to-float v0, p10

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    .line 46
    return-void
.end method

.method public static scaleInsets(IIIIF)Landroid/graphics/Rect;
    .locals 4
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "scale"    # F

    .prologue
    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 71
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v0, "result":Landroid/graphics/Rect;
    int-to-float v1, p0

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 73
    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 74
    int-to-float v1, p2

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 75
    int-to-float v1, p3

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    return-object v0
.end method

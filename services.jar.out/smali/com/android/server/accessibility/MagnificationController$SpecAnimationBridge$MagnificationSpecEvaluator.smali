.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnificationSpecEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTempSpec:Landroid/view/MagnificationSpec;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->mTempSpec:Landroid/view/MagnificationSpec;

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "fromSpec"    # Landroid/view/MagnificationSpec;
    .param p3, "toSpec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->mTempSpec:Landroid/view/MagnificationSpec;

    .line 877
    .local v0, "result":Landroid/view/MagnificationSpec;
    iget v1, p2, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 878
    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 879
    iget v1, p2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 880
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "fromSpec"    # Ljava/lang/Object;
    .param p3, "toSpec"    # Ljava/lang/Object;

    .prologue
    .line 874
    check-cast p2, Landroid/view/MagnificationSpec;

    .end local p2    # "fromSpec":Ljava/lang/Object;
    check-cast p3, Landroid/view/MagnificationSpec;

    .end local p3    # "toSpec":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0
.end method

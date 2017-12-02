.class Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListAnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/StateListAnimator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/StateListAnimator;

    .prologue
    .line 315
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    .line 317
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->-set0(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    .line 318
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    .line 315
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public newInstance()Landroid/animation/StateListAnimator;
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v1}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 329
    .local v0, "clone":Landroid/animation/StateListAnimator;
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->-set0(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    .line 330
    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->newInstance()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method

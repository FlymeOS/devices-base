.class public abstract Landroid/content/res/ComplexColor;
.super Ljava/lang/Object;
.source "ComplexColor.java"


# instance fields
.field private mChangingConfigurations:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canApplyTheme()Z
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/content/res/ComplexColor;->mChangingConfigurations:I

    return v0
.end method

.method public abstract getConstantState()Landroid/content/res/ConstantState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultColor()I
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
.end method

.method final setBaseChangingConfigurations(I)V
    .locals 0
    .param p1, "changingConfigurations"    # I

    .prologue
    .line 63
    iput p1, p0, Landroid/content/res/ComplexColor;->mChangingConfigurations:I

    .line 62
    return-void
.end method

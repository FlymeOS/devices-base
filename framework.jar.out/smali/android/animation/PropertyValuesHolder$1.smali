.class Landroid/animation/PropertyValuesHolder$1;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/PropertyValuesHolder;


# direct methods
.method constructor <init>(Landroid/animation/PropertyValuesHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 1104
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder$1;->this$0:Landroid/animation/PropertyValuesHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValueAtFraction(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$1;->this$0:Landroid/animation/PropertyValuesHolder;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

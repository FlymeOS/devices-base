.class public Landroid/animation/PropertyValuesHolder$PropertyValues;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyValues"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    }
.end annotation


# instance fields
.field public dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

.field public endValue:Ljava/lang/Object;

.field public propertyName:Ljava/lang/String;

.field public startValue:Ljava/lang/Object;

.field public type:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1698
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "property name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1709
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1709
    const-string/jumbo v1, ", endValue: "

    .line 1708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1709
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

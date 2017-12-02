.class public Landroid/graphics/FontListParser$Axis;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field public final styleValue:F

.field public final tag:I


# direct methods
.method constructor <init>(IF)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "styleValue"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/graphics/FontListParser$Axis;->tag:I

    .line 49
    iput p2, p0, Landroid/graphics/FontListParser$Axis;->styleValue:F

    .line 47
    return-void
.end method

.class public Landroid/graphics/FontListParser$Font;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public final axes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;"
        }
    .end annotation
.end field

.field public fontName:Ljava/lang/String;

.field public isItalic:Z

.field public ttcIndex:I

.field public weight:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;IZ)V
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p4, "weight"    # I
    .param p5, "isItalic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    .line 58
    iput p2, p0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    .line 59
    iput-object p3, p0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    .line 60
    iput p4, p0, Landroid/graphics/FontListParser$Font;->weight:I

    .line 61
    iput-boolean p5, p0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    .line 56
    return-void
.end method

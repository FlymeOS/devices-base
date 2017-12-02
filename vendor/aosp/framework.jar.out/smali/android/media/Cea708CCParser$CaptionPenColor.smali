.class public Landroid/media/Cea708CCParser$CaptionPenColor;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenColor"
.end annotation


# instance fields
.field public final backgroundColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final edgeColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final foregroundColor:Landroid/media/Cea708CCParser$CaptionColor;


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V
    .locals 0
    .param p1, "foregroundColor"    # Landroid/media/Cea708CCParser$CaptionColor;
    .param p2, "backgroundColor"    # Landroid/media/Cea708CCParser$CaptionColor;
    .param p3, "edgeColor"    # Landroid/media/Cea708CCParser$CaptionColor;

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->foregroundColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 924
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->backgroundColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 925
    iput-object p3, p0, Landroid/media/Cea708CCParser$CaptionPenColor;->edgeColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 922
    return-void
.end method

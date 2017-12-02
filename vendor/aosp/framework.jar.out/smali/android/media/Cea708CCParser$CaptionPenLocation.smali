.class public Landroid/media/Cea708CCParser$CaptionPenLocation;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenLocation"
.end annotation


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionPenLocation;->row:I

    .line 940
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionPenLocation;->column:I

    .line 938
    return-void
.end method

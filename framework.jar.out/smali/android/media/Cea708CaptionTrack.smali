.class Landroid/media/Cea708CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private final mCCParser:Landroid/media/Cea708CCParser;

.field private final mRenderingWidget:Landroid/media/Cea708CCWidget;


# direct methods
.method constructor <init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "renderingWidget"    # Landroid/media/Cea708CCWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 95
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 97
    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    .line 98
    new-instance v0, Landroid/media/Cea708CCParser;

    iget-object v1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;-><init>(Landroid/media/Cea708CCParser$DisplayListener;)V

    iput-object v0, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    .line 94
    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCParser;->parse([B)V

    .line 102
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    return-void
.end method

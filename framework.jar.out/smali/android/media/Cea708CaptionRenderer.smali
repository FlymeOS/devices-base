.class public Landroid/media/Cea708CaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private mCCWidget:Landroid/media/Cea708CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 78
    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "text/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroid/media/Cea708CCWidget;

    iget-object v2, p0, Landroid/media/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    .line 83
    :cond_0
    new-instance v1, Landroid/media/Cea708CaptionTrack;

    iget-object v2, p0, Landroid/media/Cea708CaptionRenderer;->mCCWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {v1, v2, p1}, Landroid/media/Cea708CaptionTrack;-><init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No matching format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 69
    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "text/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 73
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

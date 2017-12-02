.class Landroid/media/Cea708CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$CCHandler;,
        Landroid/media/Cea708CCWidget$CCLayout;,
        Landroid/media/Cea708CCWidget$CCView;,
        Landroid/media/Cea708CCWidget$CCWindowLayout;,
        Landroid/media/Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1027
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1031
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1035
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1041
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1043
    new-instance v1, Landroid/media/Cea708CCWidget$CCHandler;

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v1, v0}, Landroid/media/Cea708CCWidget$CCHandler;-><init>(Landroid/media/Cea708CCWidget$CCLayout;)V

    iput-object v1, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    .line 1040
    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1048
    new-instance v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/ClosedCaptionWidget;->setSize(II)V

    .line 1057
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1064
    invoke-super {p0, p1}, Landroid/media/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 1065
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1063
    return-void
.end method

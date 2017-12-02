.class Landroid/media/ClosedCaptionWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ClosedCaptionWidget;


# direct methods
.method constructor <init>(Landroid/media/ClosedCaptionWidget;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ClosedCaptionWidget;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 233
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-interface {v0, p1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    .line 232
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 227
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get0()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    iput-object v1, v0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 228
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v1, v1, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 226
    return-void
.end method

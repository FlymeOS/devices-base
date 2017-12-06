.class Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 3289
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 3293
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3294
    return-void

    .line 3296
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3297
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3300
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3302
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get1(Landroid/widget/Editor$SuggestionsPopupWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 3303
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3292
    :cond_1
    :goto_0
    return-void

    .line 3304
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    #invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_0
.end method

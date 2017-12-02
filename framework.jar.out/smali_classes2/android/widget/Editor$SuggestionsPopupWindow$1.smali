.class Landroid/widget/Editor$SuggestionsPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 3370
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 3373
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v7}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 3374
    .local v2, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_0

    .line 3376
    return-void

    .line 3378
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3379
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3380
    .local v5, "spanStart":I
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 3381
    .local v4, "spanEnd":I
    if-ltz v5, :cond_1

    if-gt v4, v5, :cond_2

    .line 3382
    :cond_1
    return-void

    .line 3384
    :cond_2
    invoke-static {v0, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 3386
    .local v3, "originalText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3387
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "word"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3388
    const-string/jumbo v6, "locale"

    .line 3389
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v7, v7, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3388
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3390
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3391
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3394
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3395
    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3396
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6, v5, v4, v8}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;IIZ)V

    .line 3397
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 3371
    return-void
.end method

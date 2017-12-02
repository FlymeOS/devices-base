.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 2
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 3434
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3435
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/content/Context;

    move-result-object v0

    .line 3436
    const-string/jumbo v1, "layout_inflater"

    .line 3435
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3434
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get3(Landroid/widget/Editor$SuggestionsPopupWindow;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3445
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get4(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3450
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    move-object v1, p2

    .line 3455
    check-cast v1, Landroid/widget/TextView;

    .line 3457
    .local v1, "textView":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 3458
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    .line 3459
    const/4 v4, 0x0

    .line 3458
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 3462
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get4(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 3463
    .local v0, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v2, v0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3464
    return-object v1
.end method

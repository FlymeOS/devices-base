.class final Landroid/widget/Editor$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionInfo"
.end annotation


# instance fields
.field mSuggestionEnd:I

.field mSuggestionIndex:I

.field final mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field mSuggestionStart:I

.field final mText:Landroid/text/SpannableStringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3119
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 3114
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionInfo;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 3128
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3126
    return-void
.end method

.method setSpanInfo(Landroid/text/style/SuggestionSpan;II)V
    .locals 1
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "spanStart"    # I
    .param p3, "spanEnd"    # I

    .prologue
    .line 3133
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput-object p1, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3134
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput p2, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 3135
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput p3, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 3132
    return-void
.end method

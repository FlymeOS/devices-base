.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final TYPE_LOCALE:I = 0x2


# instance fields
.field private final mCountryMode:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p1
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 4
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 64
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method

.method private showHeaders()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 189
    return v0

    .line 191
    :cond_0
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_1

    const/4 v0, -0x2

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 118
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return v2

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    return v1

    .line 89
    :cond_1
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_2
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 131
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v5, :cond_0

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v1

    .line 136
    .local v1, "itemType":I
    packed-switch v1, :pswitch_data_0

    .line 158
    instance-of v5, p2, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090074

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 162
    :cond_1
    const v5, 0x10201e6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 164
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 166
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v5, :cond_2

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 170
    .local v2, "layoutDir":I
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 171
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 172
    const/4 v5, 0x4

    .line 171
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 176
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "layoutDir":I
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-object p2

    .line 140
    :pswitch_0
    instance-of v5, p2, Landroid/widget/TextView;

    if-nez v5, :cond_3

    .line 141
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090075

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    move-object v4, p2

    .line 144
    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, "textView":Landroid/widget/TextView;
    if-nez v1, :cond_4

    .line 146
    const v5, 0x10405f3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 154
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 148
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v5, :cond_5

    .line 149
    const v5, 0x10405f5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 151
    :cond_5
    const v5, 0x10405f4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 173
    .end local v4    # "textView":Landroid/widget/TextView;
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "layoutDir":I
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x3

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    return-void
.end method

.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation


# static fields
.field private static final PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"


# instance fields
.field private mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private mFirstVisiblePosition:I

.field private mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private mPreviousSearch:Ljava/lang/CharSequence;

.field private mPreviousSearchHadFocus:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mTopDistance:I

.field private mTranslatedOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 55
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 56
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 58
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 59
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 47
    return-void
.end method

.method private static createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z

    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 78
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result v1

    .line 80
    .local v1, "shouldShowTheList":Z
    if-eqz v1, :cond_0

    .end local v0    # "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    :goto_0
    return-object v0

    .restart local v0    # "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z

    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 86
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    .line 87
    return-object v0
.end method

.method private returnToParentFrame()V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "localeListEditor"

    .line 136
    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method private setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p3, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p4, "translatedOnly"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    iput-object p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 106
    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    .line 107
    iput-boolean p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 108
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 110
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v1, "langTagsToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 112
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 113
    .local v2, "userLocales":Landroid/os/LocaleList;
    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "langTags":[Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "langTags":[Ljava/lang/String;
    .end local v2    # "userLocales":Landroid/os/LocaleList;
    :cond_0
    if-eqz p3, :cond_2

    .line 118
    invoke-static {p1, v1, p3, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 120
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v3, v5, :cond_3

    .line 121
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p2, v3}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 124
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 127
    :cond_2
    invoke-static {p1, v1, v6, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 131
    :cond_3
    return v5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 144
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 149
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v3, :cond_1

    .line 153
    .local v1, "countryMode":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 154
    .local v2, "sortingLocale":Ljava/util/Locale;
    :goto_1
    new-instance v3, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-direct {v3, v4, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;Z)V

    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 156
    new-instance v0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    .line 157
    .local v0, "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    .line 158
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, v3}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void

    .line 152
    .end local v0    # "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    .end local v1    # "countryMode":Z
    .end local v2    # "sortingLocale":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .restart local v1    # "countryMode":Z
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .restart local v2    # "sortingLocale":Ljava/util/Locale;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v1, :cond_1

    .line 232
    const/high16 v1, 0x1150000

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 234
    const v1, 0x1020463

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 235
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 237
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10405f2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 243
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 245
    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iget v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 230
    .end local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_1
    return-void

    .line 250
    .restart local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 210
    .local v0, "locale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {v2, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 206
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 216
    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    .line 218
    .local v1, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 220
    const/16 v3, 0x1001

    .line 219
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v3

    .line 219
    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 164
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 167
    const/4 v1, 0x1

    return v1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 190
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 192
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 199
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 200
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 202
    if-nez v0, :cond_1

    :goto_1
    iput v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 186
    return-void

    .line 194
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 195
    iput-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_0

    .line 202
    .restart local v0    # "firstChild":Landroid/view/View;
    .restart local v1    # "list":Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 173
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10405f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$1;,
        Landroid/preference/PreferenceFragment$2;,
        Landroid/preference/PreferenceFragment$3;,
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 119
    const v0, 0x10900b5

    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 127
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 448
    new-instance v0, Landroid/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 109
    return-void
.end method

.method private bindPreferences()V
    .locals 5

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 370
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 373
    const v4, 0x1020016

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, "titleView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 376
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .end local v2    # "title":Ljava/lang/CharSequence;
    .end local v3    # "titleView":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 387
    .end local v1    # "root":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    .line 368
    return-void

    .restart local v1    # "root":Landroid/view/View;
    .restart local v2    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "titleView":Landroid/view/View;
    :cond_2
    move-object v4, v3

    .line 379
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 425
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 430
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 434
    new-instance v2, Ljava/lang/RuntimeException;

    .line 435
    const-string/jumbo v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    .line 434
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 439
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 440
    new-instance v2, Ljava/lang/RuntimeException;

    .line 441
    const-string/jumbo v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    .line 440
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 445
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 314
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 311
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 326
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 323
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 352
    return-object v1

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    .line 401
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 407
    return v4

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 411
    return v3

    .line 413
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 415
    return v3

    .line 417
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 418
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 419
    return v3

    .line 421
    :cond_3
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 207
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 208
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 211
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    .line 213
    if-eqz p1, :cond_1

    .line 214
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 217
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 204
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 267
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 164
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    .line 171
    const/4 v3, 0x0

    .line 173
    const v4, 0x1010506

    .line 171
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 176
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 251
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 249
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 242
    :cond_0
    iput-object v1, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 243
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 238
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 335
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 335
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 259
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 227
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 225
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 233
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 234
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 231
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 186
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 189
    sget-object v3, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    .line 190
    const v4, 0x1010506

    .line 191
    const/4 v5, 0x0

    .line 188
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, 0x102000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 194
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    .line 194
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 287
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    .line 290
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    .line 286
    :cond_0
    return-void
.end method

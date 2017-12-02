.class final Lcom/android/internal/view/menu/StandardMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/StandardMenuPopup$1;,
        Lcom/android/internal/view/menu/StandardMenuPopup$2;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPopup:Landroid/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field private mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 59
    new-instance v2, Lcom/android/internal/view/menu/StandardMenuPopup$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$1;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 78
    new-instance v2, Lcom/android/internal/view/menu/StandardMenuPopup$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$2;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    .line 77
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 115
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 117
    iput-boolean p6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v2, p2, v0, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    .line 120
    iput p4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 121
    iput p5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    .line 125
    const v3, 0x1050010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 127
    iput-object p3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 129
    new-instance v2, Landroid/widget/MenuPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    .line 132
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private tryShow()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    return v10

    .line 150
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 151
    :cond_1
    return v9

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 156
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 157
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 162
    .local v1, "anchor":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_7

    const/4 v0, 0x1

    .line 163
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 164
    if-eqz v0, :cond_3

    .line 165
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    :cond_3
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 168
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 169
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 171
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v5, :cond_4

    .line 172
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v5, v8, v6, v7}, Lcom/android/internal/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 173
    iput-boolean v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 176
    :cond_4
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 177
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 178
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    .line 181
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 182
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 186
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 187
    const v6, 0x109009f

    .line 186
    invoke-virtual {v5, v6, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 191
    .local v3, "titleItemView":Landroid/widget/FrameLayout;
    const v5, 0x1020016

    .line 190
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 193
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_5
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 196
    invoke-virtual {v2, v3, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 199
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    .line 201
    .end local v3    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_6
    return v10

    .line 162
    .end local v0    # "addGlobalListener":Z
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "addGlobalListener":Z
    goto/16 :goto_0
.end method


# virtual methods
.method public addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 219
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 212
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 293
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 288
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 236
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 229
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 319
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 321
    return v1

    .line 323
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 309
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 11
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 263
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, p1

    .line 262
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 264
    .local v0, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 265
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 269
    iput-object v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 272
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v9}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v7

    .line 276
    .local v7, "horizontalOffset":I
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v8

    .line 277
    .local v8, "verticalOffset":I
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 281
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 284
    .end local v0    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    .end local v7    # "horizontalOffset":I
    .end local v8    # "verticalOffset":I
    :cond_1
    return v9
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 313
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 255
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 136
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 141
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 338
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 327
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 348
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 343
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 249
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_0
    return-void
.end method

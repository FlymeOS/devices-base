.class public Lcom/android/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 77
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 66
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    const v1, 0x1090059

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 92
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 81
    :cond_1
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z

    .line 166
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 220
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 219
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-nez v1, :cond_0

    .line 210
    return-object v2

    .line 213
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 215
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 144
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    const-string/jumbo v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 193
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 191
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 185
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 188
    :cond_0
    const-string/jumbo v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 183
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 131
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    .line 198
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void
.end method

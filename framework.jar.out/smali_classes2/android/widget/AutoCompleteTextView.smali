.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;,
        Landroid/widget/AutoCompleteTextView$OnDismissListener;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$Validator;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private final mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private final mPopupContext:Landroid/content/Context;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static synthetic -get0(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AutoCompleteTextView;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 191
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 218
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 121
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 124
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 131
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 221
    sget-object v13, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    .line 220
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 223
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz p5, :cond_2

    .line 224
    new-instance v13, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v13, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    .line 237
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    .line 239
    sget-object v14, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    .line 238
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 245
    .local v6, "pa":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v13, 0x3

    .line 244
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 247
    .local v10, "popupListSelector":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x5

    const/4 v14, -0x2

    .line 246
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 249
    .local v12, "popupWidth":I
    const/4 v13, 0x7

    const/4 v14, -0x2

    .line 248
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    .line 251
    .local v7, "popupHeight":I
    const/4 v13, 0x1

    const v14, 0x10900e2

    .line 250
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 253
    .local v8, "popupHintLayoutResId":I
    const/4 v13, 0x0

    .line 252
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 255
    .local v9, "popupHintText":Ljava/lang/CharSequence;
    if-eq v6, v4, :cond_0

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    :cond_0
    new-instance v13, Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v13, v14, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v13, v10}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v14, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;)V

    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v13, v12}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v13, v7}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 272
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v13, 0x6

    const/4 v14, -0x1

    .line 280
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 283
    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 285
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v5

    .line 290
    .local v5, "inputType":I
    and-int/lit8 v13, v5, 0xf

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 291
    const/high16 v13, 0x10000

    or-int/2addr v5, v13

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 295
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 297
    new-instance v13, Landroid/widget/AutoCompleteTextView$MyWatcher;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$MyWatcher;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    new-instance v13, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PassThroughClickListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void

    .line 227
    .end local v5    # "inputType":I
    .end local v6    # "pa":Landroid/content/res/TypedArray;
    .end local v7    # "popupHeight":I
    .end local v8    # "popupHintLayoutResId":I
    .end local v9    # "popupHintText":Ljava/lang/CharSequence;
    .end local v10    # "popupListSelector":Landroid/graphics/drawable/Drawable;
    .end local v12    # "popupWidth":I
    :cond_2
    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 226
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 228
    .local v11, "popupThemeResId":I
    if-eqz v11, :cond_3

    .line 229
    new-instance v13, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 231
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 241
    .end local v11    # "popupThemeResId":I
    :cond_4
    move-object v6, v4

    .restart local v6    # "pa":Landroid/content/res/TypedArray;
    goto/16 :goto_1
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1231
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1232
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1233
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1234
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 1235
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1236
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1237
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1239
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1240
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1241
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1242
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1243
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    .line 1244
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1243
    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v8

    .line 1245
    add-int/lit8 v8, v8, 0x1

    .line 1239
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    if-eq v8, v2, :cond_2

    .line 1250
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1251
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    move-object v1, v9

    .line 1255
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1230
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 993
    if-gez p2, :cond_0

    .line 994
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 998
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_1

    .line 999
    const-string/jumbo v0, "AutoCompleteTextView"

    const-string/jumbo v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 996
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 1003
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1004
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 1005
    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1007
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v6, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1010
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 1011
    :cond_2
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 1012
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 1013
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 1015
    :cond_3
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1019
    .end local v6    # "list":Landroid/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_4
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 990
    :cond_5
    :goto_1
    return-void

    .line 1020
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    return-void

    .line 1080
    :cond_0
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 1081
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 1082
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v1, :cond_3

    .line 1083
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_2

    .line 1084
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1069
    :cond_2
    :goto_0
    return-void

    .line 1086
    :cond_3
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1087
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1091
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 932
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 925
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1148
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1149
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1152
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1153
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1147
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    .line 884
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 893
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 876
    :cond_2
    :goto_0
    return-void

    .line 885
    :cond_3
    return-void

    .line 898
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 899
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 901
    :cond_5
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    .line 872
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    .line 867
    return-void
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1183
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    .line 1184
    const/4 v0, 0x1

    .line 1183
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1185
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1182
    :cond_1
    return-void

    .line 1184
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

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

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1135
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1134
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 984
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1141
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1139
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 1105
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1106
    packed-switch p1, :pswitch_data_0

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1108
    :pswitch_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1065
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1117
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1119
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    return-void

    .line 1125
    :cond_0
    if-nez p1, :cond_1

    .line 1126
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1128
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1116
    :cond_2
    :goto_0
    return-void

    .line 1129
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 811
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    return v2

    .line 815
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    packed-switch p1, :pswitch_data_0

    .line 824
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    return v2

    .line 818
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_0

    .line 828
    :cond_2
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 829
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 830
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 832
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 833
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 836
    :cond_3
    return v0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 759
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 763
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 764
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 765
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 768
    :cond_2
    return v2

    .line 769
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 770
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 771
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 772
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 774
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 776
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 785
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 786
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 787
    sparse-switch p1, :sswitch_data_0

    .line 801
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 803
    return v2

    .line 794
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 797
    :cond_1
    return v2

    .line 806
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 787
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1097
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1098
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 980
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 979
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 971
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 970
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1291
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_0

    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1295
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    :cond_1
    :goto_0
    return-void

    .line 1296
    :cond_2
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1058
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1061
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1055
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 741
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 745
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 746
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 749
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 754
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 739
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 751
    :cond_2
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 331
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 335
    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 335
    const v2, 0x1020014

    .line 334
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 330
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 344
    iput-object v3, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 568
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 567
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 436
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 437
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 435
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 529
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 588
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 411
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 503
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 502
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 481
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 480
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 383
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 1227
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1226
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1160
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1164
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 942
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 941
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->-set0(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 304
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    .line 702
    new-instance v0, Landroid/widget/AutoCompleteTextView$1;

    .end local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 708
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 699
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 635
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 634
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 645
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 644
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 1039
    if-eqz p2, :cond_0

    .line 1040
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    :goto_0
    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1043
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 621
    if-gtz p1, :cond_0

    .line 622
    const/4 p1, 0x1

    .line 625
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 620
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1269
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1268
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 1201
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 1203
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1204
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1205
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1210
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1212
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1213
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1215
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1216
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1200
    return-void

    .line 1207
    :cond_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1172
    return-void
.end method

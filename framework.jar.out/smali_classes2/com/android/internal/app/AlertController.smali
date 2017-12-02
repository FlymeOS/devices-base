.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$1;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$RecycleListView;
    }
.end annotation


# static fields
.field public static final MICRO:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field protected mListView:Landroid/widget/ListView;

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field protected mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/AlertController;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 98
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 121
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 125
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 198
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 199
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 202
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 201
    const/4 v2, 0x0

    .line 202
    const v3, 0x101005d

    .line 201
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090026

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 207
    const/16 v1, 0xb

    .line 206
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 209
    const/16 v1, 0xc

    const v2, 0x10900d8

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 212
    const/16 v1, 0xd

    .line 213
    const v2, 0x1090013

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 215
    const/16 v1, 0xe

    .line 216
    const v2, 0x1090012

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 218
    const/16 v1, 0xf

    .line 219
    const v2, 0x1090011

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 220
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-virtual {p3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 195
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    return v4

    .line 233
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 234
    return v3

    :cond_1
    move-object v1, p0

    .line 237
    check-cast v1, Landroid/view/ViewGroup;

    .line 238
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 239
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 240
    add-int/lit8 v0, v0, -0x1

    .line 241
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    return v4

    .line 247
    :cond_3
    return v3
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 760
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 761
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 762
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 763
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020328

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 765
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 768
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020329

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 769
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 770
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :cond_1
    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    const/4 v5, 0x0

    .line 183
    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    .line 182
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 185
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    packed-switch v1, :pswitch_data_0

    .line 191
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 189
    :pswitch_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 691
    if-eqz p1, :cond_0

    .line 692
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_0
    if-eqz p2, :cond_1

    .line 695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 692
    goto :goto_0

    :cond_3
    move v1, v2

    .line 695
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 461
    if-nez p1, :cond_1

    .line 463
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 464
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 467
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    .line 471
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 472
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 473
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 474
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 480
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 483
    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "customPanel":Landroid/view/View;
    return-object p1
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 260
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 261
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 264
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 776
    const/4 v10, 0x0

    .line 777
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 778
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 779
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 780
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 781
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 782
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 783
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 784
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 789
    .local v5, "bottomMedium":I
    const/16 v22, 0x13

    const/16 v23, 0x1

    .line 788
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 790
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 791
    const v10, 0x10805df

    .line 792
    const v19, 0x10805ed

    .line 793
    const v7, 0x10805dc

    .line 794
    const v4, 0x10805d9

    .line 795
    const v9, 0x10805de

    .line 796
    const v18, 0x10805ec

    .line 797
    const v6, 0x10805db

    .line 798
    const v3, 0x10805d8

    .line 799
    const v5, 0x10805da

    .line 802
    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 803
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 804
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 805
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 815
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 816
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 817
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 818
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 820
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 821
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 822
    aput-object p2, v21, v16

    .line 823
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 824
    const/16 v16, 0x1

    .line 832
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 834
    add-int/lit8 v16, v16, 0x1

    .line 836
    if-eqz p7, :cond_3

    .line 837
    aput-object p4, v21, v16

    .line 838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 839
    add-int/lit8 v16, v16, 0x1

    .line 842
    :cond_3
    if-eqz p8, :cond_4

    .line 843
    aput-object p5, v21, v16

    .line 844
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 847
    :cond_4
    const/16 v17, 0x0

    .line 848
    .local v17, "setView":Z
    const/16 v16, 0x0

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 849
    aget-object v20, v21, v16

    .line 850
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 848
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 833
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    .restart local v11    # "lastLight":Z
    .restart local v12    # "lastView":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 854
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 855
    if-nez v17, :cond_9

    .line 856
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 860
    :goto_4
    const/16 v17, 0x1

    .line 863
    :cond_7
    move-object/from16 v12, v20

    .line 864
    .local v12, "lastView":Landroid/view/View;
    aget-boolean v11, v13, v16

    .local v11, "lastLight":Z
    goto :goto_2

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :cond_8
    move/from16 v22, v19

    .line 856
    goto :goto_3

    .line 858
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 867
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 868
    if-eqz v17, :cond_10

    .line 869
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 870
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 871
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 876
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    .line 875
    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 885
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 886
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 888
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 889
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 890
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 892
    const/16 v22, 0x15

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 891
    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 775
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 876
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 878
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 879
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 881
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 584
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 585
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 593
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 594
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 599
    :goto_1
    if-eqz v2, :cond_6

    .line 600
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 601
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_1

    .line 605
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 604
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 609
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 582
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_2
    return-void

    .line 586
    .end local v2    # "hasCustomView":Z
    :cond_3
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_4

    .line 587
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 588
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 590
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const/4 v1, 0x0

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 595
    .end local v1    # "customView":Landroid/view/View;
    .restart local v2    # "hasCustomView":Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 612
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupView()V
    .locals 28

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v24, 0x1020322

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 488
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x1020323

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 489
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x102032a

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 490
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x1020327

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 494
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x102032c

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 495
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 497
    const v4, 0x1020323

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 498
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x102032a

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 499
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x1020327

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 502
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 503
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 504
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 506
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 510
    if-eqz v8, :cond_a

    .line 511
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_9

    const/4 v11, 0x1

    .line 512
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_c

    .line 513
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_b

    const/4 v10, 0x1

    .line 514
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_e

    .line 515
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_d

    const/4 v12, 0x1

    .line 518
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    .line 519
    if-eqz v7, :cond_0

    .line 520
    const v4, 0x1020331

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 521
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    .line 522
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 525
    .end local v23    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 528
    :cond_1
    if-eqz v10, :cond_10

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 535
    :cond_2
    const/16 v20, 0x0

    .line 536
    .local v20, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_f

    .line 537
    :cond_3
    if-nez v11, :cond_4

    .line 538
    const v4, 0x1020334

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 540
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v20, :cond_5

    .line 541
    const v4, 0x1020326

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 548
    :cond_5
    :goto_3
    if-eqz v20, :cond_6

    .line 549
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 560
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v4, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v4, :cond_7

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v4, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v4, v10, v12}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 565
    :cond_7
    if-nez v11, :cond_8

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 567
    .local v13, "content":Landroid/view/View;
    :goto_5
    if-eqz v13, :cond_8

    .line 568
    if-eqz v10, :cond_12

    const/4 v4, 0x1

    move/from16 v24, v4

    .line 569
    :goto_6
    if-eqz v12, :cond_13

    const/4 v4, 0x2

    .line 568
    :goto_7
    or-int v21, v24, v4

    .line 571
    .local v21, "indicators":I
    const/4 v4, 0x3

    .line 570
    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 575
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 576
    sget-object v24, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/16 v25, 0x0

    const v26, 0x101005d

    const/16 v27, 0x0

    .line 575
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    .line 577
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 579
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    return-void

    .line 511
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 510
    .end local v11    # "hasCustomPanel":Z
    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 513
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 512
    .end local v10    # "hasTopPanel":Z
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 515
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 514
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 536
    .restart local v12    # "hasButtonPanel":Z
    .restart local v20    # "divider":Landroid/view/View;
    :cond_f
    if-nez v11, :cond_3

    .line 545
    const v4, 0x102032e

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .local v20, "divider":Landroid/view/View;
    goto :goto_3

    .line 552
    .end local v20    # "divider":Landroid/view/View;
    :cond_10
    if-eqz v7, :cond_6

    .line 553
    const v4, 0x1020330

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 554
    .restart local v23    # "spacer":Landroid/view/View;
    if-eqz v23, :cond_6

    .line 555
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 566
    .end local v23    # "spacer":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_5

    .line 568
    .restart local v13    # "content":Landroid/view/View;
    :cond_12
    const/4 v4, 0x0

    move/from16 v24, v4

    goto :goto_6

    .line 569
    :cond_13
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1160016

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 178
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 432
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 434
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    .line 428
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 414
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 415
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 416
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 252
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 250
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 346
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 350
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 340
    :goto_0
    return-void

    .line 354
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 355
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 359
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 360
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 323
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 277
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 375
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 376
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 378
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 379
    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 394
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 395
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 397
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 419
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 269
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 293
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 291
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 301
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 302
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 303
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 300
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 314
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 315
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 316
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 317
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 310
    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "whichButtons":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 705
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 715
    :goto_0
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 716
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 719
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 727
    :goto_1
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 728
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 731
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    if-ne v1, v0, :cond_5

    .line 745
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 753
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    .line 754
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    .line 755
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 699
    :cond_1
    return-void

    .line 710
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 712
    const/4 v1, 0x1

    goto :goto_0

    .line 721
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 724
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 733
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 701
    :cond_5
    const/4 v2, 0x2

    .line 746
    if-ne v1, v2, :cond_6

    .line 747
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 702
    :cond_6
    const/4 v2, 0x4

    .line 748
    if-ne v1, v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 753
    goto :goto_4
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 663
    const v2, 0x102032b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 664
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 667
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 668
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 669
    return-void

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 678
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 679
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 680
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 681
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 682
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 683
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 682
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 685
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x1020324

    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 617
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_0

    .line 619
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 620
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 619
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 622
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 626
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 630
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_4

    .line 633
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020325

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 634
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 640
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 630
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 641
    .restart local v0    # "hasTextTitle":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 642
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 646
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    .line 647
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    .line 648
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    .line 649
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 646
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 650
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 654
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 655
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

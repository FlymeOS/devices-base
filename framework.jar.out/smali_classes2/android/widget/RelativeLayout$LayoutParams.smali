.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method static synthetic -get0(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1348
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1231
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1232
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1242
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1243
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1253
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1231
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1232
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1242
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1243
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1256
    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    .line 1255
    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1258
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1259
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 1260
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    .line 1259
    :goto_0
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1262
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1264
    .local v5, "rules":[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1266
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1267
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_b

    .line 1268
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1269
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 1267
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1259
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "rules":[I
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 1260
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 1271
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v5    # "rules":[I
    :pswitch_0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_2

    .line 1274
    :pswitch_1
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v5, v8

    goto :goto_2

    .line 1277
    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v5, v8

    goto :goto_2

    .line 1280
    :pswitch_3
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x2

    aput v7, v5, v8

    goto :goto_2

    .line 1283
    :pswitch_4
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x3

    aput v7, v5, v8

    goto :goto_2

    .line 1286
    :pswitch_5
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x4

    aput v7, v5, v8

    goto :goto_2

    .line 1289
    :pswitch_6
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x5

    aput v7, v5, v8

    goto :goto_2

    .line 1292
    :pswitch_7
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x6

    aput v7, v5, v8

    goto :goto_2

    .line 1295
    :pswitch_8
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x7

    aput v7, v5, v8

    goto :goto_2

    .line 1298
    :pswitch_9
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x8

    aput v7, v5, v8

    goto :goto_2

    .line 1301
    :pswitch_a
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    :goto_3
    const/16 v8, 0x9

    aput v7, v5, v8

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 1304
    :pswitch_b
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    :goto_4
    const/16 v8, 0xa

    aput v7, v5, v8

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .line 1307
    :pswitch_c
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    :goto_5
    const/16 v8, 0xb

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 1310
    :pswitch_d
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    :goto_6
    const/16 v8, 0xc

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 1313
    :pswitch_e
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, -0x1

    :goto_7
    const/16 v8, 0xd

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 1316
    :pswitch_f
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    :goto_8
    const/16 v8, 0xe

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 1319
    :pswitch_10
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    :goto_9
    const/16 v8, 0xf

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 1322
    :pswitch_11
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x10

    aput v7, v5, v8

    goto/16 :goto_2

    .line 1325
    :pswitch_12
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x11

    aput v7, v5, v8

    goto/16 :goto_2

    .line 1328
    :pswitch_13
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x12

    aput v7, v5, v8

    goto/16 :goto_2

    .line 1331
    :pswitch_14
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x13

    aput v7, v5, v8

    goto/16 :goto_2

    .line 1334
    :pswitch_15
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    :goto_a
    const/16 v8, 0x14

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto :goto_a

    .line 1337
    :pswitch_16
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    :goto_b
    const/16 v8, 0x15

    aput v7, v5, v8

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .line 1341
    .end local v2    # "attr":I
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1342
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x16

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1344
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1252
    return-void

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1355
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1232
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1242
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1243
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1354
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1362
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1231
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1232
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1242
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1243
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1361
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 1372
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1231
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1232
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1242
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1243
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1374
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1375
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1376
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1378
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1380
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1379
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1371
    return-void
.end method

.method private hasRelativeRules()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1482
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x10

    aget v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1483
    :cond_1
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 1484
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isRelativeRule(I)Z
    .locals 2
    .param p1, "rule"    # I

    .prologue
    const/4 v0, 0x1

    .line 1488
    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1489
    :cond_1
    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    .line 1490
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveRules(I)V
    .locals 9
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1507
    if-ne p1, v2, :cond_c

    const/4 v0, 0x1

    .line 1510
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x16

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1513
    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v1, :cond_d

    .line 1514
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v1, v1, v4

    if-nez v1, :cond_0

    .line 1518
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v6

    const/4 v5, 0x5

    aput v4, v1, v5

    .line 1520
    :cond_0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v6

    .line 1523
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_3

    .line 1524
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    if-nez v1, :cond_2

    .line 1527
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aget v4, v4, v5

    const/4 v5, 0x7

    aput v4, v1, v5

    .line 1529
    :cond_2
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v3, v1, v4

    .line 1532
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-eqz v1, :cond_5

    .line 1533
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v3

    if-nez v1, :cond_4

    .line 1536
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    aput v4, v1, v3

    .line 1538
    :cond_4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v7

    .line 1541
    :cond_5
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_7

    .line 1542
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v2

    if-nez v1, :cond_6

    .line 1545
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v1, v2

    .line 1547
    :cond_6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v8

    .line 1550
    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-eqz v1, :cond_9

    .line 1551
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-nez v1, :cond_8

    .line 1554
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x14

    aget v2, v2, v4

    const/16 v4, 0x9

    aput v2, v1, v4

    .line 1556
    :cond_8
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aput v3, v1, v2

    .line 1559
    :cond_9
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_b

    .line 1560
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    if-nez v1, :cond_a

    .line 1563
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x15

    aget v2, v2, v4

    const/16 v4, 0xb

    aput v2, v1, v4

    .line 1565
    :cond_a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aput v3, v1, v2

    .line 1621
    :cond_b
    :goto_1
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1622
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1506
    return-void

    .line 1507
    .end local v0    # "isLayoutRtl":Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "isLayoutRtl":Z
    goto/16 :goto_0

    .line 1569
    :cond_d
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_10

    .line 1570
    :cond_e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v1, v1, v4

    if-nez v1, :cond_f

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    if-eqz v1, :cond_10

    .line 1572
    :cond_f
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aput v3, v1, v4

    .line 1573
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aput v3, v1, v4

    .line 1575
    :cond_10
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-eqz v1, :cond_11

    .line 1577
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d

    const/4 v1, 0x7

    :goto_2
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v4, v1

    .line 1578
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v6

    .line 1580
    :cond_11
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v1, v1, v4

    if-eqz v1, :cond_12

    .line 1582
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1e

    const/4 v1, 0x5

    :goto_3
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v1

    .line 1583
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v3, v1, v4

    .line 1586
    :cond_12
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_15

    .line 1587
    :cond_13
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v3

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v2

    if-eqz v1, :cond_15

    .line 1589
    :cond_14
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v3

    .line 1590
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v2

    .line 1592
    :cond_15
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-eqz v1, :cond_16

    .line 1594
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_4
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v7

    aput v5, v4, v1

    .line 1595
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v7

    .line 1597
    :cond_16
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v8

    if-eqz v1, :cond_18

    .line 1599
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_17

    move v2, v3

    :cond_17
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v1, v2

    .line 1600
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v3, v1, v8

    .line 1603
    :cond_18
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_1b

    .line 1604
    :cond_19
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    if-eqz v1, :cond_1b

    .line 1606
    :cond_1a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x9

    aput v3, v1, v2

    .line 1607
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0xb

    aput v3, v1, v2

    .line 1609
    :cond_1b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    if-eqz v1, :cond_1c

    .line 1611
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_20

    const/16 v1, 0xb

    :goto_5
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v2, v1

    .line 1612
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x14

    aput v3, v1, v2

    .line 1614
    :cond_1c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    if-eqz v1, :cond_b

    .line 1616
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_21

    const/16 v1, 0x9

    :goto_6
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v2, v1

    .line 1617
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v2, 0x15

    aput v3, v1, v2

    goto/16 :goto_1

    .line 1577
    :cond_1d
    const/4 v1, 0x5

    goto/16 :goto_2

    .line 1582
    :cond_1e
    const/4 v1, 0x7

    goto/16 :goto_3

    :cond_1f
    move v1, v3

    .line 1594
    goto/16 :goto_4

    .line 1611
    :cond_20
    const/16 v1, 0x9

    goto :goto_5

    .line 1616
    :cond_21
    const/16 v1, 0xb

    goto :goto_6
.end method

.method private shouldResolveLayoutDirection(I)Z
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1676
    iget-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1677
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v2

    if-eq p1, v2, :cond_2

    :cond_1
    move v0, v1

    .line 1676
    :cond_2
    return v0
.end method


# virtual methods
.method public addRule(I)V
    .locals 1
    .param p1, "verb"    # I

    .prologue
    .line 1409
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1408
    return-void
.end method

.method public addRule(II)V
    .locals 2
    .param p1, "verb"    # I
    .param p2, "subject"    # I

    .prologue
    const/4 v1, 0x1

    .line 1435
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1437
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1440
    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1441
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1442
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1432
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1386
    const-string/jumbo v1, ", height="

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1386
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1386
    const-string/jumbo v1, " }"

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1683
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1684
    const-string/jumbo v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1682
    return-void
.end method

.method public getRule(I)I
    .locals 1
    .param p1, "verb"    # I

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1640
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1641
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 1
    .param p1, "verb"    # I

    .prologue
    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1461
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1667
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1672
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1666
    return-void
.end method

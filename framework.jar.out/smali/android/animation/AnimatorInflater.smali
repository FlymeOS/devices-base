.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    const/4 v14, 0x0

    .line 646
    .local v14, "anim":Landroid/animation/Animator;
    const/16 v16, 0x0

    .line 650
    .local v16, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 652
    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v16    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v17, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_9

    .line 653
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_9

    .line 655
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_0

    .line 659
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 660
    .local v21, "name":Ljava/lang/String;
    const/16 v18, 0x0

    .line 662
    .local v18, "gotValues":Z
    const-string/jumbo v4, "objectAnimator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 690
    :goto_1
    if-eqz p4, :cond_0

    if-nez v18, :cond_0

    .line 691
    if-nez v16, :cond_2

    .line 692
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 694
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    :cond_3
    const-string/jumbo v4, "animator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .local v14, "anim":Landroid/animation/Animator;
    goto :goto_1

    .line 666
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_4
    const-string/jumbo v4, "set"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 667
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 669
    .restart local v14    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    .line 670
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 674
    .local v12, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 675
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "ordering":I
    move-object v8, v14

    .line 676
    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 678
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 672
    .end local v9    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .restart local v12    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .line 679
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_6
    const-string/jumbo v4, "propertyValuesHolder"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 681
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    .line 682
    .local v23, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v23, :cond_7

    if-eqz v14, :cond_7

    instance-of v4, v14, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    move-object v4, v14

    .line 683
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 685
    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 687
    .end local v23    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    .end local v18    # "gotValues":Z
    .end local v21    # "name":Ljava/lang/String;
    :cond_9
    if-eqz p4, :cond_b

    if-eqz v16, :cond_b

    .line 698
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v15, v4, [Landroid/animation/Animator;

    .line 699
    .local v15, "animsArray":[Landroid/animation/Animator;
    const/16 v19, 0x0

    .line 700
    .local v19, "index":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "a$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 701
    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "index":I
    .local v20, "index":I
    aput-object v11, v15, v19

    move/from16 v19, v20

    .end local v20    # "index":I
    .restart local v19    # "index":I
    goto :goto_3

    .line 703
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_a
    if-nez p5, :cond_c

    .line 704
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 709
    .end local v13    # "a$iterator":Ljava/util/Iterator;
    .end local v15    # "animsArray":[Landroid/animation/Animator;
    .end local v19    # "index":I
    :cond_b
    :goto_4
    return-object v14

    .line 706
    .restart local v13    # "a$iterator":Ljava/util/Iterator;
    .restart local v15    # "animsArray":[Landroid/animation/Animator;
    .restart local v19    # "index":I
    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 916
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 915
    :goto_0
    return-object v0

    .line 917
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 918
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 919
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    .line 212
    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 213
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    return-object v7

    .line 220
    :pswitch_1
    const/4 v1, 0x0

    .line 221
    .local v1, "animator":Landroid/animation/Animator;
    const-string/jumbo v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 223
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    .line 224
    .local v8, "states":[I
    const/4 v5, 0x0

    .line 225
    .local v5, "stateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 226
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 227
    .local v2, "attrName":I
    const v10, 0x10101cd

    if-ne v2, v10, :cond_1

    .line 228
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 229
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    move v5, v6

    .line 225
    .end local v0    # "animId":I
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    .line 231
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 232
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 231
    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    goto :goto_2

    .line 233
    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    goto :goto_3

    .line 236
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    .line 237
    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    .line 241
    :cond_4
    if-nez v1, :cond_5

    .line 242
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    .line 243
    const-string/jumbo v11, "animation state item must have a valid animation"

    .line 242
    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 246
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    .line 245
    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 942
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 943
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 944
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 945
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 812
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 813
    :cond_0
    return-void

    .line 815
    :cond_1
    const-string/jumbo v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    array-length v0, p0

    .line 817
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 818
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 819
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string/jumbo v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 820
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    const-string/jumbo v3, "null"

    .line 819
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 820
    const-string/jumbo v5, ", "

    .line 819
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 821
    const-string/jumbo v5, ", value : "

    .line 819
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 821
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 819
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_2
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    .line 821
    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_2

    .line 811
    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    :cond_4
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 1069
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1070
    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1071
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 23
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 275
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 276
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .line 277
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 278
    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 279
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    .line 280
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 282
    .local v13, "toType":I
    :goto_3
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 284
    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 285
    :cond_1
    const/16 p1, 0x3

    .line 291
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    const/4 v6, 0x1

    .line 293
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    .line 295
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 298
    .local v12, "toString":Ljava/lang/String;
    if-nez v4, :cond_a

    .line 299
    const/4 v9, 0x0

    .line 300
    :goto_6
    if-nez v12, :cond_b

    .line 301
    const/4 v10, 0x0

    .line 303
    :goto_7
    if-nez v9, :cond_3

    if-eqz v10, :cond_d

    .line 304
    :cond_3
    if-eqz v9, :cond_f

    .line 305
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    .line 306
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_e

    .line 307
    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 308
    new-instance v20, Landroid/view/InflateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " Can\'t morph from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 276
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 277
    .restart local v7    # "hasFrom":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "fromType":I
    goto/16 :goto_1

    .line 279
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 280
    .restart local v8    # "hasTo":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "toType":I
    goto/16 :goto_3

    .line 287
    :cond_8
    const/16 p1, 0x0

    goto :goto_4

    .line 291
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "getFloats":Z
    goto :goto_5

    .line 299
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/util/PathParser$PathData;

    invoke-direct {v9, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .local v9, "nodesFrom":Landroid/util/PathParser$PathData;
    goto :goto_6

    .line 301
    .end local v9    # "nodesFrom":Landroid/util/PathParser$PathData;
    :cond_b
    new-instance v10, Landroid/util/PathParser$PathData;

    invoke-direct {v10, v12}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .local v10, "nodesTo":Landroid/util/PathParser$PathData;
    goto :goto_7

    .line 311
    .end local v10    # "nodesTo":Landroid/util/PathParser$PathData;
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_c
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 312
    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    .line 311
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 399
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_d
    :goto_8
    return-object v11

    .line 314
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 315
    const/16 v21, 0x0

    aput-object v9, v20, v21

    .line 314
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_8

    .line 317
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_f
    if-eqz v10, :cond_d

    .line 318
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    .line 319
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 320
    const/16 v21, 0x0

    aput-object v10, v20, v21

    .line 319
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_8

    .line 324
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v12    # "toString":Ljava/lang/String;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_10
    const/4 v3, 0x0

    .line 326
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 328
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v3

    .line 330
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_11
    if-eqz v6, :cond_18

    .line 333
    if-eqz v7, :cond_16

    .line 334
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_13

    .line 335
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 339
    .local v16, "valueFrom":F
    :goto_9
    if-eqz v8, :cond_15

    .line 340
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_14

    .line 341
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 345
    .local v18, "valueTo":F
    :goto_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 346
    const/16 v21, 0x0

    aput v16, v20, v21

    const/16 v21, 0x1

    aput v18, v20, v21

    .line 345
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 394
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "valueFrom":F
    .end local v18    # "valueTo":F
    :cond_12
    :goto_b
    if-eqz v11, :cond_d

    if-eqz v3, :cond_d

    .line 395
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_8

    .line 337
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_13
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_9

    .line 343
    :cond_14
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto :goto_a

    .line 348
    .end local v18    # "valueTo":F
    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_b

    .line 351
    .end local v16    # "valueFrom":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_16
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_17

    .line 352
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 356
    .restart local v18    # "valueTo":F
    :goto_c
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v18, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_b

    .line 354
    .end local v18    # "valueTo":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_17
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto :goto_c

    .line 361
    .end local v18    # "valueTo":F
    :cond_18
    if-eqz v7, :cond_1e

    .line 362
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_19

    .line 363
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 369
    .local v17, "valueFrom":I
    :goto_d
    if-eqz v8, :cond_1d

    .line 370
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_1b

    .line 371
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 377
    .local v19, "valueTo":I
    :goto_e
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    const/16 v21, 0x1

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    .line 364
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_19
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 365
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_d

    .line 367
    .end local v17    # "valueFrom":I
    :cond_1a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_d

    .line 372
    :cond_1b
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 373
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_e

    .line 375
    .end local v19    # "valueTo":I
    :cond_1c
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_e

    .line 379
    .end local v19    # "valueTo":I
    :cond_1d
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    .line 382
    .end local v17    # "valueFrom":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1e
    if-eqz v8, :cond_12

    .line 383
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_1f

    .line 384
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 390
    .restart local v19    # "valueTo":I
    :goto_f
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    .line 385
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1f
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 386
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_f

    .line 388
    .end local v19    # "valueTo":I
    :cond_20
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_f
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 794
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 795
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    move v1, v2

    .line 796
    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .line 797
    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 798
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    .line 799
    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .line 803
    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 804
    :cond_1
    const/4 v6, 0x3

    .line 808
    .local v6, "valueType":I
    :goto_4
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    move v1, v7

    .line 795
    goto :goto_0

    .line 796
    .restart local v1    # "hasFrom":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "fromType":I
    goto :goto_1

    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    move v2, v7

    .line 798
    goto :goto_2

    .line 799
    .restart local v2    # "hasTo":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "toType":I
    goto :goto_3

    .line 806
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 773
    if-eqz p1, :cond_1

    .line 774
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v4, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 779
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 780
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 783
    .local v1, "hasValue":Z
    :cond_0
    if-eqz v1, :cond_2

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 784
    const/4 v3, 0x3

    .line 788
    .local v3, "valueType":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 789
    return v3

    .line 776
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "hasValue":Z
    .end local v2    # "keyframeValue":Landroid/util/TypedValue;
    .end local v3    # "valueType":I
    :cond_1
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 786
    .restart local v1    # "hasValue":Z
    .restart local v2    # "keyframeValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_1
.end method

.method private static isColorType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 1076
    const/16 v1, 0x1c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    .line 114
    .local v3, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 115
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    .line 119
    return-object v2

    .line 123
    :cond_0
    const/4 v7, 0x0

    .line 125
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 126
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_1

    .line 128
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 129
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    .line 130
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v4, :cond_1

    .line 134
    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    :cond_2
    return-object v2

    .line 146
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 148
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 150
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 151
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    .line 153
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 152
    :cond_3
    throw v9

    .line 140
    :catch_1
    move-exception v6

    .line 142
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 1027
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    .line 1028
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1034
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz p3, :cond_0

    .line 1035
    if-eqz p1, :cond_6

    .line 1037
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    .line 1036
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1041
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1044
    .end local v1    # "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_0
    if-nez p3, :cond_1

    .line 1045
    new-instance p3, Landroid/animation/ValueAnimator;

    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 1047
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1049
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 1051
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1052
    .local v3, "resID":I
    if-lez v3, :cond_3

    .line 1053
    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 1054
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 1056
    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    .line 1055
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1058
    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1061
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1062
    if-eqz v1, :cond_4

    .line 1063
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1065
    :cond_4
    return-object p3

    .line 1030
    .end local v3    # "resID":I
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 1039
    :cond_6
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    goto :goto_1
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 954
    if-eqz p1, :cond_2

    .line 955
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 960
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v5, 0x0

    .line 962
    .local v5, "keyframe":Landroid/animation/Keyframe;
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 964
    .local v1, "fraction":F
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 965
    .local v6, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 966
    .local v2, "hasValue":Z
    :goto_1
    const/4 v9, 0x4

    if-ne p3, v9, :cond_0

    .line 969
    if-eqz v2, :cond_4

    iget v9, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 970
    const/4 p3, 0x3

    .line 976
    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    .line 977
    packed-switch p3, :pswitch_data_0

    .line 993
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    :goto_3
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 994
    .local v7, "resID":I
    if-lez v7, :cond_1

    .line 995
    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 996
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 998
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1000
    return-object v5

    .line 957
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fraction":F
    .end local v2    # "hasValue":Z
    .end local v6    # "keyframeValue":Landroid/util/TypedValue;
    .end local v7    # "resID":I
    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 965
    .restart local v1    # "fraction":F
    .restart local v5    # "keyframe":Landroid/animation/Keyframe;
    .restart local v6    # "keyframeValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasValue":Z
    goto :goto_1

    .line 972
    :cond_4
    const/4 p3, 0x0

    goto :goto_2

    .line 979
    :pswitch_1
    const/4 v9, 0x0

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 980
    .local v8, "value":F
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .line 984
    .end local v8    # "value":F
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :pswitch_2
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 985
    .local v3, "intValue":I
    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .line 989
    .end local v3    # "intValue":I
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_5
    if-nez p3, :cond_6

    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .line 990
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_6
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1007
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 1009
    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    const/16 v19, 0x0

    .line 831
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    .line 834
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 835
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 836
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 837
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v20, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 838
    const/16 v20, 0x4

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 839
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result p4

    .line 841
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v11

    .line 842
    .local v11, "keyframe":Landroid/animation/Keyframe;
    if-eqz v11, :cond_3

    .line 843
    if-nez v13, :cond_2

    .line 844
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 846
    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 853
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    if-lez v4, :cond_f

    .line 859
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 860
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Keyframe;

    .line 861
    .local v14, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 862
    .local v5, "endFraction":F
    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v5, v20

    if-gez v20, :cond_5

    .line 863
    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_8

    .line 864
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 870
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    .line 871
    .local v16, "startFraction":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_6

    .line 872
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_9

    .line 873
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 879
    :cond_6
    :goto_2
    new-array v12, v4, [Landroid/animation/Keyframe;

    .line 880
    .local v12, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 881
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_e

    .line 882
    aget-object v11, v12, v9

    .line 883
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_7

    .line 884
    if-nez v9, :cond_a

    .line 885
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 881
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 866
    .end local v9    # "i":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-static {v14, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 867
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 875
    .restart local v16    # "startFraction":F
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 876
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 886
    .restart local v9    # "i":I
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    .restart local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_a
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_b

    .line 887
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 891
    :cond_b
    move/from16 v17, v9

    .line 892
    .local v17, "startIndex":I
    move v6, v9

    .line 893
    .local v6, "endIndex":I
    add-int/lit8 v10, v9, 0x1

    .local v10, "j":I
    :goto_5
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    .line 894
    aget-object v20, v12, v10

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_d

    .line 899
    :cond_c
    add-int/lit8 v20, v6, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    .line 900
    add-int/lit8 v21, v17, -0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    .line 899
    sub-float v8, v20, v21

    .line 901
    .local v8, "gap":F
    move/from16 v0, v17

    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_4

    .line 897
    .end local v8    # "gap":F
    :cond_d
    move v6, v10

    .line 893
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 905
    .end local v6    # "endIndex":I
    .end local v10    # "j":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "startIndex":I
    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 906
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 907
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 911
    .end local v4    # "count":I
    .end local v5    # "endFraction":F
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "i":I
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v14    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    :cond_f
    return-object v19
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 160
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    .line 162
    .local v3, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 163
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v8, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    .line 164
    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    .line 165
    return-object v2

    .line 167
    :cond_0
    const/4 v7, 0x0

    .line 169
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 170
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 173
    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    .line 175
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v4, :cond_1

    .line 176
    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v10, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v4, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/animation/StateListAnimator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    .line 200
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 181
    :cond_2
    return-object v2

    .line 190
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 192
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 192
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 196
    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 197
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    .line 199
    if-eqz v7, :cond_3

    .line 200
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 198
    :cond_3
    throw v11

    .line 182
    :catch_1
    move-exception v6

    .line 184
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 185
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 189
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v9, 0x0

    .line 717
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .local v7, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_6

    .line 718
    const/4 v11, 0x1

    if-eq v7, v11, :cond_6

    .line 720
    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    .line 721
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 725
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "propertyValuesHolder"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 729
    if-eqz p1, :cond_5

    .line 730
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 734
    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "propertyName":Ljava/lang/String;
    const/4 v11, 0x2

    .line 736
    const/4 v12, 0x4

    .line 735
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 738
    .local v8, "valueType":I
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 739
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v6, :cond_1

    .line 741
    const/4 v11, 0x0

    .line 742
    const/4 v12, 0x1

    .line 740
    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 744
    :cond_1
    if-eqz v6, :cond_3

    .line 745
    if-nez v9, :cond_2

    .line 746
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 748
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 753
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueType":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 732
    :cond_5
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .restart local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 756
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 757
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v9, :cond_7

    .line 758
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 759
    .local v2, "count":I
    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    .line 760
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 761
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/PropertyValuesHolder;

    aput-object v11, v10, v3

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 764
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v10    # "valuesArray":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    return-object v10
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .prologue
    .line 412
    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v0, v6

    .line 414
    .local v0, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v4, v6

    .line 416
    .local v4, "startDelay":J
    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 418
    .local v3, "valueType":I
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 419
    const/4 v6, 0x5

    .line 420
    const/4 v7, 0x6

    .line 419
    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 423
    :cond_0
    const-string/jumbo v6, ""

    const/4 v7, 0x5

    const/4 v8, 0x6

    .line 422
    invoke-static {p1, v3, v7, v8, v6}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 424
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    .line 425
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 428
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 431
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 433
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 432
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 435
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    const/4 v6, 0x4

    .line 438
    const/4 v7, 0x1

    .line 437
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 436
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 441
    :cond_3
    if-eqz p2, :cond_4

    .line 442
    if-nez v3, :cond_5

    const/4 v6, 0x1

    :goto_0
    invoke-static {p0, p2, v6, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    .line 411
    :cond_4
    return-void

    .line 442
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "toString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 461
    :goto_0
    if-nez v4, :cond_1

    .line 462
    const/4 v3, 0x0

    .line 464
    :goto_1
    if-eqz v2, :cond_5

    .line 465
    if-eqz v3, :cond_2

    .line 466
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 467
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 468
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 469
    const-string/jumbo v7, " Can\'t morph from "

    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 469
    const-string/jumbo v7, " to "

    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_0
    new-instance v2, Landroid/util/PathParser$PathData;

    invoke-direct {v2, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .local v2, "pathDataFrom":Landroid/util/PathParser$PathData;
    goto :goto_0

    .line 462
    .end local v2    # "pathDataFrom":Landroid/util/PathParser$PathData;
    :cond_1
    new-instance v3, Landroid/util/PathParser$PathData;

    invoke-direct {v3, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    .local v3, "pathDataTo":Landroid/util/PathParser$PathData;
    goto :goto_1

    .line 472
    .end local v3    # "pathDataTo":Landroid/util/PathParser$PathData;
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 474
    :cond_3
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    .line 484
    :cond_4
    :goto_2
    return-object v0

    .line 475
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_5
    if-eqz v3, :cond_4

    .line 476
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 477
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_2
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    .prologue
    move-object/from16 v3, p0

    .line 498
    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 499
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 511
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 516
    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 517
    const-string/jumbo v15, " propertyXName or propertyYName is needed for PathData"

    .line 516
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 519
    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .line 520
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    .line 521
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    .line 524
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    .line 525
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    .line 526
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 531
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    .line 532
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    .line 533
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    .line 534
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 536
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v8, :cond_2

    .line 537
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 539
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_2
    if-nez v9, :cond_4

    .line 540
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 497
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    return-void

    .line 528
    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    .line 529
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    .line 541
    :cond_4
    if-nez v11, :cond_5

    .line 542
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 544
    :cond_5
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 549
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .prologue
    .line 568
    const/4 v2, 0x5

    .line 569
    .local v2, "valueFromIndex":I
    const/4 v5, 0x6

    .line 570
    .local v5, "valueToIndex":I
    if-eqz p2, :cond_6

    .line 573
    if-eqz p3, :cond_4

    .line 574
    const/4 v6, 0x5

    if-ne p4, v6, :cond_1

    .line 575
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 579
    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    .line 580
    const/4 v6, 0x5

    if-ne p6, v6, :cond_2

    .line 581
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 585
    .local v3, "valueTo":F
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 567
    .end local v0    # "valueFrom":F
    .end local v3    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    .line 577
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .restart local v0    # "valueFrom":F
    goto :goto_0

    .line 583
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_1

    .line 587
    .end local v3    # "valueTo":F
    :cond_3
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 590
    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v6, 0x5

    if-ne p6, v6, :cond_5

    .line 591
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 595
    .restart local v3    # "valueTo":F
    :goto_3
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 593
    .end local v3    # "valueTo":F
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_3

    .line 600
    .end local v3    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    .line 601
    const/4 v6, 0x5

    if-ne p4, v6, :cond_7

    .line 602
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v1, v6

    .line 608
    .local v1, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    .line 609
    const/4 v6, 0x5

    if-ne p6, v6, :cond_9

    .line 610
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    .line 616
    .local v4, "valueTo":I
    :goto_5
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .line 603
    .end local v1    # "valueFrom":I
    .end local v4    # "valueTo":I
    :cond_7
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 604
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .restart local v1    # "valueFrom":I
    goto :goto_4

    .line 606
    .end local v1    # "valueFrom":I
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .restart local v1    # "valueFrom":I
    goto :goto_4

    .line 611
    :cond_9
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 612
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_5

    .line 614
    .end local v4    # "valueTo":I
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_5

    .line 618
    .end local v4    # "valueTo":I
    :cond_b
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .line 621
    .end local v1    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    .line 622
    const/4 v6, 0x5

    if-ne p6, v6, :cond_d

    .line 623
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    .line 629
    .restart local v4    # "valueTo":I
    :goto_6
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_2

    .line 624
    .end local v4    # "valueTo":I
    :cond_d
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 625
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_6

    .line 627
    .end local v4    # "valueTo":I
    :cond_e
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_6
.end method
